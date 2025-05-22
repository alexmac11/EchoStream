using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Register : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private static readonly Regex StrongPwd = new Regex(@"^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^A-Za-z\d]).{12,64}$", RegexOptions.Compiled);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            if (!StrongPwd.IsMatch(password.Value))
            {
                ModelState.AddModelError("", "Password does not meet complexity requirements.");
                return;
            }

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
                Address = address.Value.Trim(),
                CompanyName = companyname.Value.Trim()
            });
            db.Save();

            Response.Redirect("~/Pages/Login/Login.aspx");
        }
    }
}