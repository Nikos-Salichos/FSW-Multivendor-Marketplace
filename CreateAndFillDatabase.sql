USE [master]
GO
/****** Object:  Database [TeamProject]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE DATABASE [TeamProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TeamProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TeamProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TeamProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TeamProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TeamProject] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TeamProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TeamProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TeamProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TeamProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TeamProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TeamProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [TeamProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TeamProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TeamProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TeamProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TeamProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TeamProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TeamProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TeamProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TeamProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TeamProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TeamProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TeamProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TeamProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TeamProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TeamProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TeamProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TeamProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TeamProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TeamProject] SET  MULTI_USER 
GO
ALTER DATABASE [TeamProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TeamProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TeamProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TeamProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TeamProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TeamProject] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TeamProject] SET QUERY_STORE = OFF
GO
USE [TeamProject]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  ColumnMasterKey [CMK_Auto1]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE COLUMN MASTER KEY [CMK_Auto1]
WITH
(
	KEY_STORE_PROVIDER_NAME = N'MSSQL_CERTIFICATE_STORE',
	KEY_PATH = N'CurrentUser/my/7D0C15574EAB1067925404EE04EBDB3A12D7456E'
)
GO
/****** Object:  ColumnMasterKey [CMK_Auto2]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE COLUMN MASTER KEY [CMK_Auto2]
WITH
(
	KEY_STORE_PROVIDER_NAME = N'MSSQL_CERTIFICATE_STORE',
	KEY_PATH = N'CurrentUser/my/7BBB5506978F1564FBD1839FAD2C67EB457D3EE5'
)
GO
/****** Object:  ColumnEncryptionKey [CEK_Auto1]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE COLUMN ENCRYPTION KEY [CEK_Auto1]
WITH VALUES
(
	COLUMN_MASTER_KEY = [CMK_Auto1],
	ALGORITHM = 'RSA_OAEP',
	ENCRYPTED_VALUE = 0x016E000001630075007200720065006E00740075007300650072002F006D0079002F0037006400300063003100350035003700340065006100620031003000360037003900320035003400300034006500650030003400650062006400620033006100310032006400370034003500360065008D9438E0FB8F52B40622CB697166DE69444DC3ADF497ECB36AD9ACCFB2B0C686BAB8195D4F05A9678922C4D726FFCAE1F7DAEBD9F22A57C7271986D87B62DA5B176B7431096525BD175F65F34E5871E0629AEBDC6B4A8C2505567228369EE2173A20674A1217910FED1C9D49B9A67A7CEE6C72E1C7F9A31CD89363DB1A6AAD41412461FBADF253EA3A4954486A97E1534DEC9D0CC1348FD0516F5655D3187028336C44E642663640CA558801A49AB1B93AE02B95EB3E11D3045D367267661B3E53758E698353E792368897D15C6327EC53A10325B6479E0C30844B83FB6B0234B41B229426A54DF043D57D853A5BCD2E920F674CDDE4E0F86413F17A0B2F0106926BAF7EA2CB46630571C33DB6C52DF9834C4E2CBDB697379F6AB97AC51F59AE2453114424A39DE147D72C88FFAA53A9ACA7CF79DAC5ECE3D913FF0834F054784C80706A35532ADB3BC90EEAA2A29C263945581E9D70CBC97F71BDA01F958E04FA791A3959F447A878FA95917EFB25580296D95FE8C7069A01E10695A5C6353BBEE9BCD325AF7E56B9CD1FFD348E2B786FF8B51A711110C8005187D18B476E12320ADA8BECC7315ABA63A8795EB58948EF5D675E474C0EA1DC6845EE6342975BE34AA002779CD06648266C6E36458C32141F18D9F0C20850C2432359E35D501B3005698DD944AE7F482E4929D0492D52C38CE2D257E87DB6932490EC10D77A3C
)
GO
/****** Object:  ColumnEncryptionKey [CEK_Auto2]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE COLUMN ENCRYPTION KEY [CEK_Auto2]
WITH VALUES
(
	COLUMN_MASTER_KEY = [CMK_Auto2],
	ALGORITHM = 'RSA_OAEP',
	ENCRYPTED_VALUE = 0x016E000001630075007200720065006E00740075007300650072002F006D0079002F003700620062006200350035003000360039003700380066003100350036003400660062006400310038003300390066006100640032006300360037006500620034003500370064003300650065003500EE1FF0FF348EB53925FDD69B6BD434AFDA2079F8534C9BECE3269E7CA83D432548E00894847C3CEE583F0C4C2E3F4D24FBFABC15B35EDB5623A930182A3C0B672D21C5ED33D8518C7C3743D01DAC341906F4A5155EFF093FCFA021DC1197E0BDB6375B28F6B6AD06051278DD551D0D626B404CE01B8975E7EC8DC5D1A16177B2F8CBCAD67FEF50FB73AF5175985A368BC79E38400878E96903E79BD73A67DFDA19002F2F8E395B0178F5B6685FAD2C96FFF904B76DAF7A421583BF67D2D818CEAEAB76FA94F627DC9B73F1D363A925385DC5002AD17B52821E06A4AE2620F31DCDF935CFFD2D530AEA16BAF1A1463BB6406A7F51CBA0EBB7F7ABE614B3F45AA7BBCFDE49176E3927DD0764549066B9251EFB35DA82642FBEE5E10A9C1DB784365A2F305711854EA9EEE844EFF9396890B32C0F7868BB17D840FD41E6E6123AF0BFF51C944577E1E6D8E81D2742989FB30EAB976B68ECDF341431DBF20D9CBE5EC17BE3B63C5439BEC8AB660279D52A91A3469BDAFFB67617CF17BBB40CA39321E90977D3068862DE0B6658A6A1DFEBCB8B0C20478FC95CA49982FD9FA5D1D7E2DC708C641B1FA9E88E4A9968A1FD31CE008DED8E928F99469B0EF504D0F592A897D7AC8868D57F911BCCBA4A1BB3F319040C7249AA986116E4EC678B57216C7452804D009C3770530F14A50F19F038C38406F792C6176E54B126B7588A757055
)
GO
/****** Object:  Table [dbo].[ShoppingItems]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingItems](
	[ShoppingItemId] [int] IDENTITY(1,1) NOT NULL,
	[ShoppingCartId] [int] NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[Amount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ShoppingItems_1] PRIMARY KEY CLUSTERED 
(
	[ShoppingItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[VendorId] [nvarchar](450) NULL,
	[ProductName] [nvarchar](50) NULL,
	[SKU] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[ProductStatus] [int] NULL,
	[Rating] [int] NULL,
	[CategoryId] [int] NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[ShoppingCartItems]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ShoppingCartItems] AS
SELECT T1.ShoppingCartId, T1.ProductId,T2.ProductName,T1.Quantity,T1.Amount,T1.Amount*T1.Quantity ItemTotal
FROM ShoppingItems T1
INNER JOIN Products T2 ON T1.ProductId=T2.ProductId
GO
/****** Object:  Table [dbo].[ShoppingCarts]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCarts](
	[ShoppingCartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NULL,
	[ShoppingCartStateId] [int] NULL,
	[OrderCode] [int] NULL,
	[DeliveryDate] [smalldatetime] NULL,
	[TotalAmount] [decimal](18, 0) NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[DeliveryAddress] [nvarchar](50) NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ShoppingCartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TotalAmount]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TotalAmount]
AS SELECT dbo.ShoppingCarts.OrderCode, dbo.ShoppingCarts.DeliveryDate,dbo.ShoppingCarts.DeliveryAddress, SUM(dbo.ShoppingItems.Amount * dbo.ShoppingItems.Quantity) AS TotalAmount, dbo.ShoppingCarts.UserId
FROM     dbo.ShoppingCarts INNER JOIN
                  dbo.ShoppingItems ON dbo.ShoppingCarts.ShoppingCartId = dbo.ShoppingItems.ShoppingCartId AND dbo.ShoppingCarts.ShoppingCartStateId = 1 AND dbo.ShoppingCarts.OrderCode = 0
GROUP BY dbo.ShoppingCarts.OrderCode, dbo.ShoppingCarts.DeliveryDate, dbo.ShoppingCarts.UserId,dbo.ShoppingCarts.DeliveryAddress
GO
/****** Object:  View [dbo].[CountProductsOrderVendor]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CountProductsOrderVendor]
AS SELECT Products.ProductId ,Products.ProductName ,Products.VendorId,ShoppingCarts.ShoppingCartStateId,  COUNT(ShoppingItems.ProductId) as SumOfProduct 
FROM ShoppingCarts
INNER JOIN ShoppingItems
ON ShoppingCarts.ShoppingCartId = ShoppingItems.ShoppingCartId
INNER JOIN Products
ON ShoppingItems.ProductId = Products.ProductId
--WHERE ShoppingCarts.ShoppingCartStateId = 2
--AND VendorId = '94cbf41e-c55f-4623-b9e9-ba0b43b679bd'
GROUP BY Products.ProductId, Products.ProductName,Products.VendorId,ShoppingCarts.ShoppingCartStateId, ShoppingItems.ProductId
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[OrderInfo]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[OrderInfo]
as SELECT dbo.Products.ProductId, dbo.Products.ProductName, dbo.Products.Price,Products.VendorId, dbo.ShoppingCarts.ShoppingCartId, dbo.ShoppingCarts.TotalAmount, dbo.ShoppingCarts.OrderCode, dbo.ShoppingCarts.Latitude, dbo.ShoppingCarts.Longitude, 
ShoppingCarts.UserId,AspNetUsers.Email,ShoppingCarts.DeliveryAddress,ShoppingCarts.DeliveryDate
FROM     dbo.ShoppingCarts INNER JOIN
dbo.ShoppingItems ON dbo.ShoppingCarts.ShoppingCartId = dbo.ShoppingItems.ShoppingCartId INNER JOIN
dbo.Products ON dbo.ShoppingItems.ProductId = dbo.Products.ProductId
INNER JOIN AspNetUsers ON AspNetUsers.Id = ShoppingCarts.UserId
WHERE  (dbo.ShoppingCarts.ShoppingCartStateId = 2)
GO
/****** Object:  View [dbo].[CountProductsOrderAdmin]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CountProductsOrderAdmin]
AS SELECT Products.ProductId ,Products.ProductName,Products.VendorId, ShoppingCarts.ShoppingCartStateId,COUNT(ShoppingItems.ProductId) as SumOfProduct 
FROM ShoppingCarts
INNER JOIN ShoppingItems
ON ShoppingCarts.ShoppingCartId = ShoppingItems.ShoppingCartId
INNER JOIN Products
ON ShoppingItems.ProductId = Products.ProductId
--WHERE ShoppingCarts.ShoppingCartStateId = 2
GROUP BY Products.ProductId, Products.ProductName,Products.VendorId,ShoppingCarts.ShoppingCartStateId, ShoppingItems.ProductId
GO
/****** Object:  View [dbo].[CountProductsDeliveryDateAdmin]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CountProductsDeliveryDateAdmin]
AS SELECT ShoppingCarts.DeliveryDate,ShoppingCarts.ShoppingCartStateId ,Count(ShoppingCarts.DeliveryDate) CountDates FROM ShoppingCarts
INNER JOIN ShoppingItems
ON ShoppingCarts.ShoppingCartId = ShoppingItems.ShoppingCartId
--WHERE ShoppingCarts.ShoppingCartStateId = 2
GROUP BY ShoppingCarts.DeliveryDate,ShoppingCarts.ShoppingCartStateId
--ORDER BY ShoppingCarts.DeliveryDate ASC;
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attributes]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attributes](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[AttributeValue] [nvarchar](50) NULL,
	[SubCategoryId] [int] NULL,
 CONSTRAINT [PK_Attributes] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryTypeId] [int] NULL,
	[CategoryId] [int] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategoryTypes]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategoryTypes](
	[SubCategoryTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SubCategoryTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubCategoryTypes] PRIMARY KEY CLUSTERED 
(
	[SubCategoryTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductAttributes]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributes](
	[ProductAttributeId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[AttributeId] [int] NULL,
 CONSTRAINT [PK_ProductAttributes] PRIMARY KEY CLUSTERED 
(
	[ProductAttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CategoriesFilter]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CategoriesFilter]
AS 
SELECT Categories.CategoryId,Categories.CategoryName,
SubCategoryTypes.SubCategoryTypeId,SubCategoryTypes.SubCategoryTypeName,
Attributes.AttributeId,Attributes.AttributeValue,Products.ProductId,Products.ProductName
FROM Categories
INNER JOIN SubCategories ON Categories.CategoryId=SubCategories.CategoryId
INNER JOIN SubCategoryTypes ON SubCategories.SubCategoryTypeId=SubCategoryTypes.SubCategoryTypeId
INNER JOIN Attributes ON Attributes.SubCategoryId = SubCategories.SubCategoryId
inner join ProductAttributes on ProductAttributes.AttributeId =  Attributes.AttributeId
inner join Products on Products.ProductId =ProductAttributes.ProductId
GO
/****** Object:  View [dbo].[CountProductsDeliverDateVendor]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CountProductsDeliverDateVendor]
AS SELECT ShoppingCarts.DeliveryDate,Products.VendorId,ShoppingCarts.ShoppingCartStateId, Count(ShoppingCarts.DeliveryDate) CountDates FROM ShoppingCarts
INNER JOIN ShoppingItems
ON ShoppingCarts.ShoppingCartId = ShoppingItems.ShoppingCartId
INNER JOIN Products
ON ShoppingItems.ProductId = Products.ProductId
--WHERE ShoppingCarts.ShoppingCartStateId = 2
--AND VendorId = '94cbf41e-c55f-4623-b9e9-ba0b43b679bd'
GROUP BY ShoppingCarts.DeliveryDate, Products.VendorId,ShoppingCarts.ShoppingCartStateId 
--ORDER BY ShoppingCarts.DeliveryDate ASC;
GO
/****** Object:  View [dbo].[SubCategoriesByCategoryId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SubCategoriesByCategoryId]
AS SELECT SubCategories.SubCategoryId,SubCategoryTypes.SubCategoryTypeId,SubCategoryTypes.SubCategoryTypeName , SubCategories.CategoryId
FROM SubCategories
INNER JOIN SubCategoryTypes ON SubCategoryTypes.SubCategoryTypeId = SubCategories.SubCategoryTypeId
GO
/****** Object:  View [dbo].[ProductsAll]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ProductsAll]
AS SELECT p.ProductId,p.ProductName,p.SKU,p.Price,p.Rating,a.UserName,a.Email
FROM Products p
INNER JOIN AspNetUsers a on a.Id = p.VendorId
GO
/****** Object:  View [dbo].[ProductsByProductId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*Product By productID
WHERE p.ProductStatus=1 AND p.ProductId = 3*/
CREATE VIEW [dbo].[ProductsByProductId]
AS
SELECT        ProductId, ProductName, SKU, Rating, Price, CategoryId, Description
FROM            dbo.Products AS p
GO
/****** Object:  View [dbo].[ProductsByVendorId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Product by vendorID
CREATE VIEW [dbo].[ProductsByVendorId]
AS SELECT p.* 
FROM Products p
GO
/****** Object:  View [dbo].[ShoppingItemsByCartId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ShoppingItemsByCartId]
AS SELECT dbo.ShoppingItems.ProductId, dbo.ShoppingItems.Quantity, dbo.ShoppingItems.Amount, dbo.ShoppingItems.ShoppingCartId, dbo.ShoppingItems.ShoppingItemId, dbo.ShoppingCarts.UserId, dbo.Products.ProductName,
dbo.ShoppingCarts.OrderCode,dbo.ShoppingCarts.ShoppingCartStateId
FROM     dbo.ShoppingItems INNER JOIN
dbo.ShoppingCarts ON dbo.ShoppingItems.ShoppingCartId = dbo.ShoppingCarts.ShoppingCartId INNER JOIN
dbo.Products ON dbo.Products.ProductId = dbo.ShoppingItems.ProductId
where dbo.ShoppingCarts.ShoppingCartStateId = 1
and dbo.ShoppingCarts.OrderCode =0
GO
/****** Object:  View [dbo].[ProductsByCategoryId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Product by categoryID
CREATE VIEW [dbo].[ProductsByCategoryId]
AS SELECT p.ProductId,p.ProductName,c.CategoryId,c.CategoryName
FROM Products p, ProductAttributes pa,Attributes a,SubCategories sc,SubCategoryTypes sct,
Categories c
WHERE p.ProductId=pa.ProductId
AND pa.AttributeId=a.AttributeId
and a.SubCategoryId = SC.SubCategoryId
AND sc.CategoryId=c.CategoryId
AND sc.SubCategoryTypeId=sct.SubCategoryTypeId;
GO
/****** Object:  View [dbo].[CategoriesAll]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CategoriesAll]
AS SELECT Categories.* FROM Categories
GO
/****** Object:  View [dbo].[CategoriesByCategoryId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[CategoriesByCategoryId]
AS SELECT Categories.* FROM Categories 
GO
/****** Object:  View [dbo].[ProductsTop]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--Get TOP Products 
CREATE VIEW [dbo].[ProductsTop]
AS SELECT TOP 4 * FROM Products
--WHERE Price > 500;
GO
/****** Object:  View [dbo].[ProductsAttributesCategory]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[ProductsAttributesCategory]
AS Select  Distinct Products.ProductId,Products.ProductName,Products.Price,Products.SKU,Categories.CategoryId,Attributes.AttributeId
from products
inner join ProductAttributes on Products.ProductId = ProductAttributes.ProductId
inner join Attributes on Attributes.AttributeId = ProductAttributes.AttributeId
inner join SubCategories on SubCategories.SubCategoryId = Attributes.SubCategoryId
inner join Categories on Categories.CategoryId = SubCategories.CategoryId
inner join SubCategoryTypes on SubCategoryTypes.SubCategoryTypeId = SubCategories.SubCategoryTypeId
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingCartStates]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingCartStates](
	[ShoppingCartStatesId] [int] NOT NULL,
	[ShoppingCartStatesName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ShoppingCartStatuses] PRIMARY KEY CLUSTERED 
(
	[ShoppingCartStatesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210314225607_Initial', N'5.0.4')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210315104703_AddVendorRole', N'5.0.4')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'48bf72dd-fd7c-4c65-a112-991c0d2afef0', N'User', N'USER', N'1fb29822-e7ed-4118-86d5-b86b95a4a1c8')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'981c1408-3219-4170-ae3b-14ed25baa3eb', N'Vendor', N'VENDOR', N'b4bda863-1631-47ca-af4c-760ff4a79e53')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'f8566f70-77a5-48e3-a6ec-e3a321b2fa4a', N'Admin', N'ADMIN', N'b443f731-c805-4afe-8b6a-b3984d35eba0')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'010b4892-b53a-47f3-bad5-189f1908f48a', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'320a4550-d78e-4f2b-9ae0-1344c541e774', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'50004655-ccf3-4f08-97f0-1c1c2d4e818a', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5cc8521f-6827-4637-b4c6-167b57fc90c9', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'637d3e99-a20f-499f-a930-667c63da9871', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ece4de5-b022-4837-825a-a4953d9a0b23', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'70118d6b-e200-425e-b6b2-00f42a692531', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7af2ef04-b7d0-4f84-9829-fa3d5eb7589a', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'84e0d45e-9774-4915-b4ad-9e875b290fa5', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9e90ff5e-f072-4bb7-a53a-bee7e45c290b', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cd96561d-c6c5-4184-af2f-d26b3b0e36a7', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd29bfc22-18ae-4e29-a97e-954a5c1e1594', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eb4d9565-d551-42a3-ac31-444ffa041a36', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f2efffc7-b237-45ef-8393-934879292b85', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'fd7386f9-e8d5-43ca-b054-7555e7809994', N'48bf72dd-fd7c-4c65-a112-991c0d2afef0')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'352da168-e62b-4f98-9fad-c3b280370565', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6ee0de01-d541-4567-be52-f00341de3b67', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bb0719fa-50f3-4bf1-88ca-6f5ba1538528', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ed1d2689-fb8a-492a-acf3-aba87183d903', N'981c1408-3219-4170-ae3b-14ed25baa3eb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd10f694b-f750-437f-8ebd-a504c1a7da72', N'f8566f70-77a5-48e3-a6ec-e3a321b2fa4a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'010b4892-b53a-47f3-bad5-189f1908f48a', N'EktorasGkatsos', N'EKTORASGKATSOS', N'ektoras@ektoras.com', N'EKTORAS@EKTORAS.COM', 0, N'AQAAAAEAACcQAAAAELGbmthl3Lc4TWzysD4/YT3bnkbNKdCMjxw3PH4HyhxuU/1ru6KeHOBydR2vxGn4hQ==', N'2LR5IWIUF7EEGCHNCPPA4RXZ55M3K2TP', N'455d3de4-c85a-4815-8c0e-913d1e759961', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'320a4550-d78e-4f2b-9ae0-1344c541e774', N'Despoina', N'DESPOINA', N'despoina@example.com', N'DESPOINA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEPUumXAGm52mdkruxpXrmIXa6xW4/4hAprjgmK+3RgBCqKzrwtAy143FwEinsQKqmw==', N'I6DXAZ2MRANM6GM2NMDXM6WVHMRFBHWV', N'8cd5867d-5f71-4e27-a6ce-c8f0f9883698', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'352da168-e62b-4f98-9fad-c3b280370565', N'Public', N'PUBLIC', N'public@testpublic.com', N'PUBLIC@TESTPUBLIC.COM', 0, N'AQAAAAEAACcQAAAAEF6Dt00YOXtYrpQ9+UC30tn6ABW1xReTKar4/JooAXPMK41YLaqYqc1w+GWfuIRlOw==', N'4R5PL7JDHMMAJR6DCXJFVMR6DAV65T7X', N'7d0244e1-fa63-4b66-b4ee-eafb2b4f4608', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'50004655-ccf3-4f08-97f0-1c1c2d4e818a', N'bbb', N'BBB', N'bbb@bb.com', N'BBB@BB.COM', 0, N'AQAAAAEAACcQAAAAEK2MI3owFsFC1qyV6vnic7+/0r1NU0SFGwIILa/DeqZrAS1dJbqswIErUdqJwkeJBA==', N'F4JWTGVYJYAV4B7Z6HCMUUFGZB2TIRJR', N'28d05157-9830-4792-940c-aaa6a4454d3f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5cc8521f-6827-4637-b4c6-167b57fc90c9', N'Angelos', N'ANGELOS', N'hildurb4@bedroomsod.com', N'HILDURB4@BEDROOMSOD.COM', 0, N'AQAAAAEAACcQAAAAEGq0FoISP2pJ7DA6puogog+EoEXxdveCVGcNh7XNKF2DFbIU+0SFKdM/H7Ddt03miw==', N'WUD6K74LQ4Z3PBBHQNTC5ZLLOWGHBYA7', N'35cbb01f-ccee-48b2-8f3d-2901e25d2990', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'637d3e99-a20f-499f-a930-667c63da9871', N'Giannis', N'GIANNIS', N'toyama8102@bombaya.com', N'TOYAMA8102@BOMBAYA.COM', 0, N'AQAAAAEAACcQAAAAEKcAqS0EngKYuXrzskdxFUZVulgfzSaGvaa1RtzMcaj/rEU6kT4REdcHsoKFuTnNwQ==', N'5SZO7QL3L533IG25PRHN67FUHLB3QNBU', N'743d84c0-5ffd-4446-a8ff-85d971b75142', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Epapoutsia', N'EPAPOUTSIA', N'Epapoutsia@example.com', N'EPAPOUTSIA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAELTG4aD4ZQplmj4FhXGd6+j41qedGNLyTFQLr737oHD6KKDptZSrYU81wTqvqcUxAA==', N'6GRG5DGVVE24F5IYEMDXO2SJS3JTJOIM', N'e9b5bdd0-1ec6-484e-b993-ce40647ba7e1', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ece4de5-b022-4837-825a-a4953d9a0b23', N'NikosTest', N'NIKOSTEST', N'nikostest@example.com', N'NIKOSTEST@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEAVObm34o0whgwXY83S+gaI4Df8cBk9V20iVI2bsVHjxVJfyHzzORNwqsTZVjx+CDw==', N'VIFSU73T5CONZTHK6KGZVGIPLEB5EL65', N'a76b7d3e-5c4d-4dcb-8001-7da3ff8a1af4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6ee0de01-d541-4567-be52-f00341de3b67', N'Ektoras', N'EKTORAS', N'xesap40716@gameqo.com', N'XESAP40716@GAMEQO.COM', 0, N'AQAAAAEAACcQAAAAEJioXcmuj3+sNmS+OkVsDyGBQm7/qS/UkufRBPjk1BFJWH4whdkyQmPyOS025Lkuig==', N'XQND2NULPXF2Y2FLZ356GDFDNZXFJN4C', N'bd5c8134-a17d-4047-afd8-f92051ff68ea', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70118d6b-e200-425e-b6b2-00f42a692531', N'Petros', N'PETROS', N'Petros@me.com', N'PETROS@ME.COM', 0, N'AQAAAAEAACcQAAAAENueZGWViFappzVu3QfmyMax7RNL2MjX03GsDxruHBJFuEZlIBVwlZ4EbujWlJpsNw==', N'SQVLQ5M6I46ZSMF7RQZWUP3RXZ2SYDAN', N'b0942680-c2b4-407e-b5d7-305947eab9f3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70436000-893b-4e41-b786-b37849f5cafc', N'Akis', N'AKIS', N'ak@example.com', N'AK@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEPOQD0PprUfLTLUUC4ZIuzyZfTzofvgjKdvGSHCHYT6hxhTSqYNOrjD9yPe8WlHQTw==', N'GQUJ6Q7URJA3MKNNGPQNU4QZTEKFFNH7', N'f223acd9-bf27-4652-b879-ebd0cc154bd7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7af2ef04-b7d0-4f84-9829-fa3d5eb7589a', N'test123', N'TEST123', N'test123@me.com', N'TEST123@ME.COM', 0, N'AQAAAAEAACcQAAAAECoISn62rXQKxwVDQucDT6PKHFULg1Zuf+gMlv//52rooMX0EMwr+wCeibhKNt903Q==', N'2K4EWBLILCBMXVRGESGF5FFZRMA7JHNS', N'010a4985-3ec6-4599-91e2-909e68350ab5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'84e0d45e-9774-4915-b4ad-9e875b290fa5', N'Lakis', N'LAKIS', N'lakis@example.com', N'LAKIS@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEMEZwnVzUeLql8PpBIkififcYVjifYeZ1PN+D3wzB0OFYK6Fox0+SDcDFGN3c2DFKg==', N'XULTKPNV35E7EY2ILMLPOPXOCBKDFL6E', N'39f117b5-8f7c-45a2-9892-01460ab121ee', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'Orizon', N'ORIZON', N'Orizon@example.com', N'ORIZON@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEBIt5GAvqol9E1NIP83iFxpIvyDLETSILkugyC2xozQfFnwcq/lxyWdRH0Az+o670A==', N'M72UMYTOVEZUXR3PQI4257XS4HPMA6SK', N'f36c3955-0d36-441f-8afe-2bf9bf1e000a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Plaisio', N'PLAISIO', N'plaisio@example.com', N'PLAISIO@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEPmihBWdB6PjOo5WYlXTYF0WKnV8Sk9+AQXBB9Hq4/C9PxHL7aMfCFLcPx6DvE5WoQ==', N'MSMXZ3JCUHBJVUQZTWVE6M4ZESVDPZYB', N'b333852a-805a-4ea3-bbd1-55cb3e25ee46', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9e90ff5e-f072-4bb7-a53a-bee7e45c290b', N'Nikos', N'NIKOS', N'niksal1991@gmail.com', N'NIKSAL1991@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAELRLNwEWY0BkKQ3DOo15y5oBVWvf8TwyAiJlS2dq571v1cnbu0Kwll6+Q68ZKvmvVw==', N'TUKQFXAZTK6WNO3TIXFEPWMXJZUHKZ27', N'0937b19e-97ab-442f-89ae-4319b8923301', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Jumbo', N'JUMBO', N'Jumbo@example.com', N'JUMBO@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEIbodHza9kma3cLi/MCJZsndJ2xpm1U1Vy1vg/GwlP7cAsw/t+U7ltb37x19FjRzrg==', N'2P7IZ4KKZEULP3FPGJ4EEZ7K5KXRZZRN', N'e6644e9d-ac4d-4636-b28e-f6ec2c414984', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bb03531f-bc36-47d1-aa94-5059f2bae8fc', N'Chara', N'CHARA', N'chara@example.com', N'CHARA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEO/oGcIeWWvu57jyulkSNUatCBAiBzX75IH6GfdM1h87MkUSrtaw9Tl7BY5zfGjsyQ==', N'J3XQP7YZ4FIGIH6G7HZ5L6RCMDGKD3GX', N'e19ae211-7704-4d61-987d-333c198fc6ef', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bb0719fa-50f3-4bf1-88ca-6f5ba1538528', N'lala1', N'LALA1', N'lala1@lala.com', N'LALA1@LALA.COM', 0, N'AQAAAAEAACcQAAAAEH2imQObw08KEpnRCfmNDoaVSIt6qV0Ps9434tiqIaZUNfXb+b2q2br8kbtDBbnz3A==', N'QWN6F3YLSATKMAYGU3IZGCPNIMTLPXMR', N'e98a18c3-d129-43cc-8505-7b6f07deeacd', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'cd96561d-c6c5-4184-af2f-d26b3b0e36a7', N'aaaa', N'AAAA', N'aaaa@aaa.com', N'AAAA@AAA.COM', 0, N'AQAAAAEAACcQAAAAEC5JfO4ZSJJ3cybM2fbkeXMq7GApvl3CBtj3MrxbObxAoM7StjzN+rRABF7SJCXwWg==', N'3GH7WONXCIFVKMLVNUIGPN7JHVK3VX55', N'bafdbac8-b5a6-49b2-a267-34b2b503baf0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd10f694b-f750-437f-8ebd-a504c1a7da72', N'Mpampis', N'MPAMPIS', N'mpampis@example.com', N'MPAMPIS@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEBG6+1XsdEYiZnZQ6GbSqVTu4/SbvhvLqkYtLG+OU34hbKqNQ9yE/FyJaBMNWLRCFw==', N'5QUWUCLYBBZPOMNYVURPZFJYJ4EW6SAV', N'e32a235c-67d3-44c9-b224-6962966b49d7', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd29bfc22-18ae-4e29-a97e-954a5c1e1594', N'Alkis', N'ALKIS', N'alkis@example.com', N'ALKIS@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEJqO1gXzUXJNPtCkUzu5VeyVhSV5tsEDW6ksNN8Etg2DV6d1FBe/mb/FdxLvcbPo1Q==', N'SUJYSOTQYQDIBI47DC4RCBY7CZEYVDXT', N'd6b407f6-edfa-47a8-8fb3-b3ef1641d00b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eb4d9565-d551-42a3-ac31-444ffa041a36', N'Petros1', N'PETROS1', N'Petros1@me.com', N'PETROS1@ME.COM', 0, N'AQAAAAEAACcQAAAAEFLCY7izns4uQ65Pm7M+BBRPHXFbWukaSCBn80U3DoPYePvp+xqz7qDvqEVQv+Onxg==', N'LYI5JTPI6TV26IKBF5CCASQOQ4ENIJNS', N'b00a6d38-26af-4553-8061-488a4000ce4d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ed1d2689-fb8a-492a-acf3-aba87183d903', N'Aris', N'ARIS', N'a@example.com', N'A@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEC9b9qZZ4L3yGs4xMZILoZp1VJMbNh9TQBhw4xyvzKIzS/dK9ki8BjA0gER6ufeWdQ==', N'6KWOZ5TXY3AEQXLRFDLMSGYZP6SDC2LZ', N'3fde7b47-fe10-4c32-b67f-83fa2a0b50b6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee286fae-b0a7-4bb5-a48b-fe89ab118631', N'Ourania', N'OURANIA', N'Ourania@example.com', N'OURANIA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEAHvHl8Wym3Q7wPw1M1i7aY1o0l7ysyRXDD+m7/xJPFvy9nv/qVwCTmcTl7uj/BnGA==', N'NC3BL2UG7QDMHBYAENRBIIFH7VCEDSWP', N'0736a19b-3c1f-4034-9c89-9d0d4c58459f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f2efffc7-b237-45ef-8393-934879292b85', N'Panos', N'PANOS', N'panos@example.com', N'PANOS@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEOmVvrdPn8RfkYUJ0MKKZO/x4t4fZj+VsQ2auXq7k0pHJyj78NDnTcs8f8i3SBBpcA==', N'SWTNSVTQO3BPW3JMPM5GIW2NOLZSSLN5', N'c3b7bbd3-0081-4e4b-99f0-e7ab3b88d857', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fd7386f9-e8d5-43ca-b054-7555e7809994', N'lala', N'LALA', N'lala@lala.com', N'LALA@LALA.COM', 0, N'AQAAAAEAACcQAAAAEAVZPdap+OQ9liSNGKdQmwi+ChI7/WXLj5GffSEyJtFlWeICyWoBS7EeMNtFR+N6pw==', N'NTQJSIDI7AK62ETC6EVIFTXIPMLPMHLI', N'73bbbff6-545d-4801-9212-fa30c5233026', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Attributes] ON 

INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (83, N'10GB', 16)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (66, N'10GB', 22)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (109, N'12GB', 16)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (35, N'13 inches', 18)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (36, N'14  inches', 18)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (37, N'15 inches', 18)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (99, N'15 inches', 20)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (38, N'16 inches', 18)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (110, N'16GB', 16)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (39, N'17 inches', 18)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (100, N'17 inches', 20)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (113, N'37', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (114, N'38', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (115, N'39', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (76, N'4 ετών+', 14)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (58, N'4,9 inches', 24)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (116, N'40', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (117, N'41', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (118, N'42', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (119, N'43', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (120, N'44', 15)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (60, N'4GB', 22)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (68, N'6 inches', 24)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (9, N'6 ετών+', 14)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (61, N'6,7 inches', 24)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (69, N'6GB', 22)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (67, N'7 inches', 24)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (75, N'8 ετών+', 14)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (82, N'8GB', 16)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (63, N'8GB', 22)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (74, N'Adidas', 29)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (96, N'AMD Ryzen 5', 17)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (97, N'AMD Ryzen 7', 17)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (4, N'Apple', 1)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (108, N'Apple M1', 17)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (98, N'Arctic Hunter', 3)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (28, N'Backpack', 21)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (2, N'Belkin', 3)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (86, N'Bosch', 39)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (5, N'Dell', 1)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (41, N'HDD', 19)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (1, N'Hp', 1)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (107, N'Hp', 3)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (8, N'Huawei', 1)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (78, N'Inox', 38)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (56, N'Intel Core i5', 17)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (73, N'Intel core i7', 17)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (70, N'IPhone', 31)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (55, N'Lenovo', 1)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (7, N'New Balance', 29)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (6, N'Nike', 29)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (40, N'SSD', 19)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (57, N'Xiaomi', 31)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (77, N'Zanussi', 39)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (15, N'Αερίου', 28)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (111, N'Ασημί', 4)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (62, N'Ασημί', 9)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (112, N'Γκρι', 4)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (17, N'Εμαγιέ', 28)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (14, N'Κεραμικές', 28)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (79, N'Λευκό', 38)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (85, N'Μαύρο', 2)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (81, N'Μαύρο', 4)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (59, N'Μαύρο', 9)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (3, N'Μαύρο', 11)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (80, N'Μαύρο', 38)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (11, N'Μπλε', 11)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (64, N'Πράσινο', 9)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (84, N'Τιρκουάζ', 9)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (65, N'Τιρκουάζ', 11)
INSERT [dbo].[Attributes] ([AttributeId], [AttributeValue], [SubCategoryId]) VALUES (29, N'Ώμου/Χειρός', 21)
SET IDENTITY_INSERT [dbo].[Attributes] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Laptop Cases')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Laptops')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Κινητά Τηλέφωνα')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (7, N'Κουζίνες')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (9, N'Παιχνίδια')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (8, N'Παπούτσια')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductAttributes] ON 

INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (4, 3, 1)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (6, 3, 37)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (7, 3, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (8, 3, 41)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (5, 3, 81)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (179, 3, 82)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (175, 3, 96)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (9, 4, 9)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (162, 6, 28)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (13, 6, 85)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (10, 6, 100)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (170, 6, 107)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (168, 7, 29)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (172, 7, 85)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (167, 7, 99)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (169, 7, 107)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (171, 8, 2)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (165, 8, 28)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (14, 8, 85)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (12, 8, 100)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (157, 10, 4)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (15, 10, 35)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (16, 10, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (17, 10, 41)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (180, 10, 83)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (176, 10, 108)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (189, 10, 111)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (159, 12, 8)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (18, 12, 36)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (21, 12, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (178, 12, 96)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (182, 12, 110)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (190, 12, 112)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (158, 13, 5)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (23, 13, 39)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (22, 13, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (191, 13, 81)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (177, 13, 96)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (181, 13, 109)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (24, 20, 38)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (25, 20, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (26, 20, 55)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (27, 20, 56)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (183, 20, 82)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (187, 20, 111)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (28, 21, 57)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (30, 21, 58)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (31, 21, 59)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (32, 21, 60)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (35, 22, 57)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (33, 22, 61)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (34, 22, 62)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (36, 22, 63)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (37, 23, 57)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (40, 23, 61)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (38, 23, 63)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (39, 23, 64)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (44, 25, 57)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (42, 25, 66)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (43, 25, 67)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (41, 25, 84)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (45, 26, 57)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (46, 26, 68)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (47, 26, 69)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (48, 26, 84)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (52, 27, 62)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (51, 27, 66)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (50, 27, 67)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (49, 27, 70)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (54, 28, 62)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (55, 28, 63)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (56, 28, 68)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (53, 28, 70)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (173, 29, 1)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (60, 29, 37)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (185, 29, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (61, 29, 41)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (57, 29, 73)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (58, 29, 81)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (59, 29, 82)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (174, 30, 1)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (63, 30, 37)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (186, 30, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (64, 30, 41)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (91, 30, 73)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (62, 30, 83)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (188, 30, 111)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (66, 31, 3)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (69, 31, 6)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (220, 31, 114)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (219, 31, 115)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (218, 31, 116)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (217, 31, 117)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (216, 31, 118)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (215, 31, 119)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (214, 31, 120)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (67, 32, 6)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (70, 32, 65)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (208, 32, 113)
GO
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (209, 32, 114)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (210, 32, 115)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (213, 32, 116)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (68, 33, 3)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (71, 33, 74)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (201, 33, 116)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (197, 33, 117)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (198, 33, 118)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (199, 33, 119)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (200, 33, 120)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (72, 34, 7)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (73, 34, 11)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (202, 34, 116)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (204, 34, 117)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (205, 34, 118)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (206, 34, 119)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (207, 34, 120)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (75, 35, 7)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (74, 35, 65)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (192, 35, 113)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (193, 35, 114)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (194, 35, 115)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (195, 35, 116)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (196, 35, 117)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (76, 36, 75)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (77, 39, 76)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (78, 40, 76)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (79, 41, 76)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (80, 42, 76)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (81, 43, 9)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (83, 44, 17)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (82, 44, 77)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (84, 44, 78)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (87, 45, 15)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (86, 45, 77)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (85, 45, 79)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (88, 46, 14)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (89, 46, 77)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (90, 46, 80)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (93, 47, 14)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (94, 47, 78)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (92, 47, 86)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (97, 48, 15)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (96, 48, 79)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (95, 48, 86)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (123, 54, 37)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (125, 54, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (124, 54, 55)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (128, 54, 81)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (126, 54, 83)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (127, 54, 96)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (129, 55, 37)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (130, 55, 40)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (133, 55, 55)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (132, 55, 81)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (131, 55, 97)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (184, 55, 110)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (163, 58, 28)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (137, 58, 85)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (136, 58, 98)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (138, 58, 99)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (164, 59, 28)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (140, 59, 85)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (139, 59, 98)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (141, 59, 100)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (233, 75, 59)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (234, 75, 66)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (235, 75, 68)
INSERT [dbo].[ProductAttributes] ([ProductAttributeId], [ProductId], [AttributeId]) VALUES (232, 75, 70)
SET IDENTITY_INSERT [dbo].[ProductAttributes] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (3, N'd10f694b-f750-437f-8ebd-a504c1a7da72', N'HP Laptop g8 2558', N'54fdw45', CAST(500.00 AS Decimal(18, 2)), 1, 4, 1, N'Φορητός υπολογιστής 15 ιντσών με γρήγορη απόδοση και κομψή σχεδίαση με στενά πλαίσια διπλής όψης, οθόνη (IPS) και γρήγορη φόρτιση')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (4, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Lego Super Mario', N'12345', CAST(43.00 AS Decimal(18, 2)), 1, 4, 9, N'Η πίστα «Lego Super Mario» είναι φανταστική και συνδιάζει τη δημιουργικότητα με το παιχνίδι. Διαθέτει αισθητήρες, οθόνες LCD και ηχεία εξασφαλίζοντας μία φοβερή διαδραστική εμπειρία παιχνιδιού.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (6, N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'HP Business Backpack 17.3" Black', N'51234', CAST(28.00 AS Decimal(18, 2)), 1, 4, 2, N'Σακίδιο πλάτης με φερμουάρ που κλειδώνουν, τσέπη που μπλοκάρει το RFID για την ασφάλεια των καρτών σου και ευρύχωρο εσωτερικό μέρος με πολλαπλές θήκες για όλα τα απαραίτητα αξεσουάρ.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (7, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'HP Focus TopLoad 15.6" test', N'3465', CAST(42.00 AS Decimal(18, 2)), 1, 4, 2, N'Τσάντα HP Focus TopLoad για φορητούς υπολογιστές έως και 15.6''''''''. Είναι ελαφριά, με εργονομικό σχεδιασμό και προσφέρει πολλές θήκες αποθήκευσης για εύκολη οργάνωση. Διαθέτει επένδυση στο πλάι και στην πίσω πλευρά, αφαιρούμενο λουρί ώμου κι είναι κατασκευασμένη από ανθεκτικά υλικά για να αντέχει στις γρατζουνιές.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (8, N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'Case Logic VNB Backpack 17.3"', N'0796', CAST(18.00 AS Decimal(18, 2)), 1, 5, 2, N'Σακίδιο πλάτης VNB-217 της Case Logic σχεδιασμένο για φορητούς υπολογιστές έως 17''''''''. Είναι κατασκευασμένο από ανθεκτικό υλικό και προσφέρει πρόσθετες θήκες για την οργάνωση των αντικειμένων σας. Επιπλέον, διαθέτει μαλακά λουριά και μαλακή επένδυση πλάτης για εύκολη και άνετη εφαρμογή.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (10, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Apple 17.3 Macbook air 5952', N'9069', CAST(1131.00 AS Decimal(18, 2)), 1, 5, 1, N'Με τον επεξεργαστή M1 8 πυρήνων που αποδίδει 2,8 φορές μεγαλύτερη επεξεργαστική ισχύ και μέχρι 5 φορές καλύτερα γραφικά από την προηγούμενη γενιά. Διαθέτει λειτουργικό macOS Big Sur ειδικά σχεδιασμένο για τον M1, οθόνη Retina, και γρήγορο και αθόρυβο πληκτρολόγιο με touch bar.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (12, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Huawei MateBook 14 2020 Space', N'4865', CAST(898.00 AS Decimal(18, 2)), 1, 5, 1, N'Το 2K FullView Display έχει σχεδιαστεί για ακόμα μεγαλύτερη θέαση και βελτιστοποίηση της δικής σας εμπειρίας. Το αποτέλεσμα είναι μια ευρύτερη, καθαρότερη και πιο έντονη οπτική εμπειρία. Η οθόνη καλύπτει το 100% του χρωματικού χώρου sRGB, οπότε οι αποχρώσεις είναι ζωντανές και ακριβείς. Η φωτεινότητα είναι 300 nits και η αναλογία αντίθεσης είναι 1500: 1, ώστε να λαμβάνετε φωτεινές, ζωντανές εικόνες κάθε φορά.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (13, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Dell Inspiron 3505', N'33545', CAST(678.00 AS Decimal(18, 2)), 1, 5, 1, N'Φορητός υπολογιστής 15 ιντσών με γρήγορη απόδοση και κομψή σχεδίαση με στενά πλαίσια διπλής όψης, οθόνη (IPS) και γρήγορη φόρτιση.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (14, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Adidas Stan Smith', N'1233', CAST(599.00 AS Decimal(18, 2)), 1, 4, 8, N'Το adidas Stan Smith είναι ένα κλασικό παπούτσι για τένις και είναι γνωστό για το άσπρο και πράσινο χρώμα του. Θεωρείται ευρέως ως μία από τις πιο εικονικές σιλουέτες όλων των εποχών. Κυκλοφόρησε για πρώτη φορά στις αρχές της δεκαετίας του 1960 και αρχικά δεν έφερε καν την ονομασία Stan Smith, αλλά ήταν γνωστό ως Robert Haillet, λόγω του Γάλλου παίκτη του τένις. Όταν ο Haillet αποσύρθηκε από το τένις, η αdidas αποφάσισε πως χρειαζόταν έναν διάδοχο. Τότε προτάθηκε ο Αμερικανός τενίστας Stan Smith κι έμελε να γραφτεί στην ιστορία')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (15, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Nike Adapt Auto Max', N'3454', CAST(399.00 AS Decimal(18, 2)), 1, 5, 8, N'Ένα φουτουριστικό throwback στην OG Nike και στα πιο iconic σχέδια του Tinker Hatfield. Το Nike Adapt Auto Max αποτελείται από τεχνολογία Nike FitAdapt δημιουργώντας ένα μοντέρνο appearance καθώς και μια revolutionary αίσθηση. Το Adapt Auto Max δεν είναι ένα συνηθισμένο αθλητικό παπούτσι καθώς η Nike σου δίνει την δυνατότητα να ορίσεις και να αποθηκεύσεις την κατάλληλη εφαρμογή παπουτσιού που σου ταιριάζει. Μέσω του Nike Adapt app, προσφέρονται προτάσεις για προκαθορισμένη εφαρμογή του ποδιού, δίνοντας ακόμα λύσεις τόσο στην εφαρμογή που σου ταιριάζει όσο και στις δραστηριότητες για τις οποίες το επιλέγεις.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (16, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Nike Air Vapor Max Evo', N'5676', CAST(224.00 AS Decimal(18, 2)), 1, 5, 8, N'Το Nike Air VaporMax EVO θέτει στο μικροσκόπιο τα DNA της σειράς Air Max, για να αναδείξει τα χαρακτηριστικά στοιχεία επτά εμβληματικών μοντέλων Nike. Από τις ραμμένες επικαλύψεις μέχρι τις κλασικές πινελιές, την απίστευτη άνεση και το έντονο στιλ από τη δεκαετία του ''''90, ενώνει τα απαραίτητα μοντέλα των αγαπημένων σου παπουτσιών Air Max σε ένα νέο σχέδιο. Απογείωσε την εμφάνισή σου και νιώσε την άνεση όλων όσων αντιπροσωπεύουν τη σειρά Max.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (17, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'New Balance M1500', N'4954', CAST(189.00 AS Decimal(18, 2)), 1, 4, 8, N'Premium κατασκευή που ξεχωρίζει από την πρώτη ματιά. Το νέο 1500 συνεχίζει την παράδοση των μοναδικών Made in UK σχεδίων.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (18, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'New Balance 990v5', N'5749', CAST(175.00 AS Decimal(18, 2)), 1, 4, 8, N'Premium κατασκευή που ξεχωρίζει από την πρώτη ματιά.

Το νέο 990v5 αλλάζει τα δεδομένα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (19, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Lego Speed Champions: McLaren Senna', N'23423', CAST(11.00 AS Decimal(18, 2)), 1, 1, 9, N'Το McLaren Senna της σειράς Speed Champions περιλαμβάνει 219 τουβλάκια και 1 μίνι φιγούρα σχεδιασμένη με χαρακτηριστικά που προσομοιώνουν την πραγματικότητα (κοστούμι και λογότυπα της Pirelli). Διαθέτει αφαιρούμενο παρμπρίζ, καμπίνα οδηγού, αεροτομή, ελαστικούς τροχούς και ζάντες που αλλάζουν. Κατάλληλο για παιδιά ηλικίας 7+ ετών.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (20, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Lenovo IdeaPad 3 15ADA05', N'3342', CAST(499.00 AS Decimal(18, 2)), 1, 5, 1, N'Ιδανικό τόσο για καθημερινή εργασία όσο και για απλή καθημερινή χρήση, μπορείς να απολαμβάνεις τις ταινίες σου με Dolby Sound. Η web κάμερα διαθέτει κλείστρο για να παραμένουν ασφαλή τα προσωπικά σου δεδομένα ενώ μπορείς να ρυθμίσεις τη λειτουργία του επεξεργαστή ανάλογα με τις ανάγκες σου.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (21, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Xiaomi Poco X3 NFC (128GB) ', N'98984', CAST(299.00 AS Decimal(18, 2)), 1, 5, 5, N'Βασικά χαρακτηριστικά:

6.67" Οθόνη DotDisplay
20MP selfie κάμερα
64MP τετραπλή κάμερα ΑΙ
Μπαταρία 5160mAh
Οθόνη με 120Hz ρυθμό ανανέωσης. Σύστημα ψύξης LiquidCool 1.0 Plus. Διπλά στερεοφωνικά ηχεία. Τετραπλή πίσω κάμερα 64MP με εγγραφή video 4K.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (22, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Xiaomi Redmi Note 9 Pro (128GB)', N'98985', CAST(230.00 AS Decimal(18, 2)), 1, 4, 5, N'Selfies με slow motion. Τετραπλή κάμερα 64MP με ευρυγώνιο και macro φακό, καθώς και λειτουργία πορτρέτου. Βίντεο 4Κ με movie modes και φίλτρα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (23, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Xiaomi Mi 10T Lite (128GB) ', N'98564', CAST(280.00 AS Decimal(18, 2)), 1, 4, 5, N'Το Mi 10T Lite υποστηρίζει 5G, διαθέτει οθόνη 6.67” FHD+ με ρυθμό ανανέωσης 120 Ηz, επεξεργαστή Snapdragon 750G, 64MP τετραπλή κάμερα με AI για λήψεις με εξαιρετικές λεπτομέρειες και μπαταρία μεγάλης χωρητικότητας 4820mAh με γρήγορη φόρτιση 33W.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (25, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Xiaomi Mi 11 (256GB', N'43546', CAST(815.00 AS Decimal(18, 2)), 1, 4, 5, N'Με επεξεργαστή Snapdragon 888 5G, λήψη βίντεο 8K, ήχο Harman Kardon, Wi-Fi 6 και μπαταρία 4600mAh')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (26, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Xiaomi Mi 10T (8GB/128GB) ', N'98711', CAST(415.00 AS Decimal(18, 2)), 1, 5, 5, N'Οθόνη με υψηλό ρυθμό ανανέωσης 144Ηz. Μπαταρία με γρήγορη φόρτιση 33W. Επεξεργαστής Snapdragon 865 με chipset 5G. Λήψη video 8K.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (27, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Apple iPhone 12 Pro Max (128GB)', N'89768', CAST(1200.00 AS Decimal(18, 2)), 1, 5, 5, N'Ταχύτητα 5G. Επεξεργαστής A14 Bionic. Μια οθόνη OLED από άκρη σε άκρη με 4 φορές πιο ανθεκτικό γυαλί. Νυχτερινή λειτουργία στην κάμερα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (28, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Apple iPhone SE 2020 (64GB)', N'87678', CAST(430.00 AS Decimal(18, 2)), 1, 5, 5, N'Το πιο φθηνό iPhone με τον επεξεργαστή του iPhone 11 Pro. Κατασκευασμένο από ανθεκτικό γυαλί και αλουμίνιο. Κάμερα με λειτουργία πορτραίτου και HDR.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (29, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'HP Omen 15-en0013dx ', N'23777', CAST(850.00 AS Decimal(18, 2)), 1, 3, 1, N'Με μπαταρία που διαρκεί πάνω απο 20 ώρες το gaming δεν έχει όριο.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (30, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'HP Spectre x360 15-eb0043dx', N'23654', CAST(1250.00 AS Decimal(18, 2)), 1, 4, 1, N'2 in 1 Convertible, 15.6" IPS Panel 3840x2160, Touchscreen, CPU: Intel Core i7 1.8GHz, RAM: 16GB, 512GB SSD, Windows 10, Κατασκευαστής: HP')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (31, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Nike Runathlon', N'22234', CAST(50.00 AS Decimal(18, 2)), 1, 5, 8, N'Το Nike Runathlon Impact είναι ένας σταθμός στο ταξίδι μας προς τη βιωσιμότητα, καθώς μεταμορφώνουμε τα απορρίμματα σε παπούτσια που αφήνουν μικρότερο αποτύπωμα. Αυτό το παπούτσι είναι φτιαγμένο από τουλάχιστον 25% ανακυκλωμένο υλικό ως προς το βάρος.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (32, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Nike Wearallday', N'45454', CAST(45.00 AS Decimal(18, 2)), 1, 5, 8, N'Το Nike WearAllDay είναι ένα καθημερινό παπούτσι που μπορείς να φοράς κάθε στιγμή και σε κάθε περίσταση. Διαθέτει ευέλικτη, ανθεκτική και άνετη σχεδίαση, συνδυάζοντας όλα όσα χρειάζεσαι σε ένα μοντέλο για το παιχνίδι ή τις στιγμές χαλάρωσης.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (33, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'Adidas Supernova', N'67689', CAST(35.00 AS Decimal(18, 2)), 1, 4, 8, N'Όταν πάρεις το τρέξιμο στα σοβαρά, πρέπει να αποκτήσεις τα adidas Supernova Shoes. Έχουν mesh επάνω μέρος που προσφέρει επιπλέον αερισμό στα σημεία που χρειάζεται.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (34, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'New Balance 574', N'45321', CAST(42.00 AS Decimal(18, 2)), 1, 3, 8, N'Casual εμφάνιση, ίδια σειρά! Τα 574 της New Balance σε λευκή απόχρωση, έτοιμα να τα συνδυάσεις με όλα τα outfit σου.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (35, N'6a265b72-2b69-4570-975b-c89dbc7c5e49', N'New Balance CW997HCA', N'43212', CAST(34.00 AS Decimal(18, 2)), 1, 4, 8, N'Ενδιάμεση σόλα από αφρό EVA (αιθυλενίου οξικού βινυλίου) για την αποτελεσματική απορρόφηση κραδασμών.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (36, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Playmobil City Life: Κουζίνα', N'5332', CAST(50.00 AS Decimal(18, 2)), 1, 3, 9, N'Μαγειρέψτε στην οικογενειακή κουζίνα με πολλές συσκευές. Ο εξοπλισμός της κουζίνας περιλαμβάνει φούρνο, πλυντήριο πιάτων, ψυγείο και πολλά χαριτωμένα εξαρτήματα. Διαστάσεις συσκευασίας Μ:28.40 x Π:12.40 x Υ:18.70 εκ. Κατάλληλο για παιδιά ηλικίας')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (39, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Playmobil Heidi: Η Χάιντι ', N'56778', CAST(20.00 AS Decimal(18, 2)), 1, 4, 9, N'Η Χάιντι με τον παππού της στην καλύβα τους 
ψηλά πάνω στο Αλμ. Περιλαμβάνει τη θεία Ντέτε, τον σκύλο Ζόζεφ, ένα μεγάλο καθιστικό, μία σοφίτα και μία αποθήκη.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (40, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'As Company Εξυπνούλης Μαθαίνω', N'87861', CAST(31.00 AS Decimal(18, 2)), 1, 4, 9, N'Ο πιο απλός και διασκεδαστικός τρόπος να μάθουν τα παιδία γεωγραφία! Τα παιδία μαθαίνουν τις πρώτες έννοιες της γεωγραφίας παίζοντας και ενώνοντας τα κομμάτια του πάζλ. Την ίδια στιγμή, απομνημονεύουν τη γεωγραφική θέση της περιοχής. Με το Μαθαίνω την Ελλάδα, το παιδί συνδυάζει την ικανότητα χειρισμού και αυτήν της παρατηρητικότητας και της λογικής.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (41, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'As Company Εξυπνούλης Ηλεκτρονικός Παντογνώστης', N'98132', CAST(23.00 AS Decimal(18, 2)), 1, 3, 9, N'Ένας ηλεκτρονικός παντογνώστης που μιλάει και σου μεταδίδει τις γνώσεις του μέσα από 24 φανταστικές δραστηριότητες και 200+ διασκεδαστικά κουίζ. Περιλαμβάνει 2 πέννες')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (42, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'As Company Εξυπνούλης Γνωρίζω την Ελλάδα', N'87454', CAST(32.00 AS Decimal(18, 2)), 1, 5, 9, N'Φωτογραφική μηχανή, χάρτης και ημερολόγιο και η βαλίτσα σας είναι σχεδόν έτοιμη για μια φανταστική περιπέτεια, όπου θα ανακαλύψετε όλη την Ελλάδα!')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (43, N'ab073eaf-7d3f-4c8c-97ca-91a430dc8591', N'Puzzle Baby Ζώα της Φάρμας', N'54678', CAST(45.00 AS Decimal(18, 2)), 1, 4, 9, N'Παιδικό puzzle με το οποίο μπορείς να δημιουργήσεις 6 διαφορετικά puzzle – Ζώα φάρμας. Άλογο, αγελάδα, κουνελάκι ή… Ποιο ζωάκι θα φτιάξεις σε puzzle; ΠΕΡΙΕΧΟΜΕΝΑ 18 κομμάτια puzzle*2 puzzle των 2 κομματιών*2 puzzle των 3 κομματιών*2 puzzle των 4 κομματιών')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (44, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Zanussi Κουζίνα 72lt ZCV65050WA', N'37448', CAST(550.00 AS Decimal(18, 2)), 1, 5, 7, N'Κουζίνα Κεραμική Zanussi ZCV65050WA με φούρνο μεγάλης χωρητικότητας 72 Lt. Έχει σχεδιαστεί ειδικά για να μαγειρεύει ταυτόχρονα διαφορετικά φαγητά, απαλλάσσοντάς πλήρως από το άγχος προετοιμασίας του γεύματος.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (45, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Zanussi ZOB 22601', N'66533', CAST(340.00 AS Decimal(18, 2)), 1, 4, 7, N'Φούρνος άνω πάγκου ZOB22601XK Inox, χωρητικότητας 74lt, ενεργειακής κλάσης Α+, με 6 τρόπους λειτουργίας και σύστημα καθαρισμού Aqua Cleaning')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (46, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Zanussi ZOHIE2X1', N'60607', CAST(349.00 AS Decimal(18, 2)), 1, 3, 7, N'Εάν σκέφτεστε να ανανεώσετε την κουζίνα σας, αγοράστε Φούρνος Πολλαπλών Χρήσεων Zanussi ZOHIE2X1 57 L A 2500W και άλλα προϊόντα Zanussi! Η καλύτερη ποιότητα στην καλύτερη τιμή είναι ήδη στα χέρια σας!')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (47, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Bosch Κουζίνα 66lt  HKR390050', N'657829', CAST(496.99 AS Decimal(18, 2)), 1, 5, 7, N'Η ελεύθερη κουζίνα Bosch HKR390050 με 3D Hotair και κεραμικές εστίες πετυχαίνει τέλεια σε ψήσιμο και μαγείρεμα σε πολλαπλά επίπεδα ταυτόχρονα.

Ενεργειακή κλάση Α: Οι κουζίνες Bosch δεν είναι μόνο οικονομικές, αλλά και φιλικές προς το περιβάλλον κατά τη χρήση τους. Ξεχωρίζουν για τις χαμηλές καταναλώσεις αλλά και για τις υψηλές επιδόσεις τους. Οι κουζίνες και οι φούρνοι υπάγονται σε νέες ενεργειακές κλάσεις, με την κλάση Α να σηματοδοτεί τις περισσότερο ενεργειακά αποδοτικές συσκευές.

3D Hotair: Αυτή η λειτουργία κατανέμει τη θερμότητα γρήγορα και ομοιόμορφα στο σύνολο του φούρνου, δίνοντάς σου τη δυνατότητα να μαγειρεύεις έως και σε τρία επίπεδα ταυτόχρονα. Γλυκά και αλμυρά πιάτα μπορούν να ψήνονται ταυτόχρονα χωρίς να αναμιγνύονται οι γεύσεις.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (48, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Bosch Κουζίνα 66lt-HBF154BS0 + PKN645FP1E', N'66112', CAST(450.00 AS Decimal(18, 2)), 1, 5, 7, N'Ελεύθερη κουζίνα Bosch με 3D Hotair και εστίες αερίου για τέλεια αποτελέσματα σε ψήσιμο και μαγείρεμα σε πολλαπλά επίπεδα ταυτόχρονα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (54, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Lenovo Legion 5 15ARH05', N'63432', CAST(899.00 AS Decimal(18, 2)), 1, 3, 1, N'''Ο προηγμένος επεξεργαστής Ryzen 7 4800H με συχνότητα εώς 4.20GHz, ο οποίος σε συνδυασμό με τα 16 GB μνήμης DDR4, εγγυώνται γρήγορη απόκριση και αξιόπιστη απόδοση. Εκτέλεσε ταυτόχρονα πολλαπλά προγράμματα και μετακινήσου απρόσκοπτα ανάμεσα στις καρτέλες ιστού, πλέον θα είσαι σε θέση να κάνεις πολλαπλές εργασίες με ευκολία!')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (55, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Lenovo ThinkPad E15 Gen 2', N'43875', CAST(920.00 AS Decimal(18, 2)), 1, 4, 1, N'Αξιοποιεί τη δύναμη ενός επεξεργαστή Intel Core 11ης γενιάς μαζί με τη μνήμη DDR4 και τη μονάδα αποθήκευσης SSD έως 1TB για υψηλή απόδοση στην εργασία σας. Αντιμετωπίζει με βεβαιότητα οποιεσδήποτε εργασίες, και διατηρεί έξυπνα τη βέλτιστη θερμοκρασία κατά την εκτέλεση πολλαπλών εφαρμογών.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (58, N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'Arctic Hunter GB00328 15.6"', N'33244', CAST(26.00 AS Decimal(18, 2)), 1, 5, 2, N'Τσάντα πλάτης Arctic Hunter GB00328 για φορητές συσκευές έως και 15.6''''''''. Παρέχει θήκες για μικροαντικείμενα, πλαινή θήκη νερού, εξωτερική θύρα ακουστικών 3.5mm και ειδική υποδοχή για στήριξη σε βαλίτσα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (59, N'88311b0d-1fe1-424f-aa9f-f050e51ae7a4', N'Arctic Hunter GB00328 17"', N'33245', CAST(27.00 AS Decimal(18, 2)), 1, 5, 2, N'Τσάντα πλάτης Arctic Hunter GB00328 για φορητές συσκευές έως και 17''''''''. Παρέχει θήκες για μικροαντικείμενα, πλαινή θήκη νερού, εξωτερική θύρα ακουστικών 3.5mm και ειδική υποδοχή για στήριξη σε βαλίτσα.')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (74, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'Apple to kalytero kinito', N'gj5nfn45', CAST(123.00 AS Decimal(18, 2)), 1, 0, 5, N'Αγόρασε το καλύτερο κινητό')
INSERT [dbo].[Products] ([ProductId], [VendorId], [ProductName], [SKU], [Price], [ProductStatus], [Rating], [CategoryId], [Description]) VALUES (75, N'94cbf41e-c55f-4623-b9e9-ba0b43b679bd', N'AA apple', N'gj5nfn4n', CAST(123.00 AS Decimal(18, 2)), 1, 0, 5, N'Το καλύτερο κινητό της αγοράς')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[ShoppingCartStates] ([ShoppingCartStatesId], [ShoppingCartStatesName]) VALUES (1, N'Cart')
INSERT [dbo].[ShoppingCartStates] ([ShoppingCartStatesId], [ShoppingCartStatesName]) VALUES (2, N'Order')
GO
SET IDENTITY_INSERT [dbo].[SubCategories] ON 

INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (1, 1, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (3, 1, 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (31, 1, 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (39, 1, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (29, 1, 8)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (4, 2, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (2, 2, 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (9, 2, 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (38, 2, 7)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (11, 2, 8)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (10, 2, 9)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (14, 3, 9)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (15, 4, 8)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (16, 6, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (22, 6, 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (17, 7, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (23, 7, 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (18, 8, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (24, 8, 5)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (19, 9, 1)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (20, 10, 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (21, 11, 2)
INSERT [dbo].[SubCategories] ([SubCategoryId], [SubCategoryTypeId], [CategoryId]) VALUES (28, 14, 7)
SET IDENTITY_INSERT [dbo].[SubCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategoryTypes] ON 

INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (1, N'Brand')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (10, N'Διάσταση')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (7, N'Επεξεργαστής')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (3, N'Ηλικία')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (8, N'Μέγεθος Οθόνης')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (6, N'Μνήμη RAM')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (4, N'Νούμερο')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (9, N'Σκληρός Δίσκος')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (12, N'Σχήμα')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (11, N'Τύπος')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (14, N'Τύπος Εστιών')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (13, N'Ύψος')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (5, N'Φύλο')
INSERT [dbo].[SubCategoryTypes] ([SubCategoryTypeId], [SubCategoryTypeName]) VALUES (2, N'Χρώμα')
SET IDENTITY_INSERT [dbo].[SubCategoryTypes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUsers]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AspNetUsers] ON [dbo].[AspNetUsers]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Attributes]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Attributes] ON [dbo].[Attributes]
(
	[AttributeValue] ASC,
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Categories]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Categories] ON [dbo].[Categories]
(
	[CategoryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductAttributes]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProductAttributes] ON [dbo].[ProductAttributes]
(
	[ProductId] ASC,
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Products] ON [dbo].[Products]
(
	[SKU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Products_1]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Products_1] ON [dbo].[Products]
(
	[ProductName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_UserIdInitialUniqueCart]    Script Date: 12/4/2021 5:32:04 μμ ******/
ALTER TABLE [dbo].[ShoppingCarts] ADD  CONSTRAINT [UC_UserIdInitialUniqueCart] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[OrderCode] ASC,
	[ShoppingCartStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingItems]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_ShoppingItems] ON [dbo].[ShoppingItems]
(
	[ShoppingCartId] ASC,
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubCategories]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_SubCategories] ON [dbo].[SubCategories]
(
	[SubCategoryTypeId] ASC,
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SubCategoryTypes]    Script Date: 12/4/2021 5:32:04 μμ ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_SubCategoryTypes] ON [dbo].[SubCategoryTypes]
(
	[SubCategoryTypeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShoppingCarts] ADD  CONSTRAINT [DF_ShoppingCarts_ShoppingCartStateId]  DEFAULT ((1)) FOR [ShoppingCartStateId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Attributes]  WITH CHECK ADD  CONSTRAINT [FK_Attributes_SubCategories] FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategories] ([SubCategoryId])
GO
ALTER TABLE [dbo].[Attributes] CHECK CONSTRAINT [FK_Attributes_SubCategories]
GO
ALTER TABLE [dbo].[ProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributes_Attributes] FOREIGN KEY([AttributeId])
REFERENCES [dbo].[Attributes] ([AttributeId])
GO
ALTER TABLE [dbo].[ProductAttributes] CHECK CONSTRAINT [FK_ProductAttributes_Attributes]
GO
ALTER TABLE [dbo].[ProductAttributes]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributes_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ProductAttributes] CHECK CONSTRAINT [FK_ProductAttributes_Products]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_AspNetUsers] FOREIGN KEY([VendorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_AspNetUsers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_AspNetUsers1] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_AspNetUsers1]
GO
ALTER TABLE [dbo].[ShoppingCarts]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCarts_ShoppingCartStatuses] FOREIGN KEY([ShoppingCartStateId])
REFERENCES [dbo].[ShoppingCartStates] ([ShoppingCartStatesId])
GO
ALTER TABLE [dbo].[ShoppingCarts] CHECK CONSTRAINT [FK_ShoppingCarts_ShoppingCartStatuses]
GO
ALTER TABLE [dbo].[ShoppingItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingItems_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[ShoppingItems] CHECK CONSTRAINT [FK_ShoppingItems_Products]
GO
ALTER TABLE [dbo].[ShoppingItems]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingItems_ShoppingCarts] FOREIGN KEY([ShoppingCartId])
REFERENCES [dbo].[ShoppingCarts] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[ShoppingItems] CHECK CONSTRAINT [FK_ShoppingItems_ShoppingCarts]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_Categories1] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_Categories1]
GO
ALTER TABLE [dbo].[SubCategories]  WITH CHECK ADD  CONSTRAINT [FK_SubCategories_SubCategoryTypes] FOREIGN KEY([SubCategoryTypeId])
REFERENCES [dbo].[SubCategoryTypes] ([SubCategoryTypeId])
GO
ALTER TABLE [dbo].[SubCategories] CHECK CONSTRAINT [FK_SubCategories_SubCategoryTypes]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.ApplicationId = a.ApplicationId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u WITH ( UPDLOCK, ROWLOCK ), dbo.aspnet_Membership m WITH ( UPDLOCK, ROWLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users WITH (ROWLOCK)
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 12/4/2021 5:32:04 μμ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShoppingCarts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoppingItems"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 136
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Products"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 2700
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrderInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'OrderInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsAll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Products"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProductAttributes"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 434
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Attributes"
            Begin Extent = 
               Top = 120
               Left = 246
               Bottom = 233
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategories"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 251
               Right = 230
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Categories"
            Begin Extent = 
               Top = 234
               Left = 268
               Bottom = 330
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SubCategoryTypes"
            Begin Extent = 
               Top = 252
               Left = 38
               Bottom = 348
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsAttributesCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsAttributesCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsAttributesCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsByProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProductsByProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ShoppingCarts"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 252
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShoppingItems"
            Begin Extent = 
               Top = 138
               Left = 38
               Bottom = 268
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TotalAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'TotalAmount'
GO
USE [master]
GO
ALTER DATABASE [TeamProject] SET  READ_WRITE 
GO
