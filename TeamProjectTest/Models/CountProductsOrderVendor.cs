using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class CountProductsOrderVendor
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string VendorId { get; set; }
        public int? ShoppingCartStateId { get; set; }
        public int? SumOfProduct { get; set; }
    }
}
