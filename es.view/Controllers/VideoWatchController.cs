using es.data;
using Microsoft.AspNet.Identity;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.WebPages;

namespace es.view.Controllers
{

    // Example DTO (Data Transfer Object) for the JSON you’ll receive
    public class VideoWatchStartDto
    {
        public int ContentId { get; set; }
        public DateTime StartTime { get; set; }
    }
    public class VideoWatchUpdateDto
    {
        public int WatchedSeconds { get; set; }
    }

    [Authorize]
    [HostAuthentication(DefaultAuthenticationTypes.ApplicationCookie)]
    [RoutePrefix("api/VideoWatch")]
    public class VideoWatchController : ApiController
    {
        private readonly DatabaseService db = new DatabaseService();

        // POST api/VideoWatch/Start
        [HttpPost]
        [Route("Start")]
        public IHttpActionResult StartVideo([FromBody] VideoWatchStartDto dto)
        {
            // Debug: Log entry into the endpoint and the received DTO.
            Debug.WriteLine("StartVideo endpoint called.");
            Debug.WriteLine("Received DTO: " + Newtonsoft.Json.JsonConvert.SerializeObject(dto));

            var userIdString = User.Identity.GetUserId();
            Debug.WriteLine("User.Identity.GetUserId(): " + userIdString);

            if (string.IsNullOrEmpty(userIdString))
            {
                Debug.WriteLine("Unauthorized: userIdString is null or empty.");
                return Unauthorized();
            }

            // Create entity for database insertion.
            var entity = new VideoWatch
            {
                UserID = userIdString.AsInt(),
                ContentID = dto.ContentId,
                StartTime = dto.StartTime,
                WatchedSeconds = 0
            };
            Debug.WriteLine("Created VideoWatch entity: " + Newtonsoft.Json.JsonConvert.SerializeObject(entity));

            try
            {
                db.VideoWatch.Insert(entity);
                Debug.WriteLine("Inserted VideoWatch entity to the database service.");
                db.Save();
                Debug.WriteLine("Saved changes to database. New VideoWatchID: " + entity.VideoWatchID);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception during DB insertion: " + ex.Message);
                return InternalServerError(ex);
            }

            // Return the new primary key.
            Debug.WriteLine("Returning success response with VideoWatchID.");
            return Ok(new { VideoWatchID = entity.VideoWatchID });
        }

        // PUT api/VideoWatch/Update/{id}
        [HttpPut]
        [Route("Update/{id}")]
        public IHttpActionResult UpdateVideo(int id, [FromBody] VideoWatchUpdateDto dto)
        {
            Debug.WriteLine($"UpdateVideo endpoint called for VideoWatchID: {id}");
            var userIdString = User.Identity.GetUserId();
            if (string.IsNullOrEmpty(userIdString))
            {
                return Unauthorized();
            }
            int userId = userIdString.AsInt();

            var entity = db.VideoWatch.GetById(id);
            if (entity == null || entity.UserID != userId)
            {
                Debug.WriteLine("VideoWatch entity not found or does not belong to the current user.");
                return NotFound();
            }

            // Update the watched time. Depending on your logic, you might either set it
            // or accumulate new seconds.
            entity.WatchedSeconds = dto.WatchedSeconds;
            try
            {
                db.VideoWatch.Update(entity);
                db.Save();
                Debug.WriteLine("Updated VideoWatch entity. WatchedSeconds: " + entity.WatchedSeconds);
            }
            catch (Exception ex)
            {
                Debug.WriteLine("Exception during DB update: " + ex.Message);
                return InternalServerError(ex);
            }

            return Ok(new { VideoWatchID = entity.VideoWatchID, WatchedSeconds = entity.WatchedSeconds });
        }
    }
}
