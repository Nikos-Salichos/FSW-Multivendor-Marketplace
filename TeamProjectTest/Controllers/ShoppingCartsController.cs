using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
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
    public class ShoppingCartsController : ControllerBase
    {
        private readonly TeamProjectContext _context;
        public static IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IUserService _userService;
        private readonly ILogger<ShoppingCartsController> _logger;

        public ShoppingCartsController(TeamProjectContext context, UserManager<ApplicationUser> userManager,
            IUserService userService, ILogger<ShoppingCartsController> log)
        {
            _context = context;
            _userManager = userManager;
            _userService = userService;
            _logger = log;
        }

        // GET: api/ShoppingCart
        [Authorize(Roles = "Vendor,Admin,User")]
        [Route("GetShoppingCart")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ShoppingCart>>> GetShoppingCart()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;


            return await _context.ShoppingCarts.Where(shoppingCart => shoppingCart.UserId == user && shoppingCart.ShoppingCartStateId == 1 && shoppingCart.OrderCode == 1).ToListAsync();
        }


        // GET: api/ShoppingCarts
        //[Authorize(Roles = UserRoles.Vendor)] //Με αυτό τον τρόπο όταν θέλω 1 role
        [HttpGet("GetShoppingCartState2")]
        public async Task<ActionResult<IEnumerable<ShoppingCart>>> GetShoppingCartState2()
        {
            return await _context.ShoppingCarts.Where(s => s.ShoppingCartStateId == 2).ToListAsync();
        }


        // PUT: api/ShoppingCarts/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpPut("{id}")]
        public async Task<IActionResult> PutShoppingCart(int id, ShoppingCart shoppingCart)
        {
            if (id != shoppingCart.ShoppingCartId)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping cart id does not exist!" });
            }

            _context.Entry(shoppingCart).State = EntityState.Modified;

            try
            {

                //Random gen = new Random();
                //int range = 1 * 30;
                //DateTime randomDate = DateTime.Today.AddDays(gen.Next(range));

                var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;
                shoppingCart.UserId = user;
                shoppingCart.ShoppingCartStateId = 2;
                var orderCode = shoppingCart.OrderCode;
                //shoppingCart.DeliveryDate = randomDate;
                decimal? totalAmount = shoppingCart.TotalAmount;
                double? longitude = shoppingCart.Longitude;
                double? latitude = shoppingCart.Latitude;

                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ShoppingCartExists(id))
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping cart id does not exist!" });
                }
                else
                {
                    throw;
                }
            }

            return Ok(shoppingCart);
        }

        // POST: api/ShoppingCarts/UserId
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin,User")] //Με αυτό τον τρόπο γράφω όταν θέλω multiple roles 
        [HttpPost]
        public async Task<IActionResult> PostShoppingCart(ShoppingCart shoppingCart)
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            shoppingCart.UserId = user;
            shoppingCart.ShoppingCartStateId = 1; //na ginoun enum 0 1 2
            shoppingCart.OrderCode = 0;
            DateTime? deliveryDate = shoppingCart.DeliveryDate;
            decimal? totalAmount = shoppingCart.TotalAmount;
            double? longitude = shoppingCart.Longitude;
            double? latitude = shoppingCart.Latitude;

            int id;

            if (_context.ShoppingCarts.Any(s => s.UserId == user && s.OrderCode == 0 && s.ShoppingCartStateId == 1))
            {


                var query = _context.ShoppingCarts.Where(s => s.UserId == user && s.OrderCode == 0 && s.ShoppingCartStateId == 1).ToList();

                string json = JsonConvert.SerializeObject(query); //Log in row
                string jsonFormatted = JValue.Parse(json).ToString(Formatting.Indented); //Log as Json

                _logger.LogInformation($"{user} already has cart {jsonFormatted}");
                return Ok(query);
            }
            else
            {
                _context.ShoppingCarts.Add(shoppingCart);
                await _context.SaveChangesAsync();

                _context.Entry(shoppingCart).GetDatabaseValues();
                id = shoppingCart.ShoppingCartId;

                _logger.LogInformation($"{user} created cart {id}");
            }

            return Ok(shoppingCart);

        }


        // DELETE: api/ShoppingCarts/5
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteShoppingCart(int id)
        {
            var shoppingCart = await _context.ShoppingCarts.FindAsync(id);
            if (shoppingCart == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping cart id does not exist!" });
            }

            _context.ShoppingCarts.Remove(shoppingCart);
            await _context.SaveChangesAsync();

            return NoContent();
        }


        [Authorize(Roles = "Vendor,Admin,User")]
        [Route("GetCartInfo")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<TotalAmount>>> GetCartInfo()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.TotalAmounts.Where(s => s.UserId == user).ToListAsync();
        }


        [Authorize(Roles = "Admin")]
        [Route("GetOrderInfoAdmin")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OrderInfo>>> GetOrderInfoAdmin()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.OrderInfos.ToListAsync();
            //  return Ok(query);

        }
        [Authorize(Roles = "User")]
        [Route("GetOrderInfoUser")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OrderInfo>>> GetOrderInfoUser()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.OrderInfos.Where(s => s.UserId == user).ToListAsync();
            //  return Ok(query);
        }

        [Authorize(Roles = "Vendor")]
        [Route("OrderInfoVendor")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<OrderInfo>>> GetOrderInfoVendor()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            return await _context.OrderInfos.Where(s => s.VendorId == user).ToListAsync();
            //  return Ok(query);
        }



        private bool ShoppingCartExists(int id)
        {
            return _context.ShoppingCarts.Any(e => e.ShoppingCartId == id);
        }
    }
}
