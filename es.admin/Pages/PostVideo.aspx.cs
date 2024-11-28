using es.data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Web.UI;
using VimeoDotNet;
using VimeoDotNet.Models;
using Google.Apis.Services;
using Google.Apis.YouTube.v3.Data;
using Google.Apis.YouTube.v3;
using Channel = Google.Apis.YouTube.v3.Data.Channel;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace es.admin
{
    public class VideoObj
    {
        public string Title { get; set; }
        public string Description { get; set; }
        public string VideoUrl { get; set; }
    }

    public partial class PostVideo : Page
    {
        private readonly DatabaseService db = new DatabaseService();
        private const int defaultPageSize = 6;

        // Number of videos per page  // vimeo + yt   6 + 6 = 12 videos per page
        // Recommended to set to 50 if page design being long is not a concern
        private int PageSize
        {
            get => ViewState["PageSize"] != null ? (int)ViewState["PageSize"] : defaultPageSize;
            set => ViewState["PageSize"] = value;
        }
        private int CurrentPage
        {
            get => ViewState["CurrentPage"] != null ? (int)ViewState["CurrentPage"] : 1;
            set => ViewState["CurrentPage"] = value;
        }
        private string NextYTPageToken
        {
            get => ViewState["NextYTPageToken"] != null ? (string)ViewState["NextYTPageToken"] : "";
            set => ViewState["NextYTPageToken"] = value;
        }
        private string PreviousYTPageToken
        {
            get => ViewState["PreviousYTPageToken"] != null ? (string)ViewState["PreviousYTPageToken"] : "";
            set => ViewState["PreviousYTPageToken"] = value;
        }
        private string NextVimeoPage
        {
            get => ViewState["NextVimeoPage"] != null ? (string)ViewState["NextVimeoPage"] : "";
            set => ViewState["NextVimeoPage"] = value;
        }
        private string Search
        {
            get => ViewState["Search"] != null ? (string)ViewState["Search"] : "";
            set => ViewState["Search"] = value;
        }
        private string VimeoAccessToken
        {
            get => ViewState["VimeoAccessToken"] != null ? (string)ViewState["VimeoAccessToken"] : "";
            set => ViewState["VimeoAccessToken"] = value;
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (string.IsNullOrEmpty(VimeoAccessToken))
                {
                    int userid = int.Parse(HttpContext.Current.User.Identity.Name);
                    data.User user = db.User.GetById(userid);
                    VimeoAccessToken = user.VimeoAccessToken;

                    if (!string.IsNullOrEmpty(VimeoAccessToken)) {
                        BindData();
                    }
                }
            }
        }

        protected void AuthorizeVimeo_Click(object sender, EventArgs e)
        {
            string authorizationUrl = $"https://api.vimeo.com/oauth/authorize" +
                                      $"?response_type=code" +
                                      $"&client_id={Application["VimeoClientId"]}" +
                                      $"&redirect_uri={Request.Url.Scheme}://{Request.Url.Authority}/Pages/Callback.aspx" +
                                      $"&state=service-vimeo" +
                                      $"&scope=public private";
            Response.Redirect(authorizationUrl);
        }

        protected void btnPrev_Click(object sender, EventArgs e)
        {
            NextYTPageToken = PreviousYTPageToken;
            CurrentPage--;

            BindData();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            CurrentPage++;
            BindData();
        }

        public IEnumerable<VideoObj> FetchYouTubeVideos()
        {
            var videos = new List<VideoObj>();

            // Initialize YouTube API service
            YouTubeService yt = new YouTubeService(new BaseClientService.Initializer() { ApiKey = (string)Application["YouTubeApiKey"] });

            // Get the channel's upload playlist ID
            ChannelsResource.ListRequest channelsListRequest = yt.Channels.List("contentDetails");
            channelsListRequest.Id = (string)Application["YouTubeChannelId"];
            ChannelListResponse channelsListResponse = channelsListRequest.Execute();

            foreach (Channel channel in channelsListResponse.Items)
            {
                string uploadPlaylistId = channel.ContentDetails.RelatedPlaylists.Uploads;

                // Get videos from the upload playlist
                PlaylistItemsResource.ListRequest playlistItemsListRequest = yt.PlaylistItems.List("snippet");
                playlistItemsListRequest.PlaylistId = uploadPlaylistId;
                playlistItemsListRequest.MaxResults = PageSize;
                playlistItemsListRequest.PageToken = NextYTPageToken;
                PlaylistItemListResponse playlistItemsListResponse = playlistItemsListRequest.Execute();

                // Update pagination tokens
                PreviousYTPageToken = playlistItemsListResponse.PrevPageToken;
                NextYTPageToken = playlistItemsListResponse.NextPageToken;

                // Filter videos based on search term
                foreach (PlaylistItem playlistItem in playlistItemsListResponse.Items)
                {
                    if (string.IsNullOrEmpty(Search) ||
                        playlistItem.Snippet.Title.IndexOf(Search, StringComparison.OrdinalIgnoreCase) >= 0 ||
                        playlistItem.Snippet.Description.IndexOf(Search, StringComparison.OrdinalIgnoreCase) >= 0)
                    {
                        videos.Add(new VideoObj
                        {
                            Title = playlistItem.Snippet.Title ?? "Empty Title",
                            Description = playlistItem.Snippet.Description ?? "Empty Description",
                            VideoUrl = "https://www.youtube.com/embed/" + playlistItem.Snippet.ResourceId.VideoId ?? "Empty URL"
                        });
                    }
                }
            }
            //TODO change to authenticate via youtube login instead of api key
            return videos;
        }

        protected IEnumerable<VideoObj> FetchVimeoVideos()
        {
            var videos = new List<VideoObj>();

            var client = new VimeoClient(VimeoAccessToken);
            var vimeoVideos = client.GetVideosAsync(UserId.Me, CurrentPage, PageSize, Search).Result;
            NextVimeoPage = vimeoVideos.Paging.Next;

            foreach (var video in vimeoVideos.Data)
            {
                videos.Add(new VideoObj
                {
                    Title = video.Name ?? "Empty Title",
                    Description = video.Description ?? "Empty Description",
                    VideoUrl = video.Player_Embed_Url ?? "Empty URL"
                });
            }

            return videos;
        }

        public IEnumerable<VideoObj> FetchCombinedVideos()
        {
            var combinedVideos = new List<VideoObj>();

            try
            {
                var youtubeVideos = FetchYouTubeVideos();
                if (youtubeVideos != null) combinedVideos.AddRange(youtubeVideos);
            }
            catch (Exception ex) { Debug.WriteLine(ex); }

            try
            {
                var vimeoVideos = FetchVimeoVideos();
                if (vimeoVideos != null) combinedVideos.AddRange(vimeoVideos);
            }
            catch (Exception ex) { Debug.WriteLine(ex); }


            combinedVideos = combinedVideos.OrderBy(v => v.Title).ToList();

            return combinedVideos;
        }

        // YouTube API Limitations
        //      Does not have channel video search
        //      Max of 50 videos per page
        //      Max of 1000 results at a time
        //      Max of 10,000 quota points a day
        //      No pay for more requests
        //
        //      Conclusion :
        //      One request of 50 videos counts as 100 points, while one request of 5 videos 10 times is 1000 points
        //      To prevent from reaching max requests limits, only query within first 50 videos
        //      If a search parameter is after the first 50 videos, will not appear in first page
        //
        //      Solutions :
        //      To increase request limit, submit a quota extension request in Google Cloud Console
        // 
        // Vimeo API Limitations
        //      returns null for one character searches
        protected void Search_Data(object sender, EventArgs e)
        {
            Search = videosearch.Text.Trim();
            CurrentPage = 1;
            NextYTPageToken = "";
            PreviousYTPageToken = "";

            BindData();
        }

        private void BindData()
        {
            if (Search == "")
            {
                PageSize = defaultPageSize;
            }
            else
            {
                PageSize = 50;
            }

            var combinedVideos = FetchCombinedVideos();

            lblPageInfo.Text = $"Page {CurrentPage}";

            RepeaterVideos.DataSource = combinedVideos;
            RepeaterVideos.DataBind();


            nextBtn.Enabled = !string.IsNullOrEmpty(NextYTPageToken) || !string.IsNullOrEmpty(NextVimeoPage);
            prevBtn.Enabled = CurrentPage > 1;
        }

        protected void VideoPost_Click(object sender, EventArgs e)
        {
            string title = hfVideoTitle.Value;
            string description = hfVideoDescription.Value;
            string url = hfVideoUrl.Value;
            bool isClientVisible = chkClientVisible.Checked;
            bool isProspectVisible = chkProspectVisible.Checked;

            db.Content.Insert(new data.Content
            {
                Title = title,
                ContentBody = description,
                ContentURL = url,
                Tags = "Video",
                PublishedDate = DateTime.Now,
                IsActive = true,
                isClientVisible = isClientVisible,
                isProspectVisible = isProspectVisible
            });
            db.Save();
        }
    }
}
