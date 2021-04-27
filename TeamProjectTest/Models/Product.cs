using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class Product
    {
        public Product()
        {
            ProductAttributes = new HashSet<ProductAttribute>();
            ShoppingItems = new HashSet<ShoppingItem>();
        }

        public int ProductId { get; set; }
        public string VendorId { get; set; }
        public string ProductName { get; set; }
        public string Sku { get; set; }
        public decimal? Price { get; set; }
        public int? ProductStatus { get; set; }
        public int? Rating { get; set; }
        public int? CategoryId { get; set; }
        public string Description { get; set; }

        [NotMapped]
        public IFormFile Image { get; set; }
        public virtual Category Category { get; set; }
        public virtual AspNetUser Vendor { get; set; }
        public virtual ICollection<ProductAttribute> ProductAttributes { get; set; }
        public virtual ICollection<ShoppingItem> ShoppingItems { get; set; }
    }
}
