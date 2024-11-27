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
    public partial class Register : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            //TODO remove connectionstring from public
            db.User.Insert(new User{
                FirstName = firstname.Value.Trim(),
                LastName = lastname.Value.Trim(), 
                Username = username.Value.Trim(),
                Email = email.Value.Trim(),
                PasswordHash = BCrypt.Net.BCrypt.HashPassword(password.Value),
                RegistrationDate = DateTime.Now,
                IsClient = true,
                DeviceID = "PC",
                IsVerified = false,
                Website = website.Value.Trim(),
                Phone = phone.Value.Trim(),
                Address = address.Value.Trim()
            });
            db.Save();

            Response.Redirect("~/Pages/Login/Login.aspx");
        }
    }
}