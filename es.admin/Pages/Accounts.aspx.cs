using System;
using System.Diagnostics;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using es.data;

namespace es.admin
{
    public partial class Accounts : Page
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
            int PageSize = AccountsGridView.PageSize;
            int pageIndex = AccountsGridView.PageIndex;

            var posts = db.User.GetAll()
                .Where(c => c.FirstName.ToLower().Contains(Search.ToLower()) || c.LastName.ToLower().Contains(Search.ToLower()))
                .OrderByDescending(c => c.RegistrationDate)
                .ToList();

            AccountsGridView.DataSource = posts;
            AccountsGridView.DataBind();
        }

        protected void AccountsGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            AccountsGridView.PageIndex = e.NewPageIndex;

            BindData();
        }

        protected void AccountsGridView_DataBound(object sender, EventArgs e)
        {
            if (AccountsGridView.BottomPagerRow != null)
            {
                // Find the buttons in the PagerTemplate
                LinkButton btnPrev = (LinkButton)AccountsGridView.BottomPagerRow.FindControl("btnPrev");
                LinkButton btnNext = (LinkButton)AccountsGridView.BottomPagerRow.FindControl("btnNext");
                Label lblPageInfo = (Label)AccountsGridView.BottomPagerRow.FindControl("lblPageInfo");

                // Update button states based on the current page
                btnPrev.Enabled = AccountsGridView.PageIndex > 0; // Disable Previous if on the first page
                btnNext.Enabled = AccountsGridView.PageIndex < AccountsGridView.PageCount - 1; // Disable Next if on the last page

                // Update page info
                lblPageInfo.Text = $"Page {AccountsGridView.PageIndex + 1} of {AccountsGridView.PageCount}";
            }
        }

        protected void AccountsGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Delete_Click")
            {
                try
                {
                    int userID = Convert.ToInt32(e.CommandArgument);
                    db.User.DeleteById(userID);
                    db.Save();

                    BindData();
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex.Message);
                }
            }
        }

        protected void Search_Data(object sender, EventArgs e)
        {
            Search = search.Text.Trim();
            BindData();
        }
    }
}