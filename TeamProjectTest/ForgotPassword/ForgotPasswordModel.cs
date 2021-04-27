using System.ComponentModel.DataAnnotations;

namespace TeamProjectTest.ForgotPassword
{
    public class ForgotPasswordModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}
