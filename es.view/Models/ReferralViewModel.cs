namespace es.view.Models
{
    public class ReferralViewModel
    {
        // Settings that the firm can configure
        public string ReferralMessage { get; set; }
        public bool ShowName { get; set; }
        public bool ShowEmail { get; set; }
        public bool ShowPhone { get; set; }
        public bool ShowComments { get; set; }

        // Fields for client input
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Comments { get; set; }
    }
}
