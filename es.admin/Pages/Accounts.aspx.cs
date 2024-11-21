using es.data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Accounts : System.Web.UI.Page
    {
        private int maxRows = 10;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState.Add("page", 0);


                var request = new Requests();
                var userList = request.getNUsers(this.maxRows, (int)ViewState["page"] * this.maxRows);

                Create_Table(sender, e, userList);
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            var page = (int)ViewState["page"];

            if (page == 0)
            {
                this.previousBTN.Enabled = false;
            }
            else
            {
                this.previousBTN.Enabled = true;
            }
        }




        public void Search_Users(object sender, EventArgs e)
        {
            var page = (int)ViewState["page"];


            Clear_Table(sender, e);

            var request = new Requests();
            var userList = request.getSearchUsers(this.search.Text, this.maxRows, page * this.maxRows);

            Create_Table(sender, e, userList);
        }

        public void Create_Table(object sender, EventArgs e, List<data.User> userList)
        {
            foreach (var user in userList)
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = user.FirstName + " " + user.LastName;
                cell1.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = user.Email;
                cell2.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = user.Website;
                cell3.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell3);

                TableCell cell4 = new TableCell();
                cell4.Text = user.Phone;
                cell4.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell4);

                TableCell cell5 = new TableCell();
                cell5.Text = user.Address;
                cell5.Attributes.Add("class", "text-nowrap text-body-secondary");
                row.Cells.Add(cell5);


                this.userTable.Rows.Add(row);
            }
        }

        void Clear_Table(object sender, EventArgs e)
        {
            userTable.Rows.Clear();
        }

        protected void Previous(object sender, EventArgs e)
        {
            // page number
            var page = (int)ViewState["page"];
            page--;
            ViewState["page"] = page;


            // table
            Clear_Table(sender, e);

            var request = new Requests();
            var posts = request.getNUsers(this.maxRows, (int)ViewState["page"] * this.maxRows);

            Create_Table(sender, e, posts);
        }

        protected void Next(object sender, EventArgs e)
        {
            // page number
            var page = (int)ViewState["page"];
            page++;
            ViewState["page"] = page;


            // table
            Clear_Table(sender, e);

            var request = new Requests();
            var posts = request.getNUsers(this.maxRows, (int)ViewState["page"] * this.maxRows);

            Create_Table(sender, e, posts);
        }
    }
}