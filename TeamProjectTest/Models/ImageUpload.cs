using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace TeamProjectTest.Models
{
    public class ImageUpload
    {
        [Required(ErrorMessage = "Image upload is required")]
        public IFormFile Image { get; set; }

        [Required(ErrorMessage = "Name is required")]
        public string Name { get; set; }
    }
}
