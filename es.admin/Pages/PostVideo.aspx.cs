using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Dynamic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace es.admin
{
    public partial class PostVideo : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private int pageSize = 12;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }
        }

        public void BindData()
        {
            var videos = db.Video.GetNVideos(pageSize);

            foreach (var video in videos)
            {
                var div = new HtmlGenericControl("div");
                div.Attributes.Add("class", "col-sm-6 col-md-4 col-xl-3 mb-3");

                var div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "card card-body pt-2 text-center text-truncate");

                var p1 = new HtmlGenericControl("p");
                p1.Attributes.Add("class", "fs-5");
                if (video.title != "") { p1.InnerText = video.title; } else { p1.InnerText = "Empty Title"; }
                div2.Controls.Add(p1);

                var p2 = new HtmlGenericControl("p");
                p2.Attributes.Add("class", "fs-5");
                if (video.description != "") { p2.InnerText = video.description; } else { p2.InnerText = "Empty Description"; }
                div2.Controls.Add(p2);

                var iframe = new HtmlIframe();
                iframe.Attributes.Add("class", "rounded");
                iframe.Src = "https://www.youtube.com/embed/" + video.id;
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