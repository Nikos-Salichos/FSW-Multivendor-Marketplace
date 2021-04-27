using Microsoft.AspNetCore.Authentication;
using System.Collections.Generic;

namespace TeamProjectTest.GoogleLogin
{
    public class LoginViewModel
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string ReturnUrl { get; set; }
        public IList<AuthenticationScheme> ExternalLogins { get; set; }
    }
}
