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
            db.User.Insert(new User{
                FirstName = firstname.Value,
                LastName = lastname.Value, 
                Username = companyname.Value,
                Email = email.Value,
                PasswordHash = password.Value,
                RegistrationDate = DateTime.Now,
                IsClient = true,
                DeviceID = null,
                IsVerified = false,
                Website = website.Value,
                Phone = phone.Value,
                Address = address.Value,
            });
            db.Save();
        }
    }
}