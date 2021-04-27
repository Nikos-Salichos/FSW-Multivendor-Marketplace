using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class SubCategoryType
    {
        public SubCategoryType()
        {
            SubCategories = new HashSet<SubCategory>();
        }

        public int SubCategoryTypeId { get; set; }
        public string SubCategoryTypeName { get; set; }

        public virtual ICollection<SubCategory> SubCategories { get; set; }
    }
}
