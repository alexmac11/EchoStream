using es.data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Script.Serialization;
using System.Web.UI;

namespace es.admin
{
    public partial class _Default : Page
    {
        private readonly DatabaseService db = new DatabaseService();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // 1) Summary counts
                litTotalUsers.InnerText = db.User.Count().ToString();
                litTotalPosts.InnerText = db.Content.Count().ToString();
                litTotalVideos.InnerText = db.VideoWatch.GetAll()
                    .Select(vw => vw.ContentID)
                    .Distinct()
                    .Count()
                    .ToString();

                // 2) Date window (last year)
                var since = DateTime.Today.AddDays(-365);

                // 3) Login data
                var loginData = db.UserLogins.GetAll()
                    .Where(l => l.LoginTime >= since)
                    .GroupBy(l => l.LoginTime.Value.Date)
                    .Select(g => new { Date = g.Key, Count = g.Count() })
                    .OrderBy(x => x.Date)
                    .ToList();

                // 4) Registration data
                var registrationData = db.RegistrationTracking.GetAll()
                    .Where(r => r.RegistrationDate >= since)
                    .GroupBy(r => r.RegistrationDate.Value.Date)
                    .Select(g => new { Date = g.Key, Count = g.Count() })
                    .OrderBy(x => x.Date)
                    .ToList();

                // 5) Watch‑seconds per day & raw list
                var watchList = db.VideoWatch.GetAll()
                    .Where(v => v.StartTime >= since)
                    .ToList();

                var watchData = watchList
                    .GroupBy(v => v.StartTime.Date)
                    .Select(g => new {
                        Date = g.Key,
                        Watched = g.Sum(v => v.WatchedSeconds)
                    })
                    .OrderBy(x => x.Date)
                    .ToList();

                // 6) Pie data: counts per Tag from Content.Tags
                var contents = db.Content.GetAll()
                    .Select(c => new { c.ContentID, c.Tags })
                    .ToDictionary(c => c.ContentID, c => c.Tags);

                var excludedTags = new HashSet<string>(StringComparer.OrdinalIgnoreCase) { "video" };

                var tagCounts = new Dictionary<string, int>(StringComparer.OrdinalIgnoreCase);
                foreach (var w in watchList)
                {
                    if (!contents.TryGetValue(w.ContentID, out var tagString)
                        || string.IsNullOrWhiteSpace(tagString))
                        continue;

                    foreach (var tag in tagString
                        .Split(new[] { ',' }, StringSplitOptions.RemoveEmptyEntries)
                        .Select(t => t.Trim())
                        .Where(t => !excludedTags.Contains(t)))
                    {
                        if (tagCounts.ContainsKey(tag)) tagCounts[tag]++;
                        else tagCounts[tag] = 1;
                    }
                }

                var pieData = tagCounts
                    .Select(kvp => new {
                        CategoryName = kvp.Key,
                        Count = kvp.Value
                    })
                    .ToList();

                // 7) Serialize all four data sets to JSON
                var js = new JavaScriptSerializer();
                var loginJson = js.Serialize(
                    loginData.Select(x => new {
                        Date = x.Date.ToString("yyyy-MM-dd"),
                        x.Count
                    })
                );
                var regJson = js.Serialize(
                    registrationData.Select(x => new {
                        Date = x.Date.ToString("yyyy-MM-dd"),
                        x.Count
                    })
                );
                var watchJson = js.Serialize(
                    watchData.Select(x => new {
                        Date = x.Date.ToString("yyyy-MM-dd"),
                        Watched = x.Watched
                    })
                );
                var pieJson = js.Serialize(pieData);

                // 8) Fire initCharts(login, registrations, watch, pie)
                var script = $@"
                    initCharts(
                      {loginJson},
                      {regJson},
                      {watchJson},
                      {pieJson}
                    );";

                ScriptManager.RegisterStartupScript(
                    this, GetType(), "renderCharts", script, true
                );
            }
        }
    }
}
