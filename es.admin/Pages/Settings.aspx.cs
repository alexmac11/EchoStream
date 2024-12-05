using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Settings : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Populate_Labels();
            }
        }

        protected void Populate_Labels()
        {
            int userId = int.Parse(HttpContext.Current.User.Identity.Name);
            data.User user = db.User.GetById(userId);

            txtFirstName.Text = user.FirstName;
            txtLastName.Text = user.LastName;
            txtCompanyName.Text = user.CompanyName;
            txtWebsite.Text = user.Website;
            txtEmail.Text = user.Email;
            txtPhone.Text = user.Phone;
            txtAddress.Text = user.Address;
            txtUsername.Text = user.Username;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int userId = int.Parse(HttpContext.Current.User.Identity.Name);
            var user = db.User.GetById(userId);

            user.FirstName = txtFirstName.Text.Trim();
            user.LastName = txtLastName.Text.Trim();
            user.CompanyName = txtCompanyName.Text.Trim();
            user.Website = txtWebsite.Text.Trim();
            user.Email = txtEmail.Text.Trim();
            user.Phone = txtPhone.Text.Trim();
            user.Address = txtAddress.Text.Trim();
            user.Username = txtUsername.Text.Trim();

            db.User.Update(user);
            db.Save();
        }
    }
}