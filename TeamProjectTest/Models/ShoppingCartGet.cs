using System;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ShoppingCartGet
    {
        public int ShoppingCartId { get; set; }
        public string UserId { get; set; }
        public int? ShoppingCartStateId { get; set; }
        public int? OrderCode { get; set; }
        public DateTime? DeliveryDate { get; set; }
        public decimal? TotalAmount { get; set; }
        public string UserName { get; set; }
    }
}
