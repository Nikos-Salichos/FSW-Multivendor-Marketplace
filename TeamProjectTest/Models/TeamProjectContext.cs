using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace TeamProjectTest.Models
{
    public partial class TeamProjectContext : DbContext
    {
        public TeamProjectContext()
        {
        }

        public TeamProjectContext(DbContextOptions<TeamProjectContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AspNetRole> AspNetRoles { get; set; }
        public virtual DbSet<AspNetRoleClaim> AspNetRoleClaims { get; set; }
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<AspNetUserClaim> AspNetUserClaims { get; set; }
        public virtual DbSet<AspNetUserLogin> AspNetUserLogins { get; set; }
        public virtual DbSet<AspNetUserRole> AspNetUserRoles { get; set; }
        public virtual DbSet<AspNetUserToken> AspNetUserTokens { get; set; }
        public virtual DbSet<Attribute> Attributes { get; set; }
        public virtual DbSet<CategoriesAll> CategoriesAlls { get; set; }
        public virtual DbSet<CategoriesByCategoryId> CategoriesByCategoryIds { get; set; }
        public virtual DbSet<CategoriesFilter> CategoriesFilters { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<CountProductsDeliverDateVendor> CountProductsDeliverDateVendors { get; set; }
        public virtual DbSet<CountProductsDeliveryDateAdmin> CountProductsDeliveryDateAdmins { get; set; }
        public virtual DbSet<CountProductsOrderAdmin> CountProductsOrderAdmins { get; set; }
        public virtual DbSet<CountProductsOrderVendor> CountProductsOrderVendors { get; set; }
        public virtual DbSet<OrderInfo> OrderInfos { get; set; }
        public virtual DbSet<Product> Products { get; set; }
        public virtual DbSet<ProductAttribute> ProductAttributes { get; set; }
        public virtual DbSet<ProductsAll> ProductsAlls { get; set; }
        public virtual DbSet<ProductsAttributesCategory> ProductsAttributesCategories { get; set; }
        public virtual DbSet<ProductsByCategoryId> ProductsByCategoryIds { get; set; }
        public virtual DbSet<ProductsByProductId> ProductsByProductIds { get; set; }
        public virtual DbSet<ProductsByVendorId> ProductsByVendorIds { get; set; }
        public virtual DbSet<ProductsTop> ProductsTops { get; set; }
        public virtual DbSet<ShoppingCart> ShoppingCarts { get; set; }
        public virtual DbSet<ShoppingCartState> ShoppingCartStates { get; set; }
        public virtual DbSet<ShoppingItem> ShoppingItems { get; set; }
        public virtual DbSet<ShoppingItemsByCartId> ShoppingItemsByCartIds { get; set; }
        public virtual DbSet<SubCategoriesByCategoryId> SubCategoriesByCategoryIds { get; set; }
        public virtual DbSet<SubCategory> SubCategories { get; set; }
        public virtual DbSet<SubCategoryType> SubCategoryTypes { get; set; }
        public virtual DbSet<TotalAmount> TotalAmounts { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;Database=TeamProject;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

            modelBuilder.Entity<AspNetRole>(entity =>
            {
                entity.HasIndex(e => e.NormalizedName, "RoleNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedName] IS NOT NULL)");

                entity.Property(e => e.Name).HasMaxLength(256);

                entity.Property(e => e.NormalizedName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetRoleClaim>(entity =>
            {
                entity.HasIndex(e => e.RoleId, "IX_AspNetRoleClaims_RoleId");

                entity.Property(e => e.RoleId).IsRequired();

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetRoleClaims)
                    .HasForeignKey(d => d.RoleId);
            });

            modelBuilder.Entity<AspNetUser>(entity =>
            {
                entity.HasIndex(e => e.NormalizedEmail, "EmailIndex");

                entity.HasIndex(e => e.Email, "IX_AspNetUsers")
                    .IsUnique();

                entity.HasIndex(e => e.NormalizedUserName, "UserNameIndex")
                    .IsUnique()
                    .HasFilter("([NormalizedUserName] IS NOT NULL)");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.NormalizedEmail).HasMaxLength(256);

                entity.Property(e => e.NormalizedUserName).HasMaxLength(256);

                entity.Property(e => e.UserName).HasMaxLength(256);
            });

            modelBuilder.Entity<AspNetUserClaim>(entity =>
            {
                entity.HasIndex(e => e.UserId, "IX_AspNetUserClaims_UserId");

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserClaims)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserLogin>(entity =>
            {
                entity.HasKey(e => new { e.LoginProvider, e.ProviderKey });

                entity.HasIndex(e => e.UserId, "IX_AspNetUserLogins_UserId");

                entity.Property(e => e.UserId).IsRequired();

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserLogins)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserRole>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.RoleId });

                entity.HasIndex(e => e.RoleId, "IX_AspNetUserRoles_RoleId");

                entity.HasOne(d => d.Role)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.RoleId);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserRoles)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<AspNetUserToken>(entity =>
            {
                entity.HasKey(e => new { e.UserId, e.LoginProvider, e.Name });

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AspNetUserTokens)
                    .HasForeignKey(d => d.UserId);
            });

            modelBuilder.Entity<Attribute>(entity =>
            {
                entity.HasIndex(e => new { e.AttributeValue, e.SubCategoryId }, "IX_Attributes")
                    .IsUnique();

                entity.Property(e => e.AttributeValue).HasMaxLength(50);

                entity.HasOne(d => d.SubCategory)
                    .WithMany(p => p.Attributes)
                    .HasForeignKey(d => d.SubCategoryId)
                    .HasConstraintName("FK_Attributes_SubCategories");
            });

            modelBuilder.Entity<CategoriesAll>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CategoriesAll");

                entity.Property(e => e.CategoryId).ValueGeneratedOnAdd();

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<CategoriesByCategoryId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CategoriesByCategoryId");

                entity.Property(e => e.CategoryId).ValueGeneratedOnAdd();

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<CategoriesFilter>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CategoriesFilter");

                entity.Property(e => e.AttributeValue).HasMaxLength(50);

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.SubCategoryTypeName).HasMaxLength(50);
            });

            modelBuilder.Entity<Category>(entity =>
            {
                entity.HasIndex(e => e.CategoryName, "IX_Categories")
                    .IsUnique();

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<CountProductsDeliverDateVendor>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CountProductsDeliverDateVendor");

                entity.Property(e => e.DeliveryDate).HasColumnType("smalldatetime");

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<CountProductsDeliveryDateAdmin>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CountProductsDeliveryDateAdmin");

                entity.Property(e => e.DeliveryDate).HasColumnType("smalldatetime");
            });

            modelBuilder.Entity<CountProductsOrderAdmin>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CountProductsOrderAdmin");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<CountProductsOrderVendor>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("CountProductsOrderVendor");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<OrderInfo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("OrderInfo");

                entity.Property(e => e.DeliveryAddress).HasMaxLength(50);

                entity.Property(e => e.DeliveryDate).HasColumnType("smalldatetime");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.TotalAmount).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.UserId).HasMaxLength(450);

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<Product>(entity =>
            {
                entity.HasIndex(e => e.Sku, "IX_Products")
                    .IsUnique();

                entity.HasIndex(e => e.ProductName, "IX_Products_1")
                    .IsUnique();

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");

                entity.Property(e => e.VendorId).HasMaxLength(450);

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.CategoryId)
                    .HasConstraintName("FK_Products_Categories");

                entity.HasOne(d => d.Vendor)
                    .WithMany(p => p.Products)
                    .HasForeignKey(d => d.VendorId)
                    .HasConstraintName("FK_Products_AspNetUsers");
            });

            modelBuilder.Entity<ProductAttribute>(entity =>
            {
                entity.HasIndex(e => new { e.ProductId, e.AttributeId }, "IX_ProductAttributes")
                    .IsUnique();

                entity.HasOne(d => d.Attribute)
                    .WithMany(p => p.ProductAttributes)
                    .HasForeignKey(d => d.AttributeId)
                    .HasConstraintName("FK_ProductAttributes_Attributes");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ProductAttributes)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_ProductAttributes_Products");
            });

            modelBuilder.Entity<ProductsAll>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsAll");

                entity.Property(e => e.Email).HasMaxLength(256);

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");

                entity.Property(e => e.UserName).HasMaxLength(256);
            });

            modelBuilder.Entity<ProductsAttributesCategory>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsAttributesCategory");

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");
            });

            modelBuilder.Entity<ProductsByCategoryId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsByCategoryId");

                entity.Property(e => e.CategoryName)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.ProductName).HasMaxLength(50);
            });

            modelBuilder.Entity<ProductsByProductId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsByProductId");

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductId).ValueGeneratedOnAdd();

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");
            });

            modelBuilder.Entity<ProductsByVendorId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsByVendorId");

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductId).ValueGeneratedOnAdd();

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<ProductsTop>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ProductsTop");

                entity.Property(e => e.Price).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ProductId).ValueGeneratedOnAdd();

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.Sku)
                    .HasMaxLength(50)
                    .HasColumnName("SKU");

                entity.Property(e => e.VendorId).HasMaxLength(450);
            });

            modelBuilder.Entity<ShoppingCart>(entity =>
            {
                entity.HasIndex(e => new { e.UserId, e.OrderCode, e.ShoppingCartStateId }, "UC_UserIdInitialUniqueCart")
                    .IsUnique();

                entity.Property(e => e.DeliveryAddress).HasMaxLength(50);

                entity.Property(e => e.DeliveryDate).HasColumnType("smalldatetime");

                entity.Property(e => e.ShoppingCartStateId).HasDefaultValueSql("((1))");

                entity.Property(e => e.TotalAmount).HasColumnType("decimal(18, 0)");

                entity.HasOne(d => d.ShoppingCartState)
                    .WithMany(p => p.ShoppingCarts)
                    .HasForeignKey(d => d.ShoppingCartStateId)
                    .HasConstraintName("FK_ShoppingCarts_ShoppingCartStatuses");

                entity.HasOne(d => d.User)
                    .WithMany(p => p.ShoppingCarts)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_ShoppingCarts_AspNetUsers1");
            });

            modelBuilder.Entity<ShoppingCartState>(entity =>
            {
                entity.HasKey(e => e.ShoppingCartStatesId)
                    .HasName("PK_ShoppingCartStatuses");

                entity.Property(e => e.ShoppingCartStatesId).ValueGeneratedNever();

                entity.Property(e => e.ShoppingCartStatesName)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<ShoppingItem>(entity =>
            {
                entity.HasIndex(e => new { e.ShoppingCartId, e.ProductId }, "IX_ShoppingItems")
                    .IsUnique();

                entity.Property(e => e.Amount).HasColumnType("decimal(18, 0)");

                entity.HasOne(d => d.Product)
                    .WithMany(p => p.ShoppingItems)
                    .HasForeignKey(d => d.ProductId)
                    .HasConstraintName("FK_ShoppingItems_Products");

                entity.HasOne(d => d.ShoppingCart)
                    .WithMany(p => p.ShoppingItems)
                    .HasForeignKey(d => d.ShoppingCartId)
                    .HasConstraintName("FK_ShoppingItems_ShoppingCarts");
            });

            modelBuilder.Entity<ShoppingItemsByCartId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("ShoppingItemsByCartId");

                entity.Property(e => e.Amount).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.ProductName).HasMaxLength(50);

                entity.Property(e => e.UserId).HasMaxLength(450);
            });

            modelBuilder.Entity<SubCategoriesByCategoryId>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("SubCategoriesByCategoryId");

                entity.Property(e => e.SubCategoryTypeName).HasMaxLength(50);
            });

            modelBuilder.Entity<SubCategory>(entity =>
            {
                entity.HasIndex(e => new { e.SubCategoryTypeId, e.CategoryId }, "IX_SubCategories")
                    .IsUnique();

                entity.HasOne(d => d.Category)
                    .WithMany(p => p.SubCategories)
                    .HasForeignKey(d => d.CategoryId)
                    .HasConstraintName("FK_SubCategories_Categories1");

                entity.HasOne(d => d.SubCategoryType)
                    .WithMany(p => p.SubCategories)
                    .HasForeignKey(d => d.SubCategoryTypeId)
                    .HasConstraintName("FK_SubCategories_SubCategoryTypes");
            });

            modelBuilder.Entity<SubCategoryType>(entity =>
            {
                entity.HasIndex(e => e.SubCategoryTypeName, "IX_SubCategoryTypes")
                    .IsUnique();

                entity.Property(e => e.SubCategoryTypeName).HasMaxLength(50);
            });

            modelBuilder.Entity<TotalAmount>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("TotalAmount");

                entity.Property(e => e.DeliveryAddress).HasMaxLength(50);

                entity.Property(e => e.DeliveryDate).HasColumnType("smalldatetime");

                entity.Property(e => e.TotalAmount1)
                    .HasColumnType("decimal(38, 0)")
                    .HasColumnName("TotalAmount");

                entity.Property(e => e.UserId).HasMaxLength(450);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
