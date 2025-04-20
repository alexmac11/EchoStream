using System.Linq;

namespace es.data
{
    public class UserDataHandler : GenericDataHandler<User>
    {
        public UserDataHandler(DataEntities context) : base(context) { }
    }

    public class ContentDataHandler : GenericDataHandler<Content>
    {
        public ContentDataHandler(DataEntities context) : base(context) { }
    }
    public class VideoDataHandler : GenericDataHandler<Video>
    {
        public VideoDataHandler(DataEntities context) : base(context) { }
    }

    public class HtmlPostDataHandler : GenericDataHandler<HtmlPost>
    {
        public HtmlPostDataHandler(DataEntities context) : base(context) { }
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

    public class VideoWatchHandler : GenericDataHandler<VideoWatch>
    {
        public VideoWatchHandler(DataEntities context) : base(context) { }
    }

    public class UserLoginHandler : GenericDataHandler<UserLogin>
    {
        public UserLoginHandler(DataEntities context) : base(context) { }
    }
}
