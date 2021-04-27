using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ShoppingCart
    {
        public ShoppingCart()
        {
            ShoppingItems = new HashSet<ShoppingItem>();
        }

        public int ShoppingCartId { get; set; }
        public string UserId { get; set; }
        public int? ShoppingCartStateId { get; set; }
        public int? OrderCode { get; set; }
        public DateTime? DeliveryDate { get; set; }
        public decimal? TotalAmount { get; set; }
        public double? Longitude { get; set; }
        public double? Latitude { get; set; }
        public string DeliveryAddress { get; set; }

        public virtual ShoppingCartState ShoppingCartState { get; set; }
        public virtual AspNetUser User { get; set; }
        public virtual ICollection<ShoppingItem> ShoppingItems { get; set; }
    }
}
