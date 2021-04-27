using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class TotalAmount
    {
        public int? OrderCode { get; set; }
        public DateTime? DeliveryDate { get; set; }
        public string DeliveryAddress { get; set; }
        public decimal? TotalAmount1 { get; set; }
        public string UserId { get; set; }
    }
}
