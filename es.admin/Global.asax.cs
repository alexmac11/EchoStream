using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace es.admin
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


            var config = new ConfigurationBuilder()
                .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
                .Build();

            Application["VimeoClientId"] = config["VimeoSettings:ClientId"];
            Application["VimeoSecret"] = config["VimeoSettings:ClientSecret"];
            Application["YouTubeClientId"] = config["YouTubeSettings:ClientId"];
            Application["YouTubeClientSecret"] = config["YouTubeSettings:ClientSecret"];
        }
    }
}