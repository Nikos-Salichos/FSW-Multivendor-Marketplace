using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TeamProjectTest.Authentication;
using TeamProjectTest.Models;

namespace TeamProjectTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CategoriesController : ControllerBase
    {
        private readonly TeamProjectContext _context;

        private readonly ILogger<CategoriesController> _logger;

        public CategoriesController(TeamProjectContext context, ILogger<CategoriesController> log)
        {
            _context = context;
            _logger = log;
        }

        // GET: api/Categories
        //[Authorize(Roles = UserRoles.Vendor)] //Δουλεύει
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Category>>> GetCategories()
        {
            var allCategories = await _context.Categories.ToListAsync();

            string json = JsonConvert.SerializeObject(allCategories); //Log in row
            string jsonFormatted = JValue.Parse(json).ToString(Formatting.Indented); //Log as Json

            _logger.LogInformation(jsonFormatted);

            return allCategories;
        }

        // GET: api/Categories/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Category>> GetCategory(int id)
        {
            var category = await _context.Categories.FindAsync(id);

            if (category == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This category id does not exist!" });
            }

            return category;
        }

        // PUT: api/Categories/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin")]
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCategory(int id, Category category)
        {
            if (id != category.CategoryId)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This category id does not exist!" });
            }

            _context.Entry(category).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CategoryExists(id))
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This category id does not exist!" });
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Categories
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin")]
        [HttpPost]
        public async Task<ActionResult<Category>> PostCategory(Category category)
        {
            _context.Categories.Add(category);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCategory", new { id = category.CategoryId }, category);
        }

        // DELETE: api/Categories/5
        [Authorize(Roles = "Vendor,Admin")]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCategory(int id)
        {
            var category = await _context.Categories.FindAsync(id);

            if (category == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This category id does not exist!" });
            }

            _context.Categories.Remove(category);
            await _context.SaveChangesAsync();

            return NoContent();
        }


        [HttpPost("GetCategoryStructure")]
        public async Task<ActionResult<IEnumerable<CategoriesFilter>>> GetCategoryStructure(int categoryId, ICollection<int> productIds)
        {
            if (productIds.Count > 0)
                return _context.CategoriesFilters.AsEnumerable().Where(p => p.CategoryId.Equals(categoryId) && productIds.Contains(p.ProductId)).ToList();
            else
                return _context.CategoriesFilters.AsEnumerable().Where(p => p.CategoryId.Equals(categoryId)).ToList();

        }

        private bool CategoryExists(int id)
        {
            return _context.Categories.Any(e => e.CategoryId == id);
        }


    }
}
