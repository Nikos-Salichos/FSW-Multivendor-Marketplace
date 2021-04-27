using System;
using System.Collections.Generic;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class SubCategoriesByCategoryId
    {
        public int SubCategoryId { get; set; }
        public int SubCategoryTypeId { get; set; }
        public string SubCategoryTypeName { get; set; }
        public int? CategoryId { get; set; }
    }
}
