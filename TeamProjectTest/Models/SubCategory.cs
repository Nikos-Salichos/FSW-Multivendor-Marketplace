using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class SubCategory
    {
        public SubCategory()
        {
            Attributes = new HashSet<Attribute>();
        }

        public int SubCategoryId { get; set; }
        public int? SubCategoryTypeId { get; set; }
        public int? CategoryId { get; set; }

        public virtual Category Category { get; set; }
        public virtual SubCategoryType SubCategoryType { get; set; }
        public virtual ICollection<Attribute> Attributes { get; set; }
    }
}
