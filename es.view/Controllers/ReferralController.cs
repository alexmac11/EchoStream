using es.data;
using es.view.Models;
using System;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;

namespace es.view.Controllers
{
    public class ReferralController : Controller
    {
        private readonly DatabaseService db = new DatabaseService();

        // GET: /Referral/
        public ActionResult Index()
        {
            // The firm can drive these settings from a configuration store.
            var model = new ReferralViewModel
            {
                ReferralMessage = "Please refer your friend by filling out the form below.",
                ShowName = true,
                ShowEmail = true,
                ShowPhone = true,
                ShowComments = true
            };

            // Explicitly specify the view location in Views/Home/Referral.cshtml
            return View("~/Views/Home/Referral.cshtml", model);
        }

        // POST: /Referral/SubmitReferral
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult SubmitReferral(ReferralViewModel model)
        {
            if (ModelState.IsValid)
            {
                int userId = int.Parse(User.Identity.GetUserId());

                var entity = new Referral
                {
                    UserID = userId,
                    ReferralName = model.Name?.Trim(),
                    ReferralEmail = model.Email?.Trim(),
                    ReferralComments = model.Comments?.Trim(),
                    ReferralDate = DateTime.UtcNow
                };
                db.Referral.Insert(entity);
                db.Save();

                return RedirectToAction("ThankYou");
            }
            // If validation fails, redisplay the form.
            return View("~/Views/Home/Referral.cshtml", model);
        }

        // GET: /Referral/ThankYou
        public ActionResult ThankYou()
        {
            return View("~/Views/Home/ThankYou.cshtml");
        }
    }
}
