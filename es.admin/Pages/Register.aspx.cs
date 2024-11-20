using es.data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Register_Button(object sender, EventArgs e)
        {
            var request = new Requests();
            // this.firstname.Value
            request.addAccount(firstname.Value, lastname.Value, companyname.Value, website.Value, email.Value, phone.Value, address.Value, password.Value);
        }
    }
}