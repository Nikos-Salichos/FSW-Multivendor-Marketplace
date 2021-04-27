using Microsoft.AspNetCore.Http;
using System.Security.Claims;

namespace TeamProjectTest.UserServices
{
    public class UserService : IUserService
    {
        private readonly IHttpContextAccessor _httpContext;
        public UserService(IHttpContextAccessor httpContext)
        {
            _httpContext = httpContext;
        }

        public string GetUserName()
        {
            return _httpContext.HttpContext.User?.FindFirstValue(ClaimTypes.Name);
        }

        public string GetUserId()
        {
            return _httpContext.HttpContext.User?.FindFirstValue(ClaimTypes.NameIdentifier);
        }



    }
}
