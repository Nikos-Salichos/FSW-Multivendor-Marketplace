using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ProductsAll
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Sku { get; set; }
        public decimal? Price { get; set; }
        public int? Rating { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
    }
}
