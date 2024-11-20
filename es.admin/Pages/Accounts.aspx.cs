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
        protected void Page_Load(object sender, EventArgs e)
        {
            Create_Table(sender, e);
        }
        public void Create_Table(object sender, EventArgs e)
        {
            var request = new Requests();
            var userList = request.getNUsers(10);

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
    }
}