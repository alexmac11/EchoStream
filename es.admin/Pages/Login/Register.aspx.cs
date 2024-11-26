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
            //TODO register and login security such as passwordhash and input sanitization eg if (string.IsNullOrWhiteSpace(firstname.Value) || firstname.Value.Length > 50 || !Regex.IsMatch(firstname.Value, @"^[a-zA-Z\s\-]+$"))
            //TODO remove connectionstring from public
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