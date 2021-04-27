using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using TeamProjectTest.Authentication;
using TeamProjectTest.Models;
using TeamProjectTest.UserServices;
using TeamProjectTest.Logger;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace TeamProjectTest.Controllers
{
    //[Authorize]
    [Route("api/[controller]")]
    [ApiController]
    public class ProductsController : ControllerBase
    {

        private readonly TeamProjectContext _context;
        public static IWebHostEnvironment _webHostEnvironment;
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly IUserService _userService;
        private readonly ILogger<ProductsController> _logger;

        public ProductsController(TeamProjectContext context, UserManager<ApplicationUser> userManager,
            IUserService userService, ILogger<ProductsController> log)
        {
            _context = context;
            _userManager = userManager;
            _userService = userService;
            _logger = log;
        }

        private Task<ApplicationUser> GetCurrentUserAsync() => _userManager.GetUserAsync(HttpContext.User);

        // GET: ALL PRODUCTS
        //[Authorize(Roles = UserRoles.Vendor)] //Με αυτό τον τρόπο όταν θέλω 1 role
        //[Authorize(Roles = "Vendor,Admin")] //Με αυτό τον τρόπο γράφω όταν θέλω multiple roles 
        [HttpGet("GetAllProducts")]
        //  [ValidateAntiForgeryToken]
        public async Task<ActionResult<IEnumerable<ProductsAll>>> GetAllProducts()
        {

            var allProducts = await _context.ProductsAlls.ToListAsync();

            string json = JsonConvert.SerializeObject(allProducts); //Log in row
            string jsonFormatted = JValue.Parse(json).ToString(Formatting.Indented); //Log as Json

            _logger.LogInformation(jsonFormatted);

            return allProducts;
        }


        //GET: PRODUCT BY ID
        [Route("GetByProductId/{productid:int}/")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Product>>> GetByProductId(int productid)
        {

            var product = await _context.Products.Where(p => p.ProductId == productid).ToListAsync();
            var result = _context.Products.FirstOrDefault(x => x.ProductId == productid);

            if (result == null)
            {
                _logger.LogInformation($"User clicked API GetByProductId with the id {productid} but we do not have this productId in our database");
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This product id does not exist!" });
            }

            string json = JsonConvert.SerializeObject(product); //Log in row
            string jsonFormatted = JValue.Parse(json).ToString(Formatting.Indented); //Log as Json

            _logger.LogInformation(jsonFormatted);

            return product;
        }

        // GET: ALL PRODUCTS BY VENDOR
        [Authorize(Roles = "Vendor,Admin")] //Με αυτό τον τρόπο γράφω όταν θέλω multiple roles 
        [Route("GetProductsByVendor")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProductsByVendorId>>> GetProductsByVendor()
        {

            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            if (user == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "You need to log in to see your products" });
            }

            return await _context.ProductsByVendorIds.Where(u => u.VendorId == user).ToListAsync();
        }


        //GET: ALL PRODUCTS BY CATEGORYID
        //  [Authorize(Roles = "Vendor,Admin,Anonymous,User")] //Με αυτό τον τρόπο γράφω όταν θέλω multiple roles 
        [HttpGet("GetProductsByCategoryId/{categoryId:int}/")]
        public async Task<ActionResult<IEnumerable<ProductsByCategoryId>>> GetProductsByCategoryId(int categoryId)
        {
            var result = _context.ProductsByCategoryIds.FirstOrDefault(x => x.CategoryId == categoryId);

            if (result == null)
            {
                _logger.LogInformation($"User clicked API GetProductsByCategory with the id {categoryId} but we do not have this categoryId in our database");
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This category id does not exist!" });
            }

            return await _context.ProductsByCategoryIds.Where(p => p.CategoryId == categoryId).ToListAsync();
        }


        //0 Ascending Price , 1 Descending Price
        //POST: ALL PRODUCTS BY ATTRIBUTES
        [Route("GetCategoryProducts")]
        [HttpPost]
        public IEnumerable<ProductsAttributesCategory> GetCategoryProducts(int categoryId, ICollection<int> attributeIds, int SortingId)
        {

            // var lista = _context.ProductsAttributesCategories.ToList();
            // var all = lista.Where(b => attributeIds.Any(a => a == b.AttributeId && b.CategoryId == categoryId)).ToList().OrderBy(x => x.ProductId).ToList();

            if (attributeIds.Count > 0 && SortingId == 0)
            {

                return (from p in _context.ProductsAttributesCategories
                        where p.CategoryId.Equals(categoryId) && attributeIds.Contains(p.AttributeId)
                        select p).OrderBy(p => p.Price);

            }

            else if (attributeIds.Count > 0 && SortingId == 1)
            {
                return (from p in _context.ProductsAttributesCategories
                        where p.CategoryId.Equals(categoryId) && attributeIds.Contains(p.AttributeId)
                        select p).OrderByDescending(p => p.Price);
            }

            else if (attributeIds.Count == 0 && SortingId == 0)
            {
                return (from p in _context.ProductsAttributesCategories
                        where p.CategoryId.Equals(categoryId)
                        select p).OrderBy(p => p.Price);

            }

            else if (attributeIds.Count == 0 && SortingId == 1)
            {
                return (from p in _context.ProductsAttributesCategories
                        where p.CategoryId.Equals(categoryId)
                        select p).OrderByDescending(p => p.Price);

            }


            else
            {
                _logger.LogInformation($"User in ProductsAttributesCategory web api method gave parameters with no result");
                return null;
            }


            //if (all[0].ProductId != all[all.Count() - 1].ProductId)
            //{
            //    all = new List<ProductsAttributesCategory>();
            //}




            //var lista = _context.ProductsAttributesCategories.Where(x => );


            //var goofy2 = lista.Where(x => lista.Any(y=>y.AttributeId ==  && x.CategoryId == 5);
            /*            var ids = lista.Select(x => x.AttributeId).Intersect(attributeIds).ToList();

                        List<ProductsAttributesCategory> temp = new List<ProductsAttributesCategory>();
                        List<ProductsAttributesCategory> final = new List<ProductsAttributesCategory>();
                        for (int i = 0; i < lista.Count; i++)
                        {
                            for (int j = 0; j < ids.Count; j++)
                            {
                                if (lista[i].AttributeId == ids[j])
                                {
                                    temp.Add(lista[i]);  //40 70

                                }
                            }
                        }
                        for (int i = 0; i < temp.Count; i++)
                        {
                            for (int j = i + 1; j < temp.Count; j++)
                            {
                                if (temp[i].CategoryId == temp[j].CategoryId && temp[i].AttributeId != temp[j].AttributeId)
                                {
                                    final.Add(temp[i]);
                                }
                            }
                        }
            */



            /*            lista = lista.Where(x => x.CategoryId == categoryId).ToList();

                        var ids = lista.Select(x => x.AttributeId).Intersect(attributeIds);

                        //  lista.SelectMany(x => x,(x,goofy)=>)

                        var goofy1 = lista.Where(x => ids.Contains(x.AttributeId));

                        var goofy2 = goofy1.Where(x => x.CategoryId == categoryId);

                        //&& x.CategoryId == categoryId);

                        var goofy3 = _context.ProductsAttributesCategories.Where(x => ids.Contains(x.AttributeId));*/




        }



        //GET: TOP FOUR PRODUCTS
        [Route("GetTopFourProducts")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ProductsTop>>> GetTopProducts()
        {
            return await _context.ProductsTops.Where(p => p.Price < 501).ToListAsync();
        }


        // POST: api/Products
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [Authorize(Roles = "Vendor,Admin")]
        [HttpPost]
        public ActionResult Product([FromForm] Product product) //Prepei na onomasw tin methodo mou Product gia na pernaei to product stin vasi
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            string vendorId = product.VendorId = user;
            string productName = product.ProductName;
            string sku = product.Sku;
            decimal? price = product.Price;
            int? productStatus = product.ProductStatus;
            int? rating = product.Rating;
            var categoryId = product.CategoryId;
            var description = product.Description;
            var image = product.Image;

            if (image != null)
            {
                if (image.Length > 0)
                {
                    var imagePath = @"wwwroot\Images\";
                    var uploadPath = _webHostEnvironment + imagePath;

                    if (!Directory.Exists(uploadPath))
                    {
                        Directory.CreateDirectory(uploadPath);
                    }

                    var uniqFileName = sku;
                    var filename = Path.GetFileName(uniqFileName + "." + image.FileName.Split(".")[1].ToLower());
                    string fullPath = uploadPath + filename; //name with only SKU

                    imagePath = imagePath + @"\";
                    var filePath = @".." + Path.Combine(imagePath, filename);

                    using (var fileStream = new FileStream(fullPath, FileMode.Create))
                    {
                        image.CopyTo(fileStream);
                    }


                }

            }

            _context.Products.Add(product);
            _context.SaveChangesAsync();

            // _context.Entry(product).GetDatabaseValues();

            return Ok(new { status = true, message = "Added Successfully " + product.ProductId + " " + product.ProductName });
        }

        //Update Product by ID
        [Authorize(Roles = "Vendor,Admin")]
        [HttpPut("UpdateProductById/{productid:int}")]
        public async Task<IActionResult> UpdateProductById(int productid, [FromForm] Product product)
        {
            var user = User.Claims.FirstOrDefault(v => v.Type == ClaimTypes.NameIdentifier).Value;

            if (productid != product.ProductId)
            {
                return BadRequest();
            }

            _context.Entry(product).State = EntityState.Modified;

            try
            {
                string vendorId = product.VendorId = user;
                string productName = product.ProductName;
                string sku = product.Sku;
                decimal? price = product.Price;
                int? productStatus = product.ProductStatus = 1;
                decimal? rating = product.Rating;
                var description = product.Description;
                var image = product.Image;


                _logger.LogInformation($"{vendorId} + {productName} + {sku}");


                if (image != null)
                {
                    if (image.Length > 0)
                    {
                        var imagePath = @"wwwroot\Images\";
                        var uploadPath = _webHostEnvironment + imagePath;

                        if (!Directory.Exists(uploadPath))
                        {
                            Directory.CreateDirectory(uploadPath);
                        }

                        var uniqFileName = sku;
                        var filename = Path.GetFileName(uniqFileName + "." + image.FileName.Split(".")[1].ToLower());
                        string fullPath = uploadPath + filename; //name with only SKU

                        imagePath = imagePath + @"\";
                        var filePath = @".." + Path.Combine(imagePath, filename);

                        using (var fileStream = new FileStream(fullPath, FileMode.Create))
                        {
                            image.CopyTo(fileStream);
                        }
                    }
                }
                _context.Products.Update(product);
                await _context.SaveChangesAsync();

                return Ok(new { status = true, message = "Update Successfully" });
            }

            catch (DbUpdateConcurrencyException)
            {
                if (!ProductExists(productid))
                {
                    return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This product id does not exist!" });
                }
                else
                {
                    throw;
                }
            }



            //  return Ok(new { status = true, message = "Update Successfully" });
        }


        // DELETE Product
        [Authorize(Roles = "Vendor,Admin")]
        [HttpDelete("DeleteProduct/{productid:int}")]
        public async Task<IActionResult> DeleteProduct(int productid)
        {
            var product = await _context.Products.FindAsync(productid);
            if (product == null)
            {
                return StatusCode(StatusCodes.Status500InternalServerError, new Response { Status = "Error", Message = "This product id does not exist!" });
            }

            _context.Products.Remove(product);
            await _context.SaveChangesAsync();


            return Ok(new { status = true, message = "Delete Successfully" });
        }

        private bool ProductExists(int productid)
        {
            return _context.Products.Any(p => p.ProductId == productid);
        }

    }
}
