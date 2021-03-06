USE [master]
GO
/****** Object:  Database [AspNetCoreProject]    Script Date: 3/4/2020 1:38:07 PM ******/
CREATE DATABASE [AspNetCoreProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AspNetCoreProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AspNetCoreProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AspNetCoreProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\AspNetCoreProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [AspNetCoreProject] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AspNetCoreProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AspNetCoreProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AspNetCoreProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AspNetCoreProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AspNetCoreProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AspNetCoreProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AspNetCoreProject] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AspNetCoreProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AspNetCoreProject] SET  MULTI_USER 
GO
ALTER DATABASE [AspNetCoreProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AspNetCoreProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AspNetCoreProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AspNetCoreProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AspNetCoreProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AspNetCoreProject] SET QUERY_STORE = OFF
GO
USE [AspNetCoreProject]
GO
/****** Object:  User [BUILTIN\Users]    Script Date: 3/4/2020 1:38:07 PM ******/
CREATE USER [BUILTIN\Users] FOR LOGIN [BUILTIN\Users]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3/4/2020 1:38:07 PM ******/
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/4/2020 1:38:07 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerReviews]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerReviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[Opinion] [nvarchar](50) NOT NULL,
	[ImageFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomerReviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryBoys]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryBoys](
	[DeliveryBoyId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryBoyName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DeliveryBoys] PRIMARY KEY CLUSTERED 
(
	[DeliveryBoyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Age] [int] NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Salary] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuHelperModel]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuHelperModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ControllerName] [nvarchar](max) NULL,
	[ActionName] [nvarchar](max) NULL,
	[MenuModelId] [int] NULL,
 CONSTRAINT [PK_MenuHelperModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModel]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuHelperModelId] [int] NOT NULL,
	[RollId] [nvarchar](max) NULL,
	[RollIdText] [nvarchar](max) NULL,
 CONSTRAINT [PK_MenuModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuModelManage]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuModelManage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuModelId] [int] NOT NULL,
	[Retrive] [bit] NOT NULL,
	[Insert] [bit] NOT NULL,
	[Update] [bit] NOT NULL,
	[Delete] [bit] NOT NULL,
 CONSTRAINT [PK_MenuModelManage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDtls]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDtls](
	[OrderDtlId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[EmpID] [int] NULL,
	[Quentity] [nvarchar](max) NOT NULL,
	[TotalCost] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OrderDtls] PRIMARY KEY CLUSTERED 
(
	[OrderDtlId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Orderdate] [nvarchar](max) NOT NULL,
	[CustomerId] [int] NULL,
	[ShippingId] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[CategoryId] [int] NULL,
	[price] [nvarchar](max) NOT NULL,
	[ImageFile] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingInfoes]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingInfoes](
	[ShippingId] [int] IDENTITY(1,1) NOT NULL,
	[DeliveryBoyId] [int] NULL,
	[ShippingCost] [nvarchar](max) NOT NULL,
	[ShippingDate] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ShippingInfoes] PRIMARY KEY CLUSTERED 
(
	[ShippingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Result]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Result](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[stu_Rre] [nvarchar](max) NULL,
 CONSTRAINT [PK_Student_Result] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentModel]    Script Date: 3/4/2020 1:38:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentModel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StudentName] [nvarchar](max) NULL,
 CONSTRAINT [PK_StudentModel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200227165344_Database_create', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200227201945_NibirFashion', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200229212506_select', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200301063139_pagging', N'2.1.11-servicing-32099')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6106098d-0049-4382-9553-f9149c617b65', N'Admin', N'ADMIN', N'44674922-8f54-4b07-92f5-361035ab1e21')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ee940564-5444-4122-9885-88fec9a3a9e2', N'User', N'USER', N'225201a8-384b-41e9-8dd4-e521b1593a3c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b2571766-3e31-402b-a011-be5d09c5f1ca', N'6106098d-0049-4382-9553-f9149c617b65')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'885d1c8f-3918-45dc-9fca-1983b4a5d331', N'ee940564-5444-4122-9885-88fec9a3a9e2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'885d1c8f-3918-45dc-9fca-1983b4a5d331', N'a@gmail.coma', N'A@GMAIL.COMA', N'a@gmail.coma', N'A@GMAIL.COMA', 0, N'AQAAAAEAACcQAAAAEDHGfytxm1kdNU5t32sPuYi+U85jtkU16KgZMDb/htiomrV8gxYTcC1iKVT1CpsbEg==', N'2FVOMZAQ6QSATQT47Q43IHTXRQM7HTQ4', N'5b0e451b-b1fa-47aa-9e7c-29e03600a5ab', NULL, 0, 0, NULL, 1, 0, N'Akash', N'Khan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'aa7290a9-a55e-4e9e-96d4-0584e4d84b60', N'n@gmail.coma', N'N@GMAIL.COMA', N'n@gmail.coma', N'N@GMAIL.COMA', 0, N'AQAAAAEAACcQAAAAEO8WkxtDyYDRtHByN6W9WaIx00ZnGpxPKomcbHTd0XvNV5ZrY0OuVBIMDvM9M547vQ==', N'V2RMS6C6AMVE7TYS4LV4GAOR7TZ5WYU5', N'00c4f05f-a621-45a3-8ecb-e88863302143', NULL, 0, 0, NULL, 1, 0, N'Akash', N'Khan')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'b2571766-3e31-402b-a011-be5d09c5f1ca', N'n@gmail.com', N'N@GMAIL.COM', N'n@gmail.com', N'N@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENG+uhrYh0A+j0s83dhFWTOfCUaVfBcugeCXAMuR128Xh1Okr8j0SqkJlvGkrxwq5g==', N'ZV5M2S5Z3HPMDSONW7M5PP52DDGXB6UB', N'a9a0395f-ea56-4303-9a9d-ff07aab82f5d', NULL, 0, 0, NULL, 1, 0, N'a', N'a')
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (1, N'Saree')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (2, N'Three Pices')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (3, N'Lehenga')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (4, N'Gawn')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (5, N'Showl')
INSERT [dbo].[Categories] ([CategoryId], [CategoryName]) VALUES (6, N'Gharara')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[CustomerReviews] ON 

INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (1, 1, N'Good', N'~/Images/1.jpg')
INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (2, 2, N'Good', N'~/Images/2.jpg')
INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (3, 3, N'Excellent', N'~/Images/3.Jpg')
INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (4, 4, N'Excellent', N'~/Images/4.Jpg')
INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (5, 5, N'satisfied', N'~/Images/5.jpg')
INSERT [dbo].[CustomerReviews] ([ReviewId], [CustomerId], [Opinion], [ImageFile]) VALUES (6, 6, N'satisfied', N'~/Images/6.jpg')
SET IDENTITY_INSERT [dbo].[CustomerReviews] OFF
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (1, N'Nipa', N'Baridhara', N'01628969664')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (2, N'Nilay', N'Keranigonj', N'01628969665')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (3, N'Kakon', N'Laxmibazar', N'01628969666')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (4, N'Anni', N'Uttora', N'01628969667')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (5, N'Faria', N'Wari', N'01628969668')
INSERT [dbo].[Customers] ([CustomerId], [CustomerName], [Address], [Number]) VALUES (6, N'Mim', N'PanGawn', N'01628969669')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[DeliveryBoys] ON 

INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (1, N'Robiul')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (2, N'Kawsar')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (3, N'Akram')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (4, N'Alauddin')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (5, N'Jafor')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (6, N'Zulhas')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (7, N'Imran')
INSERT [dbo].[DeliveryBoys] ([DeliveryBoyId], [DeliveryBoyName]) VALUES (8, N'Imran')
SET IDENTITY_INSERT [dbo].[DeliveryBoys] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (1, N'nilay', 20, N'dhaka', CAST(2200.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (2, N'akash', 25, N'dhaka', CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (3, N'faria', 15, N'wari', CAST(5000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (4, N'abdulla', 23, N'narinda', CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (5, N'Mohammod Akash', 28, N'Bangladesh', CAST(25000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (6, N'Nibir Hossin', 27, N'England', CAST(30000.00 AS Decimal(18, 2)))
INSERT [dbo].[Employees] ([EmpID], [Name], [Age], [Country], [Salary]) VALUES (7, N'zabir Hossain', 28, N'Bangladesh', CAST(20000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[MenuHelperModel] ON 

INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (1, N'Employees', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (2, N'Home', N'About', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (3, N'Employees', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (5, N'Employees', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (6, N'Employees', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (7, N'Employees', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (8, N'Home', N'Contact', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (9, N'Home', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (10, N'CustomerReviews', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (11, N'CustomerReviews', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (12, N'CustomerReviews', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (13, N'CustomerReviews', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (14, N'Customers', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (15, N'Customers', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (16, N'Customers', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (17, N'Customers', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (18, N'Customers', N'IndexSingle', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (19, N'DeliveryBoys', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (20, N'DeliveryBoys', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (21, N'DeliveryBoys', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (22, N'DeliveryBoys', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (23, N'Customers', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (24, N'CustomerReviews', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (25, N'DeliveryBoys', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (26, N'OrderDtls', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (27, N'DeliveryBoys', N'Sample', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (28, N'OrderDtls', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (29, N'OrderDtls', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (30, N'OrderDtls', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (31, N'OrderDtls', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (32, N'Orders', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (33, N'Orders', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (34, N'Orders', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (35, N'Orders', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (36, N'Orders', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (37, N'Products', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (38, N'Products', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (39, N'Products', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (40, N'Products', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (41, N'Products', N'Details', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (42, N'ShippingInfoes', N'Index', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (43, N'ShippingInfoes', N'Create', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (44, N'ShippingInfoes', N'Edit', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (45, N'ShippingInfoes', N'Delete', NULL)
INSERT [dbo].[MenuHelperModel] ([Id], [ControllerName], [ActionName], [MenuModelId]) VALUES (46, N'ShippingInfoes', N'Details', NULL)
SET IDENTITY_INSERT [dbo].[MenuHelperModel] OFF
SET IDENTITY_INSERT [dbo].[MenuModel] ON 

INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (1, 1, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (2, 2, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (3, 8, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (4, 9, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (5, 3, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (6, 5, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (7, 6, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (8, 7, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (9, 10, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (10, 11, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (11, 12, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (12, 13, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (13, 24, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (14, 14, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (15, 15, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (16, 16, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (17, 17, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (18, 18, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (19, 23, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (20, 19, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (21, 20, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (22, 21, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (23, 22, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (24, 23, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (25, 27, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (26, 26, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (27, 29, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (28, 30, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (29, 31, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (30, 28, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (31, 37, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (32, 38, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (33, 39, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (34, 40, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (35, 41, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (36, 42, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (37, 43, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (38, 44, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (39, 45, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (40, 46, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (41, 1, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (42, 9, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (43, 10, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (44, 14, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (45, 19, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (46, 26, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (47, 2, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (48, 8, N'6106098d-0049-4382-9553-f9149c617b65', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (49, 37, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
INSERT [dbo].[MenuModel] ([Id], [MenuHelperModelId], [RollId], [RollIdText]) VALUES (50, 42, N'ee940564-5444-4122-9885-88fec9a3a9e2', NULL)
SET IDENTITY_INSERT [dbo].[MenuModel] OFF
SET IDENTITY_INSERT [dbo].[MenuModelManage] ON 

INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (94, 41, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (95, 13, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (96, 3, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (97, 19, 1, 1, 1, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (98, 20, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (99, 24, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (100, 25, 1, 1, 1, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (101, 26, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (102, 27, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (103, 28, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (104, 29, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (105, 30, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (106, 31, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (107, 32, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (108, 33, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (109, 34, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (110, 35, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (111, 36, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (112, 37, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (113, 38, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (114, 22, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (115, 21, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (116, 40, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (117, 11, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (118, 18, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (119, 17, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (120, 42, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (121, 43, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (122, 44, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (123, 45, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (124, 46, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (125, 47, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (126, 48, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (127, 49, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (128, 50, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (129, 23, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (130, 2, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (131, 5, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (132, 7, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (133, 8, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (134, 9, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (135, 39, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (136, 10, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (137, 4, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (138, 12, 0, 0, 0, 1)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (139, 14, 1, 0, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (140, 15, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (141, 16, 0, 1, 0, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (142, 6, 0, 0, 1, 0)
INSERT [dbo].[MenuModelManage] ([Id], [MenuModelId], [Retrive], [Insert], [Update], [Delete]) VALUES (143, 1, 1, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[MenuModelManage] OFF
SET IDENTITY_INSERT [dbo].[OrderDtls] ON 

INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (1, 1, 1, 1, N'2', N'20,000')
INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (2, 2, 2, 1, N'2', N'4,000')
INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (3, 3, 3, 2, N'2', N'80,000')
INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (4, 4, 4, 2, N'2', N'60,000')
INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (5, 5, 5, 3, N'2', N'4,000')
INSERT [dbo].[OrderDtls] ([OrderDtlId], [OrderId], [ProductId], [EmpID], [Quentity], [TotalCost]) VALUES (6, 6, 6, 3, N'2', N'10,000')
SET IDENTITY_INSERT [dbo].[OrderDtls] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (1, N'2020-02-01', 1, 1)
INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (2, N'2020-02-02', 2, 2)
INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (3, N'2020-02-03', 3, 3)
INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (4, N'2020-02-04', 4, 4)
INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (5, N'2020-02-05', 5, 5)
INSERT [dbo].[Orders] ([OrderId], [Orderdate], [CustomerId], [ShippingId]) VALUES (6, N'2020-02-06', 6, 6)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (1, N'Katan', 1, N'10,000', N'~/Images/Saree.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (2, N'Lone', 2, N'2,000', N'~/Images/Pices.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (3, N'Zardosi', 3, N'40,000', N'~/Images/Lehenga.Jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (4, N'Tail Cut', 4, N'30,000', N'~/Images/Gawn.Jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (5, N'Kashmeeri', 5, N'2,000', N'~/Images/Showl.jpg')
INSERT [dbo].[Products] ([ProductId], [ProductName], [CategoryId], [price], [ImageFile]) VALUES (6, N'Sharara', 6, N'5,000', N'~/Images/Gharara.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[ShippingInfoes] ON 

INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (1, 1, N'120', N'2020-02-03')
INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (2, 2, N'150', N'2020-02-04')
INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (3, 3, N'60', N'2020-02-05')
INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (4, 4, N'80', N'2020-02-06')
INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (5, 5, N'80', N'2020-02-07')
INSERT [dbo].[ShippingInfoes] ([ShippingId], [DeliveryBoyId], [ShippingCost], [ShippingDate]) VALUES (6, 6, N'120', N'2020-02-08')
SET IDENTITY_INSERT [dbo].[ShippingInfoes] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_CustomerReviews_CustomerId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_CustomerReviews_CustomerId] ON [dbo].[CustomerReviews]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuHelperModel_MenuModelId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_MenuHelperModel_MenuModelId] ON [dbo].[MenuHelperModel]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_MenuModelManage_MenuModelId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_MenuModelManage_MenuModelId] ON [dbo].[MenuModelManage]
(
	[MenuModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDtls_EmpID]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDtls_EmpID] ON [dbo].[OrderDtls]
(
	[EmpID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDtls_OrderId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDtls_OrderId] ON [dbo].[OrderDtls]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderDtls_ProductId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDtls_ProductId] ON [dbo].[OrderDtls]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_CustomerId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_CustomerId] ON [dbo].[Orders]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Orders_ShippingId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Orders_ShippingId] ON [dbo].[Orders]
(
	[ShippingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShippingInfoes_DeliveryBoyId]    Script Date: 3/4/2020 1:38:08 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShippingInfoes_DeliveryBoyId] ON [dbo].[ShippingInfoes]
(
	[DeliveryBoyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
ALTER TABLE [dbo].[CustomerReviews]  WITH CHECK ADD  CONSTRAINT [FK_CustomerReviews_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[CustomerReviews] CHECK CONSTRAINT [FK_CustomerReviews_Customers_CustomerId]
GO
ALTER TABLE [dbo].[MenuHelperModel]  WITH CHECK ADD  CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
GO
ALTER TABLE [dbo].[MenuHelperModel] CHECK CONSTRAINT [FK_MenuHelperModel_MenuModel_MenuModelId]
GO
ALTER TABLE [dbo].[MenuModelManage]  WITH CHECK ADD  CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId] FOREIGN KEY([MenuModelId])
REFERENCES [dbo].[MenuModel] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuModelManage] CHECK CONSTRAINT [FK_MenuModelManage_MenuModel_MenuModelId]
GO
ALTER TABLE [dbo].[OrderDtls]  WITH CHECK ADD  CONSTRAINT [FK_OrderDtls_Employees_EmpID] FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employees] ([EmpID])
GO
ALTER TABLE [dbo].[OrderDtls] CHECK CONSTRAINT [FK_OrderDtls_Employees_EmpID]
GO
ALTER TABLE [dbo].[OrderDtls]  WITH CHECK ADD  CONSTRAINT [FK_OrderDtls_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([OrderId])
GO
ALTER TABLE [dbo].[OrderDtls] CHECK CONSTRAINT [FK_OrderDtls_Orders_OrderId]
GO
ALTER TABLE [dbo].[OrderDtls]  WITH CHECK ADD  CONSTRAINT [FK_OrderDtls_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[OrderDtls] CHECK CONSTRAINT [FK_OrderDtls_Products_ProductId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Customers_CustomerId]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_ShippingInfoes_ShippingId] FOREIGN KEY([ShippingId])
REFERENCES [dbo].[ShippingInfoes] ([ShippingId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_ShippingInfoes_ShippingId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[ShippingInfoes]  WITH CHECK ADD  CONSTRAINT [FK_ShippingInfoes_DeliveryBoys_DeliveryBoyId] FOREIGN KEY([DeliveryBoyId])
REFERENCES [dbo].[DeliveryBoys] ([DeliveryBoyId])
GO
ALTER TABLE [dbo].[ShippingInfoes] CHECK CONSTRAINT [FK_ShippingInfoes_DeliveryBoys_DeliveryBoyId]
GO
USE [master]
GO
ALTER DATABASE [AspNetCoreProject] SET  READ_WRITE 
GO
