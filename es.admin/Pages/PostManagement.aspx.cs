using System;
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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        protected void BindData()
        {
            int pageSize = GridView1.PageSize;
            int pageIndex = GridView1.PageIndex;

            var posts = db.Content.GetAll()
                .Where(c => c.Title.Contains(Search))
                .OrderByDescending(c => c.PublishedDate)
                .ToList();

            GridView1.DataSource = posts;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;

            BindData();
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            if (GridView1.BottomPagerRow != null)
            {
                // Find the buttons in the PagerTemplate
                LinkButton btnPrev = (LinkButton)GridView1.BottomPagerRow.FindControl("btnPrev");
                LinkButton btnNext = (LinkButton)GridView1.BottomPagerRow.FindControl("btnNext");
                Label lblPageInfo = (Label)GridView1.BottomPagerRow.FindControl("lblPageInfo");

                // Update button states based on the current page
                btnPrev.Enabled = GridView1.PageIndex > 0; // Disable Previous if on the first page
                btnNext.Enabled = GridView1.PageIndex < GridView1.PageCount - 1; // Disable Next if on the last page

                // Update page info
                lblPageInfo.Text = $"Page {GridView1.PageIndex + 1} of {GridView1.PageCount}";
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
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
                Response.Redirect("~/Pages/PostEdit.aspx?contentID=" + contentId);

            }
        }

        protected void Search_Posts(object sender, EventArgs e)
        {
            Search = search.Text.Trim();
            BindData();
        }
    }
}