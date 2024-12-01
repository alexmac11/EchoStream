using es.data;
using Google.Apis.Auth.OAuth2;
using Google.Apis.Auth.OAuth2.Flows;
using System;
using System.Diagnostics;
using System.Threading;
using System.Web;
using System.Web.UI;
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
                    HandleVimeoCallback(code);
                }
                else if (state == "service-yt")
                {
                    HandleYouTubeCallback(code);
                }
                else
                {
                    Debug.WriteLine("Invalid state parameter");
                }

                Response.Redirect("~/Pages/PostVideo.aspx");
            }
            else
            {
                Debug.WriteLine("Invalid callback request.");
                Response.Redirect("~/Pages/PostVideo.aspx");
            }
        }

        private void HandleVimeoCallback(string code)
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

        private void HandleYouTubeCallback(string code)
        {
            try
            {
                string clientId = (string)Application["YouTubeClientId"];
                string clientSecret = (string)Application["YouTubeClientSecret"];
                string redirectUri = $"{Request.Url.Scheme}://{Request.Url.Authority}/Pages/Callback.aspx";

                var flow = new GoogleAuthorizationCodeFlow(
                    new GoogleAuthorizationCodeFlow.Initializer
                    {
                        ClientSecrets = new ClientSecrets
                        {
                            ClientId = clientId,
                            ClientSecret = clientSecret
                        },
                        Scopes = new[] { "https://www.googleapis.com/auth/youtube.readonly" },
                    });

                var tokenResponse = flow.ExchangeCodeForTokenAsync(
                    userId: HttpContext.Current.User.Identity.Name,
                    code: code,
                    redirectUri: redirectUri,
                    taskCancellationToken: CancellationToken.None
                ).Result;

                if (tokenResponse != null)
                {
                    int userid = int.Parse(HttpContext.Current.User.Identity.Name);
                    data.User user = db.User.GetById(userid);

                    if (user != null)
                    {
                        user.YTAccessToken = tokenResponse.AccessToken;
                        user.YTRefreshToken = tokenResponse.RefreshToken;
                        Debug.WriteLine("AccessToken: " + user.YTAccessToken);
                        Debug.WriteLine("RefreshToken: " + user.YTRefreshToken);

                        db.User.Update(user);
                        db.Save();
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Error during YouTube token exchange: " + ex.Message);
            }
        }
    }
}