using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class ProductAttribute
    {
        public int ProductAttributeId { get; set; }
        public int? ProductId { get; set; }
        public int? AttributeId { get; set; }

        public virtual Attribute Attribute { get; set; }
        public virtual Product Product { get; set; }
    }
}
