using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using TeamProjectTest.Authentication;
using TeamProjectTest.Models;

namespace TeamProjectTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SubCategoryTypesController : ControllerBase
    {
        private readonly TeamProjectContext _context;

        private readonly ILogger<ProductsController> _logger;

        public SubCategoryTypesController(TeamProjectContext context, ILogger<ProductsController> log)
        {
            _context = context;
            _logger = log;
        }

        // GET: api/SubCategoryTypes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<SubCategoryType>>> GetSubCategoryTypes()
        {
            return await _context.SubCategoryTypes.ToListAsync();
        }

        // GET: api/SubCategoryTypes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<SubCategoryType>> GetSubCategoryType(int id)
        {
            var subCategoryType = await _context.SubCategoryTypes.FindAsync(id);

            if (subCategoryType == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This subcategory type id does not exist!" });
            }

            return subCategoryType;
        }

        // PUT: api/SubCategoryTypes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = UserRoles.Admin)]
        [HttpPut("{id}")]
        public async Task<IActionResult> PutSubCategoryType(int id, SubCategoryType subCategoryType)
        {
            if (id != subCategoryType.SubCategoryTypeId)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This subcategory type id does not exist!" });
            }

            _context.Entry(subCategoryType).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SubCategoryTypeExists(id))
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This subcategory type id does not exist!" });
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/SubCategoryTypes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = UserRoles.Admin)]
        [HttpPost]
        public async Task<ActionResult<SubCategoryType>> PostSubCategoryType(SubCategoryType subCategoryType)
        {
            _context.SubCategoryTypes.Add(subCategoryType);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetSubCategoryType", new { id = subCategoryType.SubCategoryTypeId }, subCategoryType);
        }

        // DELETE: api/SubCategoryTypes/5
        [Authorize(Roles = UserRoles.Admin)]
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteSubCategoryType(int id)
        {
            var subCategoryType = await _context.SubCategoryTypes.FindAsync(id);
            if (subCategoryType == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This subcategory type id does not exist!" });
            }

            _context.SubCategoryTypes.Remove(subCategoryType);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool SubCategoryTypeExists(int id)
        {
            return _context.SubCategoryTypes.Any(e => e.SubCategoryTypeId == id);
        }
    }
}
