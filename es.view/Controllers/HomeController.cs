using es.data;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web.Mvc;

namespace es.view.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        private readonly DatabaseService db = new DatabaseService();

        [HttpGet]
        public JsonResult GetPosts(int page = 1, int pageSize = 10)
        {
            bool isAuthenticated = System.Web.HttpContext.Current.User.Identity.IsAuthenticated;

            var posts = db.Content.GetAll()
                .Where(c => isAuthenticated ? c.isClientVisible : c.isProspectVisible)
                .OrderByDescending(c => c.PublishedDate)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .Select(c => new {
                    ContentID = c.ContentID,
                    Title = c.Title,
                    ContentBody = c.ContentBody,
                    ContentURL = c.ContentURL,
                    PublishedDate = c.PublishedDate,
                    FileName = c.FileName
                })
                .ToList();

            return Json(posts, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DownloadFile(int id)
        {
            var post = db.Content.GetById(id);
            if (post != null && post.FileData != null)
            {
                // If ContentType is not set, default to a generic binary type.
                string contentType = post.ContentType ?? "application/octet-stream";
                return File(post.FileData, contentType, post.FileName);
            }
            return HttpNotFound();
        }
    }
}
