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
            string ipAddress = HttpContext.Current.Request.UserHostAddress;
            int userId = -1;
            string loginStatus = "Failure";


            var user = db.User.GetAll().FirstOrDefault(u => u.Username == username);

            if (user != null)
            {
                userId = user.UserID;
                bool isPasswordValid = BCrypt.Net.BCrypt.Verify(password, user.PasswordHash);

                if (isPasswordValid)
                {
                    loginStatus = "Success";
                    FormsAuthentication.RedirectFromLoginPage(user.UserID.ToString(), createPersistentCookie: true);
                }
            }

            LogLoginAttempt(userId, username, ipAddress, loginStatus);
        }

        private void LogLoginAttempt(int userId, string username, string ipAddress, string loginStatus)
        {
            try
            {
                db.UserLogins.Insert(new UserLogin
                {
                    UserID = userId,
                    LoginTime = DateTime.UtcNow,
                    IPAddress = ipAddress,
                    LoginStatus = loginStatus
                });

                db.Save(); // Save changes to the database
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error logging login attempt: {ex.Message}");
            }
        }
    }
}