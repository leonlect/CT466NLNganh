CREATE DATABASE [QuanLyQuanCafe]
GO

USE [QuanLyQuanCafe]
GO
/****** Object:  Trigger [UTG_UpdateBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TRIGGER [dbo].[UTG_UpdateBillInfo]
GO
/****** Object:  Trigger [UTG_DeleteBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TRIGGER [dbo].[UTG_DeleteBillInfo]
GO
/****** Object:  Trigger [UpdateBill]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TRIGGER [dbo].[UpdateBill]
GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_UpdateAccount]
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_Login]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_InsertBillInfo]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_InsertBill]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_GetTableList]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[USP_GetAccountByUserName]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[UpdateTable]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFoodCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[UpdateFoodCategory]
GO
/****** Object:  StoredProcedure [dbo].[SwitchTable]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[SwitchTable]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[InsertTable]
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[InsertCategory]
GO
/****** Object:  StoredProcedure [dbo].[GetListBillByDate]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[GetListBillByDate]
GO
/****** Object:  StoredProcedure [dbo].[GetListBillAll]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP PROCEDURE [dbo].[GetListBillAll]
GO
ALTER TABLE [dbo].[Food] DROP CONSTRAINT [FK__Food__idCategory__1BFD2C07]
GO
ALTER TABLE [dbo].[BillInfo] DROP CONSTRAINT [FK__BillInfo__idFood__25869641]
GO
ALTER TABLE [dbo].[BillInfo] DROP CONSTRAINT [FK__BillInfo__count__24927208]
GO
ALTER TABLE [dbo].[Bill] DROP CONSTRAINT [FK__Bill__status__20C1E124]
GO
/****** Object:  Table [dbo].[TableFood]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[TableFood]
GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[FoodCategory]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[Food]
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[BillInfo]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[Bill]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP TABLE [dbo].[Account]
GO
USE [master]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 27/5/2021 8:19:59 PM ******/
DROP DATABASE [QuanLyQuanCafe]
GO
/****** Object:  Database [QuanLyQuanCafe]    Script Date: 27/5/2021 8:19:59 PM ******/
CREATE DATABASE [QuanLyQuanCafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyQuanCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyQuanCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QuanLyQuanCafe_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyQuanCafe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyQuanCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyQuanCafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyQuanCafe] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyQuanCafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyQuanCafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyQuanCafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyQuanCafe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QuanLyQuanCafe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QuanLyQuanCafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL DEFAULT (N'Default'),
	[PassWord] [nvarchar](1000) NOT NULL CONSTRAINT [passDefault]  DEFAULT ((0)),
	[Type] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bill]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[DateCheckIn] [date] NOT NULL DEFAULT (getdate()),
	[DateCheckOut] [date] NULL,
	[idTable] [int] NOT NULL,
	[status] [int] NOT NULL DEFAULT ((0)),
	[discount] [int] NULL DEFAULT ((0)),
	[totalPrice] [float] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idBill] [int] NOT NULL,
	[idFood] [int] NOT NULL,
	[count] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Food]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL DEFAULT (N'Chưa có tên món'),
	[idCategory] [int] NOT NULL,
	[price] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL DEFAULT (N'Chưa có tên loại món'),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TableFood]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TableFood](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL DEFAULT (N'Chưa có tên bàn'),
	[status] [nvarchar](100) NULL DEFAULT (N'Trống'),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'admin', N'Duy Anh AdminManager', N'admin', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'duyanh', N'Duy Anh Admin', N'duyanh', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'nv2', N'NV2', N'1', 0)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'nv3', N'NhanVien3', N'0', 0)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'staff', N'staffDemo', N'staff', 0)
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (41, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-20' AS Date), 1, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (42, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-20' AS Date), 1, 1, 5, 14250)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (43, CAST(N'2021-05-20' AS Date), CAST(N'2021-05-21' AS Date), 1, 1, 0, 223000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (44, CAST(N'2021-05-21' AS Date), CAST(N'2021-05-21' AS Date), 1, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (45, CAST(N'2021-05-21' AS Date), CAST(N'2021-05-22' AS Date), 3, 1, 10, 116100)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (47, CAST(N'2021-05-21' AS Date), CAST(N'2021-05-21' AS Date), 8, 1, 0, 75000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (48, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 21, 1, 0, 165000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (49, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 5, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (50, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 25, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (57, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 1, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (60, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 4, 1, 0, 100000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (61, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 8, 1, 0, 40000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (62, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 10, 1, 0, 50000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (64, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 10, 1, 0, 20000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (65, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 8, 1, 0, 125000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (66, CAST(N'2021-05-22' AS Date), NULL, 10, 0, 0, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (67, CAST(N'2021-05-22' AS Date), CAST(N'2021-05-22' AS Date), 8, 1, 10, 76500)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (68, CAST(N'2021-05-27' AS Date), CAST(N'2021-05-27' AS Date), 3, 1, 0, 120000)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (69, CAST(N'2021-05-27' AS Date), NULL, 15, 0, 0, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount], [totalPrice]) VALUES (70, CAST(N'2021-05-27' AS Date), CAST(N'2021-05-27' AS Date), 9, 1, 0, 50000)
SET IDENTITY_INSERT [dbo].[Bill] OFF
SET IDENTITY_INSERT [dbo].[BillInfo] ON 

INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (61, 41, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (62, 42, 5, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (63, 43, 1, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (64, 43, 2, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (65, 43, 6, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (66, 43, 11, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (67, 44, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (68, 47, 8, 3)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (69, 48, 10, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (70, 48, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (71, 48, 5, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (72, 48, 12, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (73, 45, 7, 3)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (75, 49, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (76, 50, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (87, 57, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (88, 61, 21, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (89, 60, 3, 5)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (90, 62, 8, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (91, 64, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (92, 65, 8, 5)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (93, 67, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (94, 67, 2, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (95, 67, 21, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (96, 67, 8, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (97, 68, 21, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (98, 68, 5, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (99, 68, 10, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (100, 70, 18, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (101, 70, 1, 1)
SET IDENTITY_INSERT [dbo].[BillInfo] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (1, N'Cafe đá', 1, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (2, N'Cafe sữa đá', 1, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (3, N'Sữa chưa dẻo dâu', 2, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (4, N'Sữa chưa dẻo đào', 2, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (5, N'Sinh tố khóm', 3, 15000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (6, N'CocaCola', 4, 13000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (7, N'Pepsi', 4, 13000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (8, N'Nước ép dâu', 5, 25000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (9, N'Mực nướng sa tế', 6, 160000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (10, N'Sườn xào chua ngọt', 7, 65000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (11, N'Bò nhúng giấm', 8, 150000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (12, N'Gà xào sả ớt', 9, 50000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (18, N'Cơm xào thịt bò', 10, 30000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (21, N'Machiato', 1, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (22, N'Machiato Latte', 1, 20000)
SET IDENTITY_INSERT [dbo].[Food] OFF
SET IDENTITY_INSERT [dbo].[FoodCategory] ON 

INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (1, N'Cafe')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (2, N'Sữa chua')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (3, N'Sinh tố')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (4, N'Nước ngọt')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (5, N'Nước ép trái cây')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (6, N'Hải sản')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (7, N'Heo')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (8, N'Bò')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (9, N'Gà')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (10, N'Cơm')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (12, N'Cá')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (33, N'Socola')
INSERT [dbo].[FoodCategory] ([id], [name]) VALUES (34, N'Hamburger')
SET IDENTITY_INSERT [dbo].[FoodCategory] OFF
SET IDENTITY_INSERT [dbo].[TableFood] ON 

INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (1, N'Bàn 1', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (2, N'Bàn 2', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (3, N'Bàn 3', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (4, N'Bàn 4', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (5, N'Bàn 5', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (6, N'Bàn 6', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (7, N'Bàn 7', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (8, N'Bàn 8', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (9, N'Bàn 9', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (10, N'Bàn 10', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (11, N'Bàn 11', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (12, N'Bàn 12', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (13, N'Bàn 13', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (14, N'Bàn 14', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (15, N'Bàn 15', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (16, N'Bàn 16', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (17, N'Bàn 17', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (18, N'Bàn 18', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (19, N'Bàn 19', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (20, N'Bàn 20', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (21, N'Bàn 21', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (22, N'Bàn 22', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (23, N'Bàn 23', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (24, N'Bàn 24', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (25, N'Bàn 25', N'Trống')
SET IDENTITY_INSERT [dbo].[TableFood] OFF
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD FOREIGN KEY([idTable])
REFERENCES [dbo].[TableFood] ([id])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([idBill])
REFERENCES [dbo].[Bill] ([id])
GO
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD FOREIGN KEY([idFood])
REFERENCES [dbo].[Food] ([id])
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD FOREIGN KEY([idCategory])
REFERENCES [dbo].[FoodCategory] ([id])
GO
/****** Object:  StoredProcedure [dbo].[GetListBillAll]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetListBillAll]
AS
BEGIN
	SELECT A.id AS[Mã hóa đơn], A.DateCheckIn AS[Ngày vào], A.DateCheckOut AS[Ngày ra], A.disCount AS[Giảm giá], A.totalPrice AS[Tổng tiền]
	FROM Bill AS A
	WHERE A.status = 1
END

GO
/****** Object:  StoredProcedure [dbo].[GetListBillByDate]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetListBillByDate]
@checkIn DATE, @checkOut DATE
AS
BEGIN
	SELECT f.name AS[Tên bàn], b.DateCheckIn AS[Ngày vào],b.DateCheckOut AS[Ngày ra],b.disCount AS[Giảm giá], b.totalPrice AS[Tổng tiền]
	FROM Bill AS b, TableFood AS f
	WHERE b.DateCheckIn >=@checkIn and b.DateCheckOut<=@checkOut and b.status=1 and f.id=b.idTable
END

GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertCategory]
@name nvarchar(100)
as
begin
insert into FoodCategory(name)
values(@name);
end

GO
/****** Object:  StoredProcedure [dbo].[InsertTable]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertTable]
@name nvarchar(100), @status nvarchar(100)
as
begin
insert into TableFood(name,status)
values(@name,@status);
end

GO
/****** Object:  StoredProcedure [dbo].[SwitchTable]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[SwitchTable]
@idTable1 int, @idTable2 int
as
begin
	declare @idFirstBill int
	declare @idSecondBill int

	declare @isFirstTableEmpty int =1
	declare @isSecondTableEmpty int =1

	select @idFirstBill=id from Bill where idTable=@idTable1 and status=0
	select @idSecondBill=id from Bill where idTable=@idTable2 and status=0
	if(@idSecondBill is null)
		begin
			insert into Bill(DateCheckIn,DateCheckOut,idTable,status)
			values(GETDATE(),null,@idTable2,0);
			select @idSecondBill=MAX(id) from Bill where idTable=@idTable2 and status=0
		end

	select @isSecondTableEmpty=count(*) from BillInfo where idBill=@idSecondBill

	if(@idFirstBill is null)
		begin
			insert into Bill(DateCheckIn,DateCheckOut,idTable,status)
			values(GETDATE(),null,@idTable1,0);
			select @idFirstBill=MAX(id) from Bill where idTable=@idTable1 and status=0
		end
	
	select @isFirstTableEmpty=count(*) from BillInfo where idBill=@idFirstBill 
	

	select id into IDBillInfoTable from BillInfo where idBill=@idSecondBill
	update BillInfo set idBill=@idSecondBill where idBill=@idFirstBill
	update BillInfo set idBill=@idFirstBill where id in(select * from IDBillInfoTable)
	drop table IDBillInfoTable
	if(@isFirstTableEmpty=0)
		update TableFood set status=N'Trống' where id=@idTable2
	if(@isSecondTableEmpty=0)
		update TableFood set status=N'Trống' where id=@idTable1
end

GO
/****** Object:  StoredProcedure [dbo].[UpdateFoodCategory]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateFoodCategory]
@id int, @name nvarchar(100)
as
begin
update FoodCategory set name=@name where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[UpdateTable]
@id int, @name nvarchar(100), @status nvarchar(100)
as
begin
update TableFood set name=@name, status=@status where id=@id
end

GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetAccountByUserName]
@username NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @username
END

GO
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetTableList]
AS
	SELECT * FROM dbo.TableFood

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--5 Proc thêm Bill
CREATE PROC [dbo].[USP_InsertBill]
@idTable INT
AS
BEGIN
	INSERT Bill(DateCheckIn, DateCheckOut, idTable, status, discount) VALUES (GETDATE(), NULL, @idTable, 0, 0)
END

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--6 Proc thêm BillInfo
CREATE PROC [dbo].[USP_InsertBillInfo]
@idBill INT, @idFood INT, @count INT
AS
BEGIN
	DECLARE @isExistBillInfo INT;
	DECLARE @foodCount INT = 1
	SELECT @isExistBillInfo = id, @foodCount = b.count
	FROM BillInfo AS b
	WHERE idBill = @idBill AND idFood = @idFood

	IF (@isExistBillInfo > 0)
		BEGIN
			DECLARE @newCount INT = @foodCount + @count
			IF(@newCount > 0)
				UPDATE BillInfo SET count = @foodCount + @count WHERE idFood = @idFood
			ELSE
				DELETE BillInfo WHERE idBill = @idBill AND idFood = @idFood 
		END
	ELSE 
		BEGIN
			INSERT INTO BillInfo(idBill, idFood, count) VALUES (@idBill, @idFood, @count)		
		END
END

GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_Login]
@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM Account WHERE UserName = @userName AND PassWord =  @passWord 
END

GO
/****** Object:  StoredProcedure [dbo].[USP_UpdateAccount]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_UpdateAccount]
@userName NVARCHAR(100), @displayName NVARCHAR(100), @password NVARCHAR(100), @newPassword NVARCHAR(100)
AS
BEGIN
	DECLARE @isRightPass INT = 0
	SELECT @isRightPass = COUNT(*) FROM Account WHERE UserName = @userName AND PassWord = @password
	IF(@isRightPass = 1)
	BEGIN
		IF(@newPassword = NULL OR @newPassword = '')
		BEGIN
			UPDATE Account SET DisplayName = @displayName WHERE UserName = @userName
		END
		ELSE
			UPDATE Account SET DisplayName = @displayName, PassWord = @newPassword WHERE UserName = @userName
	END
END

GO
/****** Object:  Trigger [dbo].[UpdateBill]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UpdateBill]
ON [dbo].[Bill] for UPDATE
AS
BEGIN
	DECLARE @idBill INT
	SELECT @idBill = id FROM inserted -- lay ra idBill khi insert vao

	DECLARE @idTable INT
	SELECT @idTable=idTable FROM Bill WHERE id=@idBill
	DECLARE @count INT =0
	SELECT @count=Count(*) FROM Bill WHERE idTable=@idTable AND status=0
	IF(@count=0)
		update TableFood SET status=N'Trống' WHERE id=@idTable;
END

GO
/****** Object:  Trigger [dbo].[UTG_DeleteBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[UTG_DeleteBillInfo]
on [dbo].[BillInfo] for delete
as
begin 
	declare @idBillInfo int
	declare @idBill int
	select @idBillInfo=id, @idBill=deleted.idBill from deleted

	declare @idTable int
	select @idTable=idTable from Bill where id=@idBill

	declare @count int =0
	select @count=count(*) from BillInfo as bi, Bill as b where b.id=bi.idBill and b.id=@idBill and b.status=0
	if(@count=0)
		update TableFood set status=N'Trống' where id=@idTable
end

GO
/****** Object:  Trigger [dbo].[UTG_UpdateBillInfo]    Script Date: 27/5/2021 8:19:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[UTG_UpdateBillInfo]
ON [dbo].[BillInfo] FOR INSERT, UPDATE
AS
BEGIN
	declare @idBill int
	select @idBill=idBill from inserted -- lay ra idBill khi insert vao

	declare @idTable int
	select @idTable=idTable from Bill where id=@idBill and status=0

	declare @count int
	select @count=count(*) from BillInfo where idBill=@idBill
	if(@count>0)
		update TableFood set status=N'Có người' where id=@idTable;
	else
		update TableFood set status=N'Trống' where id=@idTable;
END

GO
USE [master]
GO
ALTER DATABASE [QuanLyQuanCafe] SET  READ_WRITE 
GO
