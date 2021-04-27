using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;

namespace TeamProjectTest.GoogleLogin
{
    [Route("api/[controller]")]
    [ApiController]
    public class GmailController : ControllerBase
    {

        private readonly SignInManager<IdentityUser> _signInManager;

        public GmailController(SignInManager<IdentityUser> signInManager)
        {
            _signInManager = signInManager;
        }


        [HttpGet]
        public async Task<IActionResult> GmailLogin(string returnUrl)
        {
            LoginViewModel model = new LoginViewModel
            {
                ReturnUrl = returnUrl,
                ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList()
            };

            return Ok();
        }


        [HttpPost]
        [Route("External-Login")]
        public IActionResult ExternalLogin(string provider, string returnUrl)
        {
            var redirectUrl = Url.Action("ExternalLoginCallBack", "Account",
                new { ReturnUrl = returnUrl });

            var properties = _signInManager.ConfigureExternalAuthenticationProperties(provider, redirectUrl);

            return new ChallengeResult(provider, properties);
        }


    }
}


//Google Login
//https://accounts.google.com/o/oauth2/v2/auth?scope=openid&redirect_uri=https://localhost:44308/signin-google&response_type=code&client_id=807424932471-c0f5ire0m91lhhv64jt6jo54775gb0lr.apps.googleusercontent.com

