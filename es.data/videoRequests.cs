using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Dynamic;

using Google.Apis.Auth.OAuth2;
using Google.Apis.Services;
using Google.Apis.Upload;
using Google.Apis.Util.Store;
using Google.Apis.YouTube.v3;
using Google.Apis.YouTube.v3.Data;


namespace es.data
{
    public class VideoObj
    {
        public string title;
        public string description;
        public string id;
    }

    public class videoRequests
    {
        public List<VideoObj> getNVideos(int videoCount)
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
                        requestCount ++;
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
}
