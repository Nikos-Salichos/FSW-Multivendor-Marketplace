using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ShoppingItemsByCartId
    {
        public int? ProductId { get; set; }
        public int? Quantity { get; set; }
        public decimal? Amount { get; set; }
        public int? ShoppingCartId { get; set; }
        public int ShoppingItemId { get; set; }
        public string UserId { get; set; }
        public string ProductName { get; set; }
        public int? OrderCode { get; set; }
        public int? ShoppingCartStateId { get; set; }
    }
}
