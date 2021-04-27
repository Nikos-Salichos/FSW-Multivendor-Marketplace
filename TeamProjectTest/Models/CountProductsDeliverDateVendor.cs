using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class CountProductsDeliverDateVendor
    {
        public DateTime? DeliveryDate { get; set; }
        public string VendorId { get; set; }
        public int? ShoppingCartStateId { get; set; }
        public int? CountDates { get; set; }
    }
}
