using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class OrderInfo
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal? Price { get; set; }
        public string VendorId { get; set; }
        public int ShoppingCartId { get; set; }
        public decimal? TotalAmount { get; set; }
        public int? OrderCode { get; set; }
        public double? Latitude { get; set; }
        public double? Longitude { get; set; }
        public string UserId { get; set; }
        public string Email { get; set; }
        public string DeliveryAddress { get; set; }
        public DateTime? DeliveryDate { get; set; }
    }
}
