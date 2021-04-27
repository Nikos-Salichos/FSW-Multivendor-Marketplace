using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ProductsTop
    {
        public int ProductId { get; set; }
        public string VendorId { get; set; }
        public string ProductName { get; set; }
        public string Sku { get; set; }
        public decimal? Price { get; set; }
        public int? ProductStatus { get; set; }
        public int? Rating { get; set; }
        public int? CategoryId { get; set; }
        public string Description { get; set; }
    }
}
