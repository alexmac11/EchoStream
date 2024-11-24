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
        //todo Remember me checkbox
        protected void SignIn(object sender, EventArgs e)
        {
            var user = db.User.GetUserByUserNameAndPassword(this.username.Value, this.password.Value);

            if (user != null)
            {
                this.Session["NAME"] = user.FirstName + " " + user.LastName;

                FormsAuthentication.RedirectFromLoginPage(user.Username, createPersistentCookie: true);
            }
        }
    }
}