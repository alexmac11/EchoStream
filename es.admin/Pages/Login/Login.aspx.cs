using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Login : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignIn(object sender, EventArgs e)
        {
            string username = this.username.Value.Trim();
            string password = this.password.Value;


            var user = db.User.GetAll().FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                bool isPasswordValid = BCrypt.Net.BCrypt.Verify(password, user.PasswordHash);

                if (isPasswordValid)
                {
                    Session["NAME"] = user.FirstName + " " + user.LastName;

                    FormsAuthentication.RedirectFromLoginPage(user.UserID.ToString(), createPersistentCookie: true);
                }
            }
        }
    }
}