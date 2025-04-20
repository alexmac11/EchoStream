using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace es.data
{
    public class DatabaseService : IDisposable
    {
        private readonly DataEntities _context;

        public DatabaseService()
        {
            _context = new DataEntities();
        }

        public UserDataHandler User => new UserDataHandler(_context);
        public ContentDataHandler Content => new ContentDataHandler(_context);
        public VideoDataHandler Video => new VideoDataHandler(_context);
        public HtmlPostDataHandler HtmlPost => new HtmlPostDataHandler(_context);
        public CategoryDataHandler Category => new CategoryDataHandler(_context);
        public RegistrationTrackingDataHandler RegistrationTracking => new RegistrationTrackingDataHandler(_context);
        public PasswordResetTokenDataHandler PasswordReset => new PasswordResetTokenDataHandler(_context);
        public ReferralDataHandler Referral => new ReferralDataHandler(_context);
        public VideoWatchHandler VideoWatch => new VideoWatchHandler(_context);
        public UserLoginHandler UserLogins => new UserLoginHandler(_context);


        public void Exists() => _context.Database.Exists();
        public void Save() => _context.SaveChanges();
        public void Dispose() => _context.Dispose();
    }
}
