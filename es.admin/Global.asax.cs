using es.data;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.Entity;
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
        private readonly DatabaseService db = new DatabaseService();

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

            DbConfiguration.SetConfiguration(new MyDbConfiguration()); // AzureDB Configuration
            //var _keepAliveTimer = new System.Threading.Timer(KeepDatabaseAlive, null, TimeSpan.Zero, TimeSpan.FromMinutes(5));
        }

        private void KeepDatabaseAlive(object state)
        {
            try
            {
                db.Exists();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("KeepDatabaseAlive Error: " + ex.Message);
            }
        }
    }
}