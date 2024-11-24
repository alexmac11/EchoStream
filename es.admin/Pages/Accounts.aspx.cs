using es.data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Accounts : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private int pageSize = 10;
        private int CurrentPage
        {
            get
            {
                if (ViewState["CurrentPage"] == null) { ViewState["CurrentPage"] = 0; }
                return (int)ViewState["CurrentPage"];
            }
            set { ViewState["CurrentPage"] = value; }
        }
        private string Search
        {
            get
            {
                if (ViewState["Search"] == null) { ViewState["Search"] = ""; }
                return (string)ViewState["Search"];
            }
            set { ViewState["Search"] = value; }

        }
        private int PageCount
        {
            get
            {
                if (ViewState["PageCount"] == null) { ViewState["PageCount"] = 1; }
                return (int)ViewState["PageCount"];
            }
            set { ViewState["PageCount"] = value; }
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            previousBTN.Enabled = CurrentPage > 0;

            nextBTN.Enabled = (CurrentPage + 1) * pageSize < PageCount;
        }



        public void BindData()
        {
            var users = db.User.GetAll().Where(c => c.FirstName.Contains(Search)).ToList();

            if (true) //todo sort by drop down list
            {
                users = users.OrderByDescending(c => c.RegistrationDate).ToList();
            }

            PageCount = users.Count();
            users = users.Skip(CurrentPage * pageSize).Take(pageSize).ToList();



            userTable.Rows.Clear();

            foreach (var user in users)
            {
                TableRow row = new TableRow();

                row.Cells.Add(new TableCell
                {
                    Text = user.FirstName + " " + user.LastName,
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = user.Email,
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = user.Website,
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = user.Phone,
                    CssClass = "text-nowrap text-body-secondary"
                });

                row.Cells.Add(new TableCell
                {
                    Text = user.Address,
                    CssClass = "text-nowrap text-body-secondary"
                });


                this.userTable.Rows.Add(row);
            }
        }

        public void Search_Users(object sender, EventArgs e)
        {
            CurrentPage = 0;
            Search = this.search.Text;

            BindData();
        }

        protected void Previous(object sender, EventArgs e)
        {
            CurrentPage--;
            BindData();
        }

        protected void Next(object sender, EventArgs e)
        {
            CurrentPage++;
            BindData();
        }
    }
}