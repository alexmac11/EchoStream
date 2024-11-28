using es.data;
using Google.Apis.Auth.OAuth2;
using System;
using System.Diagnostics;
using System.Web;
using VimeoDotNet;

namespace es.admin.Pages
{
    public partial class Callback : System.Web.UI.Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {
            string state = Request.QueryString["state"];
            string code = Request.QueryString["code"];
            Debug.WriteLine("state: " + state);
            if (!string.IsNullOrEmpty(state) && !string.IsNullOrEmpty(code))
            {
                if (state == "service-vimeo")
                {
                    var client = new VimeoClient((string)Application["VimeoClientId"], (string)Application["VimeoSecret"]);
                    string redirectUri = $"{Request.Url.Scheme}://{Request.Url.Authority}/Pages/Callback.aspx";
                    var accessTokenResponse = client.GetAccessTokenAsync(code, redirectUri).Result;

                    if (accessTokenResponse != null)
                    {
                        int userid = int.Parse(HttpContext.Current.User.Identity.Name);
                        data.User user = db.User.GetById(userid);
                        if (user != null)
                        {
                            user.VimeoAccessToken = accessTokenResponse.AccessToken;

                            db.User.Update(user);
                            db.Save();
                        }
                    }
                }
                else if (state == "service-yt")
                {
                    Debug.WriteLine("yt state");
                }
                else
                {
                    Debug.WriteLine("Invalid state paramater");
                }

                Response.Redirect("~/Pages/PostVideo.aspx");
            }
            else
            {
                Debug.WriteLine("Invalid callback request.");
                Response.Redirect("~/Pages/PostVideo.aspx");
            }
        }
    }
}