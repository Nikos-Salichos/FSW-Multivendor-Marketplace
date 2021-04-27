using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ProductsByProductId
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Sku { get; set; }
        public int? Rating { get; set; }
        public decimal? Price { get; set; }
        public int? CategoryId { get; set; }
        public string Description { get; set; }
    }
}
