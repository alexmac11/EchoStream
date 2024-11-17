using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class PostVideo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Create_Videos(sender, e);
        }
        public void Create_Videos(object sender, EventArgs e)
        {
            var videos = new List<string> { "here", "here", "here", "here", "here", "here"};
            foreach (var video in videos)
            {
                var div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "col-sm-6 col-md-4 col-xl-3 mb-3");

                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "card card-body pt-2 text-center text-wrap");

                var p1 = new HtmlGenericControl("p");
                p1.Attributes.Add("class", "fs-5");
                p1.InnerText = "Title";
                div2.Controls.Add(p1);

                var p2 = new HtmlGenericControl("p");
                p2.Attributes.Add("class", "fs-5");
                p2.InnerText = "description";
                div2.Controls.Add(p2);

                var iframe = new HtmlIframe();
                iframe.Attributes.Add("class", "rounded");
                iframe.Src = "https://www.youtube.com/embed/B4jG7xeMCx0?si=2dCO9Qvn42Uae6Q9&amp";
                iframe.Attributes.Add("width", "355");
                iframe.Attributes.Add("height", "200");
                iframe.Attributes.Add("allowfullscreen", "allowfullscreen");
                div2.Controls.Add(iframe);

                div.Controls.Add(div2);

                videoTable.Controls.Add(div);
            }
        }
    }
}