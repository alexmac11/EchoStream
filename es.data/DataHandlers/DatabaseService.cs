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
        public AuditLogDataHandler AuditLog => new AuditLogDataHandler(_context);
        public CategoryDataHandler Category => new CategoryDataHandler(_context);
        public RegistrationTrackingDataHandler RegistrationTracking => new RegistrationTrackingDataHandler(_context);
        public PasswordResetTokenDataHandler PasswordReset => new PasswordResetTokenDataHandler(_context);
        public ReferralDataHandler Referral => new ReferralDataHandler(_context);


        public void Save() => _context.SaveChanges();

        public void Dispose() => _context.Dispose();
    }
}
