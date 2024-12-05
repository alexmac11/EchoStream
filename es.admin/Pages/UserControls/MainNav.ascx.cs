using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace es.admin.UserControls
{
    public partial class MainNav : System.Web.UI.UserControl
    {
        private readonly DatabaseService db = new DatabaseService();
        //TODO add settings page
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated == true)
            {
                int userid = int.Parse(HttpContext.Current.User.Identity.Name);
                User user = db.User.GetById(userid);

                if (user != null)
                {
                    this.fullname.InnerText = Server.HtmlEncode(user.FirstName + " " + user.LastName);
                }
                else
                {
                    Response.Redirect("~/Pages/Login/Login.aspx");
                }
            }
            else
            {
                Response.Redirect("~/Pages/Login/Login.aspx");
            }
        }

        protected void On_Logout(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}