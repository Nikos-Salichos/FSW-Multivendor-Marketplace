using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TeamProjectTest.Authentication;
using TeamProjectTest.Models;

namespace TeamProjectTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ShoppingItemsController : ControllerBase
    {
        private readonly TeamProjectContext _context;

        public ShoppingItemsController(TeamProjectContext context)
        {
            _context = context;
        }

        // GET: api/ShoppingItems  BY SHOPPING CART ID
        [Authorize(Roles = "Vendor,Admin,User")]
        [Route("GetShoppingItemsByCartId")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ShoppingItemsByCartId>>> GetShoppingItemsByCartId()
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;
            return await _context.ShoppingItemsByCartIds.Where(u => u.UserId == user).ToListAsync();
        }

        // PUT: api/ShoppingItems/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpPut("{id}")]
        public async Task<IActionResult> PutShoppingItem(int id, ShoppingItem shoppingItemByCartId)
        {

            if (id != shoppingItemByCartId.ShoppingItemId)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping item id does not exist!" });
            }
            _context.Entry(shoppingItemByCartId).State = EntityState.Modified;

            try
            {
                int? quantity = shoppingItemByCartId.Quantity;
                _context.ShoppingItems.Update(shoppingItemByCartId);
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ShoppingItemExists(id))
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping item id does not exist!" });
                }
                else
                {
                    throw;
                }
            }
            return Ok(new { status = true, message = "Update Successfully" });
        }

        // DELETE: api/ShoppingItems/5
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteShoppingItem(int id)
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            var shoppingItem = await _context.ShoppingItems.FindAsync(id);

            if (shoppingItem == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping item id does not exist!" });
            }

            /*            var query = from i in _context.ShoppingItems
                                 join c in _context.ShoppingCarts on i.ShoppingCartId equals c.ShoppingCartId
                                 where c.OrderCode == 0 && c.ShoppingCartStateId == 1 && c.UserId == user
                                 select i;*/


            _context.ShoppingItems.Remove(shoppingItem);


            await _context.SaveChangesAsync();

            return Ok(new { status = true, message = "Delete Successfully" });
        }


        // GET: api/ShoppingItems/5
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpGet("{id}")]
        public async Task<ActionResult<ShoppingItem>> GetShoppingItem(int id)
        {
            var shoppingItem = await _context.ShoppingItems.FindAsync(id);

            if (shoppingItem == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This shopping item id does not exist!" });
            }
            return shoppingItem;
        }


        // POST: api/ShoppingItems
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin,User")]
        [HttpPost]
        public async Task<ActionResult<ShoppingItem>> PostShoppingItem(ShoppingItem shoppingItem)
        {

            _context.ShoppingItems.Add(shoppingItem);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetShoppingItem", new { id = shoppingItem.ShoppingItemId }, shoppingItem);
        }



        private bool ShoppingItemExists(int id)
        {
            return _context.ShoppingItems.Any(e => e.ShoppingItemId == id);
        }
    }
}
