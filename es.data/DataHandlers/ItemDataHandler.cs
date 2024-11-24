using Google.Apis.Services;
using Google.Apis.YouTube.v3.Data;
using Google.Apis.YouTube.v3;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Text;
using System.Threading.Tasks;

namespace es.data
{
    public class UserDataHandler : GenericDataHandler<User>
    {
        public UserDataHandler(DataEntities context) : base(context) { }

        public User GetUserByUserNameAndPassword(string username, string password)
        {
            return _dbSet.FirstOrDefault(sp => sp.Username == username && sp.PasswordHash == password);
        }
    }

    public class ContentDataHandler : GenericDataHandler<Content>
    {
        public ContentDataHandler(DataEntities context) : base(context) { }
    }

    public class VideoObj
    {
        public string title;
        public string description;
        public string id;
    }
    public class VideoDataHandler : GenericDataHandler<Video>
    {
        public VideoDataHandler(DataEntities context) : base(context) { }

        public IEnumerable<VideoObj> GetNVideos(int videoCount)
        {
            var videos = new List<VideoObj>();
            try
            {
                YouTubeService yt = new YouTubeService(new BaseClientService.Initializer() { ApiKey = "AIzaSyBY36G1easRwpKYlzleJ33jpA-zWyVVHQ8" });
                ChannelsResource.ListRequest channelsListRequest = yt.Channels.List("contentDetails");
                //channelsListRequest.ForUsername = "genmatter3907";
                channelsListRequest.Id = "UC3MA6L6NsrfMcrqyS54rmNg";
                ChannelListResponse channelsListResponse = channelsListRequest.Execute();

                foreach (Channel channel in channelsListResponse.Items)
                {
                    string uploadsListId = channel.ContentDetails.RelatedPlaylists.Uploads;
                    int requestCount = 0;
                    string nextPageToken = "";
                    while (nextPageToken != null && requestCount < 1)
                    {
                        requestCount++;
                        PlaylistItemsResource.ListRequest playlistItemsListRequest = yt.PlaylistItems.List("snippet");
                        playlistItemsListRequest.PlaylistId = uploadsListId;
                        playlistItemsListRequest.MaxResults = videoCount;
                        playlistItemsListRequest.PageToken = nextPageToken;
                        PlaylistItemListResponse playlistItemsListResponse = playlistItemsListRequest.Execute();
                        foreach (PlaylistItem playlistItem in playlistItemsListResponse.Items)
                        {
                            VideoObj video = new VideoObj();
                            video.title = playlistItem.Snippet.Title;
                            video.description = playlistItem.Snippet.Description;
                            video.id = playlistItem.Snippet.ResourceId.VideoId;

                            videos.Add(video);
                        }
                        nextPageToken = playlistItemsListResponse.NextPageToken;
                    }
                }
                
                return videos;
            }
            catch (Exception e)
            {
                Debug.WriteLine(e.Message);

                return null;
            }
        }
    }

    public class HtmlPostDataHandler : GenericDataHandler<HtmlPost>
    {
        public HtmlPostDataHandler(DataEntities context) : base(context) { }
    }

    public class AuditLogDataHandler : GenericDataHandler<AuditLog>
    {
        public AuditLogDataHandler(DataEntities context) : base(context) { }
    }

    public class CategoryDataHandler : GenericDataHandler<Category>
    {
        public CategoryDataHandler(DataEntities context) : base(context) { }

        public void RemoveCategoryByName(string name)
        {
            var row = _dbSet.FirstOrDefault(CategoryName => CategoryName.CategoryName == name);
            
            if (row != null)
            {
                _dbSet.Remove(row);
            }
        }
    }

    public class RegistrationTrackingDataHandler : GenericDataHandler<RegistrationTracking>
    {
        public RegistrationTrackingDataHandler(DataEntities context) : base(context) { }
    }

    public class PasswordResetTokenDataHandler : GenericDataHandler<PasswordResetToken>
    {
        public PasswordResetTokenDataHandler(DataEntities context) : base(context) { }
    }

    public class ReferralDataHandler : GenericDataHandler<Referral>
    {
        public ReferralDataHandler(DataEntities context) : base(context) { }
    }
}
