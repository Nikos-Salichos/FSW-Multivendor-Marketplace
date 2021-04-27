using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ShoppingCartState
    {
        public ShoppingCartState()
        {
            ShoppingCarts = new HashSet<ShoppingCart>();
        }

        public int ShoppingCartStatesId { get; set; }
        public string ShoppingCartStatesName { get; set; }

        public virtual ICollection<ShoppingCart> ShoppingCarts { get; set; }
    }
}
