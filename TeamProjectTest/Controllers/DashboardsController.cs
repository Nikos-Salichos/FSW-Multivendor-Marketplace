using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TeamProjectTest.Authentication;
using TeamProjectTest.Models;
using TeamProjectTest.UserServices;

namespace TeamProjectTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DashboardsController : ControllerBase
    {
        private readonly TeamProjectContext _context;
        public static IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IUserService _userService;

        public DashboardsController(TeamProjectContext context, UserManager<ApplicationUser> userManager,
            IUserService userService)
        {
            _context = context;
            _userManager = userManager;
            _userService = userService;
        }

        //// GET: api/ShoppingCart By Vendor 
        [Authorize(Roles = "Vendor")]
        [HttpGet("CountProductsOrderVendor")]
        public async Task<ActionResult<IEnumerable<CountProductsOrderVendor>>> CountProductsOrderVendor()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.CountProductsOrderVendors.Where(s => s.VendorId == user && s.ShoppingCartStateId == 2).ToListAsync();
        }

        //// GET: api/ShoppingCart By Admin
        [Authorize(Roles = "Admin")]
        [HttpGet("CountProductsOrderAdmin")]
        public async Task<ActionResult<IEnumerable<CountProductsOrderVendor>>> CountProductsOrderAdmin()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.CountProductsOrderVendors.Where(s => s.ShoppingCartStateId == 2).ToListAsync();
        }

        [Authorize(Roles = "Vendor")]
        [HttpGet("CountProductsDeliveryDateVendor")]
        public async Task<ActionResult<IEnumerable<CountProductsDeliverDateVendor>>> CountProductsDeliveryDateVendor()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.CountProductsDeliverDateVendors.Where(v => v.VendorId == user && v.ShoppingCartStateId == 2).ToListAsync();
        }

        [Authorize(Roles = "Admin")]
        [HttpGet("CountProductsDeliveryDateAdmin")]
        public async Task<ActionResult<IEnumerable<CountProductsDeliveryDateAdmin>>> CountProductsDeliveryDateAdmin()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.CountProductsDeliveryDateAdmins.Where(a => a.ShoppingCartStateId == 2).ToListAsync();
        }
    }
}
