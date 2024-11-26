using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using es.data;

namespace es.admin
{
    public partial class PostManagement : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        private string Search
        {
            get { return ViewState["Search"] as string ?? ""; }
            set { ViewState["Search"] = value; }
        }
        private string Category
        {
            get { return ViewState["Category"] as string ?? ""; }
            set { ViewState["Category"] = value; }
        }
        private string SortBy
        {
            get { return ViewState["SortBy"] as string ?? ""; }
            set { ViewState["SortBy"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCategories();
                BindData();
            }
        }

        private void LoadCategories()
        {
            var categories = db.Category.GetAll().ToList();

            ddlCategories.DataSource = categories;
            ddlCategories.DataTextField = "CategoryName";
            ddlCategories.DataValueField = "CategoryName"; 
            ddlCategories.DataBind();

            // Add default option
            ddlCategories.Items.Insert(0, new ListItem("-Select category-", "none"));
        }

        protected void BindData()
        {
            int pageSize = PostGridView.PageSize;
            int pageIndex = PostGridView.PageIndex;


            // db processing
            var posts = db.Content.GetAll()
                .Where(c => c.Title.ToLower().Contains(Search.ToLower()));

            if (Category != "none" && Category != "")
            {
                posts = posts.Where(c => c.Tags.ToLower().Contains(Category.ToLower()));
            }

            if (SortBy == "date-created" || SortBy == "")
            {
                posts = posts.OrderByDescending(c => c.PublishedDate);
            }
            else if (SortBy == "alphabetically")
            {
                posts = posts.OrderBy(c => c.Title);
            }

            posts = posts.ToList();


            PostGridView.DataSource = posts;
            PostGridView.DataBind();
        }

        protected void PostGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            PostGridView.PageIndex = e.NewPageIndex;

            BindData();
        }

        protected void PostGridView_DataBound(object sender, EventArgs e)
        {
            if (PostGridView.BottomPagerRow != null)
            {
                // Find the buttons in the PagerTemplate
                LinkButton btnPrev = (LinkButton)PostGridView.BottomPagerRow.FindControl("btnPrev");
                LinkButton btnNext = (LinkButton)PostGridView.BottomPagerRow.FindControl("btnNext");
                Label lblPageInfo = (Label)PostGridView.BottomPagerRow.FindControl("lblPageInfo");

                // Update button states based on the current page
                btnPrev.Enabled = PostGridView.PageIndex > 0; // Disable Previous if on the first page
                btnNext.Enabled = PostGridView.PageIndex < PostGridView.PageCount - 1; // Disable Next if on the last page

                // Update page info
                lblPageInfo.Text = $"Page {PostGridView.PageIndex + 1} of {PostGridView.PageCount}";
            }
        }

        protected void PostGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete_Click")
            {
                try
                {
                    int contentId = Convert.ToInt32(e.CommandArgument);
                    db.Content.DeleteById(contentId);
                    db.Save();

                    BindData();
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                }
            }
            else if (e.CommandName == "Edit_Click")
            {
                int contentId = Convert.ToInt32(e.CommandArgument);
                Response.Redirect($"~/Pages/PostEdit.aspx?contentID={contentId}");
            }
        }

        protected void Search_Data(object sender, EventArgs e)
        {
            Search = search.Text.Trim();
            BindData();
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            Category = ddlCategories.SelectedValue;
            SortBy = ddlSortOptions.SelectedValue;
            BindData();
        }
    }
}