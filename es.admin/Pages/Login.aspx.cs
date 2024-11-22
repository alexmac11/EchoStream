using es.data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //todo Remember me checkbox
        protected void SignIn(object sender, EventArgs e)
        {
            var request = new Requests();
            var user = request.Login(this.username.Value, this.password.Value);

            if (user != null)
            {
                this.Session["NAME"] = user.name;

                FormsAuthentication.RedirectFromLoginPage(user.username, createPersistentCookie: true);
            }
        }
    }
}