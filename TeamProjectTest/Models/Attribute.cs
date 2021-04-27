using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class Attribute
    {
        public Attribute()
        {
            ProductAttributes = new HashSet<ProductAttribute>();
        }

        public int AttributeId { get; set; }
        public string AttributeValue { get; set; }
        public int? SubCategoryId { get; set; }

        public virtual SubCategory SubCategory { get; set; }
        public virtual ICollection<ProductAttribute> ProductAttributes { get; set; }
    }
}
