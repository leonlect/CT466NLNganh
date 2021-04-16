USE [QuanLyQuanCafe]
GO
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[USP_Login]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[USP_InsertBillInfo]
GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[USP_InsertBill]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[USP_GetTableList]
GO
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[USP_GetAccountByUserName]
GO
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[UpdateTable]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFoodCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[UpdateFoodCategory]
GO
/****** Object:  StoredProcedure [dbo].[InsertTable]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[InsertTable]
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP PROCEDURE [dbo].[InsertCategory]
GO
ALTER TABLE [dbo].[Food] DROP CONSTRAINT [FK__Food__idCategory__1BFD2C07]
GO
ALTER TABLE [dbo].[BillInfo] DROP CONSTRAINT [FK__BillInfo__idFood__25869641]
GO
ALTER TABLE [dbo].[BillInfo] DROP CONSTRAINT [FK__BillInfo__count__24927208]
GO
ALTER TABLE [dbo].[Bill] DROP CONSTRAINT [FK__Bill__status__20C1E124]
GO
/****** Object:  Table [dbo].[TableFood]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[TableFood]
GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[FoodCategory]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[Food]
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[BillInfo]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[Bill]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16/4/2021 1:27:59 PM ******/
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 16/4/2021 1:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL DEFAULT (N'Default'),
	[PassWord] [nvarchar](1000) NOT NULL,
	[Type] [int] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bill]    Script Date: 16/4/2021 1:27:59 PM ******/
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
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  Table [dbo].[Food]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  Table [dbo].[TableFood]    Script Date: 16/4/2021 1:27:59 PM ******/
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
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'admin', N'Duy Anh', N'admin', 1)
INSERT [dbo].[Account] ([UserName], [DisplayName], [PassWord], [Type]) VALUES (N'staff', N'Duy Anh Staff', N'staff', 1)
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (3, CAST(N'2021-04-15' AS Date), CAST(N'2021-04-15' AS Date), 2, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (4, CAST(N'2021-04-15' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (5, CAST(N'2021-04-15' AS Date), NULL, 2, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (6, CAST(N'2021-04-15' AS Date), NULL, 3, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (7, CAST(N'2021-04-15' AS Date), NULL, 4, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (8, CAST(N'2021-04-15' AS Date), NULL, 5, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (9, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (10, CAST(N'2021-04-16' AS Date), NULL, 2, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (11, CAST(N'2021-04-16' AS Date), NULL, 3, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (12, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (13, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (14, CAST(N'2021-04-16' AS Date), NULL, 13, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (15, CAST(N'2021-04-16' AS Date), NULL, 7, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (16, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 50)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (17, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 10)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (18, CAST(N'2021-04-16' AS Date), NULL, 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (19, CAST(N'2021-04-16' AS Date), NULL, 2, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (20, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (21, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (22, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (23, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 2, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (24, CAST(N'2021-04-16' AS Date), NULL, 3, 0, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (25, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 10)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (26, CAST(N'2021-04-16' AS Date), NULL, 2, 0, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (27, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 0)
INSERT [dbo].[Bill] ([id], [DateCheckIn], [DateCheckOut], [idTable], [status], [discount]) VALUES (28, CAST(N'2021-04-16' AS Date), CAST(N'2021-04-16' AS Date), 1, 1, 0)
SET IDENTITY_INSERT [dbo].[Bill] OFF
SET IDENTITY_INSERT [dbo].[BillInfo] ON 

INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (5, 3, 5, 4)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (7, 3, 5, 4)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (10, 5, 1, 6)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (11, 5, 6, 4)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (12, 6, 3, 4)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (14, 6, 1, 6)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (15, 8, 10, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (18, 5, 5, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (19, 9, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (20, 10, 1, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (21, 11, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (22, 12, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (23, 13, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (24, 14, 1, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (25, 15, 2, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (26, 16, 1, 2)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (27, 17, 6, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (28, 18, 8, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (29, 19, 8, 5)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (30, 20, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (31, 21, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (33, 23, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (36, 22, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (38, 25, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (40, 27, 1, 1)
INSERT [dbo].[BillInfo] ([id], [idBill], [idFood], [count]) VALUES (41, 28, 18, 1)
SET IDENTITY_INSERT [dbo].[BillInfo] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (1, N'Cafe đá', 1, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (2, N'Cafe sữa đá', 1, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (3, N'Sữa chưa dẻo dâu', 2, 20000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (4, N'Sữa chưa dẻo đào', 2, 18000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (5, N'Sinh tố khóm', 3, 15000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (6, N'CocaCola', 4, 13000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (7, N'Pepsi', 4, 13000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (8, N'Nước ép dâu', 5, 25000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (9, N'Mực nướng sa tế', 6, 160000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (10, N'Sườn xào chua ngọt', 7, 65000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (11, N'Bò nhúng giấm', 8, 150000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (12, N'Gà xào sả ớt', 9, 50000)
INSERT [dbo].[Food] ([id], [name], [idCategory], [price]) VALUES (18, N'Cơm xào thịt bò', 10, 30000)
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
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (26, N'Bàn 26', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (27, N'Bàn 27', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (28, N'Bàn 28', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (29, N'Bàn 29', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (30, N'Bàn 30', N'Trống')
INSERT [dbo].[TableFood] ([id], [Name], [status]) VALUES (31, N'Bàn 31', N'Trống')
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
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[InsertTable]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateFoodCategory]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateTable]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetAccountByUserName]    Script Date: 16/4/2021 1:27:59 PM ******/
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
/****** Object:  StoredProcedure [dbo].[USP_GetTableList]    Script Date: 16/4/2021 1:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_GetTableList]
AS
	SELECT * FROM dbo.TableFood

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBill]    Script Date: 16/4/2021 1:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_InsertBill]
@idTable INT
AS
BEGIN
	INSERT Bill(DateCheckIn, DateCheckOut, idTable, status, discount) VALUES (GETDATE(), NULL, @idTable, 0, 0)
END

GO
/****** Object:  StoredProcedure [dbo].[USP_InsertBillInfo]    Script Date: 16/4/2021 1:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
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
/****** Object:  StoredProcedure [dbo].[USP_Login]    Script Date: 16/4/2021 1:27:59 PM ******/
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
