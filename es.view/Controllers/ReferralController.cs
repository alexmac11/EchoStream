using es.view.Models;
using System.Web.Mvc;

namespace es.view.Controllers
{
    [AllowAnonymous]
    public class ReferralController : Controller
    {
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
        [AllowAnonymous]
        public ActionResult SubmitReferral(ReferralViewModel model)
        {
            if (ModelState.IsValid)
            {
                // TODO: Process the referral (e.g., save to database, send email, etc.)
                return RedirectToAction("ThankYou");
            }
            // If validation fails, redisplay the form.
            return View("~/Views/Home/Referral.cshtml", model);
        }

        // GET: /Referral/ThankYou
        [AllowAnonymous]
        public ActionResult ThankYou()
        {
            return View("~/Views/Home/ThankYou.cshtml");
        }
    }
}
