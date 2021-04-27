using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using System;
using System.IO;
using TeamProjectTest.Models;

namespace TeamProjectTest.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ImagesUploadsController : ControllerBase
    {
        public static IWebHostEnvironment _webHostEnvironment;

        public ImagesUploadsController(IWebHostEnvironment webHostEnvironment)
        {
            _webHostEnvironment = webHostEnvironment;
        }

        //[Authorize(Roles = "Vendor,Admin")]
        [HttpPost]
        public string Post([FromForm] ImageUpload product)
        {

            var image = product.Image;
            var name = product.Name;

            try
            {
                if (image.Length > 0)
                {

                    var imagePath = @"wwwroot\Images\";
                    var uploadPath = imagePath;

                    if (!Directory.Exists(uploadPath))
                    {
                        Directory.CreateDirectory(uploadPath);
                    }

                    var uniqFileName = name;
                    var filename = Path.GetFileName(uniqFileName + "." + image.FileName.Split(".")[1].ToLower());
                    string fullPath = uploadPath + filename;

                    imagePath = imagePath + @"\";
                    var filePath = @".." + Path.Combine(imagePath, filename);

                    using (var fileStream = new FileStream(fullPath, FileMode.Create))
                    {
                        image.CopyTo(fileStream);
                    }


                    return "Upload Done.";
                }
                else
                {
                    return "Failed.";
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        //[Authorize(Roles = "Vendor,Admin")]
        [HttpGet("{fileName}")]
        public IActionResult Get([FromRoute] string fileName)
        {
            var imagePath = @"wwwroot\Images\";
            var uploadPath = imagePath;

            var filePath = uploadPath + fileName + ".png";
            if (System.IO.File.Exists(filePath))
            {
                byte[] b = System.IO.File.ReadAllBytes(filePath);
                return File(b, "image/png");
            }
            return null;
        }
    }
}
