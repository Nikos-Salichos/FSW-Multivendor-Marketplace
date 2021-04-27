using System.Threading.Tasks;

namespace TeamProjectTest.SendMailOnRegistration
{
    public interface IMailer
    {
        Task SendEmailAsync(string email, string subject, string body);
    }
}
