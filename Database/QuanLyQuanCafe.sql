CREATE DATABASE QuanLyQuanCafe
GO

USE QuanLyQuanCafe
GO

--###TABLE OF DATABASE###--
--TABLE
--FOOD
--CATEGORY FOOD
--Bill
--BillDetails
--Account

CREATE TABLE TableFood
(
	id INT IDENTITY PRIMARY KEY,
	Name NVARCHAR(100) DEFAULT N'Chưa có tên bàn',
	status NVARCHAR(100) DEFAULT N'Trống'
)
GO

CREATE TABLE Account
(
	UserName NVARCHAR(100) PRIMARY KEY,
	DisplayName NVARCHAR(100) NOT NULL DEFAULT N'Default',
	PassWord NVARCHAR(1000) NOT NULL DEFAULT 0, --PassWord
	Type INT NOT NULL DEFAULT 0	--Type 1 admin 0 staff
)
GO

INSERT INTO Account(UserName, DisplayName, PassWord, Type)
VALUES ('admin', N'Duy Anh', 'admin', 1)
GO

INSERT INTO Account(UserName, DisplayName, PassWord, Type)
VALUES ('staff', N'Duy Anh Staff', 'staff', 1)
GO

CREATE TABLE FoodCategory 
(
	id INT IDENTITY PRIMARY KEY, 
	name NVARCHAR(100) DEFAULT N'Chưa có tên loại món'
)
GO

INSERT FoodCategory (name)
VALUES (N'Cafe')

INSERT FoodCategory (name)
VALUES (N'Sữa chua')

INSERT FoodCategory (name)
VALUES (N'Sinh tố')

INSERT FoodCategory (name)
VALUES (N'Nước ngọt')

INSERT FoodCategory (name)
VALUES (N'Nước ép trái cây')

INSERT FoodCategory (name)
VALUES (N'Hải sản')

INSERT FoodCategory (name)
VALUES (N'Heo')

INSERT FoodCategory (name)
VALUES (N'Bò')

INSERT FoodCategory (name)
VALUES (N'Gà')

INSERT FoodCategory (name)
VALUES (N'Cơm')

CREATE TABLE Food
(
	id INT IDENTITY PRIMARY KEY,
	name NVARCHAR(100) NOT NULL DEFAULT N'Chưa có tên món',
	idCategory INT NOT NULL,
	price FLOAT NOT NULL,
	FOREIGN KEY (idCategory) REFERENCES FoodCategory(id)
)
GO

INSERT Food (name, idCategory, price)
VALUES (N'Cafe đá', 1, 15000)

INSERT Food (name, idCategory, price)
VALUES (N'Cafe sữa đá', 1, 20000)

INSERT Food (name, idCategory, price)
VALUES (N'Sữa chưa dẻo dâu', 2, 18000)

INSERT Food (name, idCategory, price)
VALUES (N'Sữa chưa dẻo đào', 2, 18000)

INSERT Food (name, idCategory, price)
VALUES (N'Sinh tố khóm', 3, 15000)

INSERT Food (name, idCategory, price)
VALUES (N'CocaCola', 4, 13000)

INSERT Food (name, idCategory, price)
VALUES (N'Pepsi', 4, 13000)

INSERT Food (name, idCategory, price)
VALUES (N'Nước ép dâu', 5, 25000)

INSERT Food (name, idCategory, price)
VALUES (N'Mực nướng sa tế', 6, 160000)

INSERT Food (name, idCategory, price)
VALUES (N'Sườn xào chua ngọt', 7, 65000)

INSERT Food (name, idCategory, price)
VALUES (N'Bò nhúng giấm', 8, 150000)

INSERT Food (name, idCategory, price)
VALUES (N'Gà xào sả ớt', 9, 50000)

INSERT Food (name, idCategory, price)
VALUES (N'Cơm chiên dương châu', 10, 30000)

CREATE TABLE Bill 
(
	id INT IDENTITY PRIMARY KEY,
	DateCheckIn DATE NOT NULL DEFAULT GETDATE(),
	DateCheckOut DATE,
	idTable INT NOT NULL,
	status INT NOT NULL DEFAULT 0 --status
	FOREIGN KEY (idTable) REFERENCES TableFood(id)
 )
GO

ALTER TABLE Bill
ADD  totalPrice FLOAT DEFAULT 0
GO

ALTER TABLE Bill
ALTER COLUMN DateCheckOut DATE NULL
GO


--Thêm Bill
INSERT Bill(DateCheckIn, DateCheckOut, idTable, status)
VALUES (GETDATE(), NULL, 1, 0)
GO


INSERT Bill(DateCheckIn, DateCheckOut, idTable, status)
VALUES (GETDATE(), NULL, 2, 0)
GO


INSERT Bill(DateCheckIn, DateCheckOut, idTable, status)
VALUES (GETDATE(), GETDATE(), 2, 1)
GO


CREATE TABLE BillInfo --BillInfo
(
	id INT IDENTITY PRIMARY KEY,
	idBill INT NOT NULL,
	idFood INT NOT NULL,
	count INT NOT NULL DEFAULT 0 --count
	FOREIGN KEY (idBill) REFERENCES Bill(id),
	FOREIGN KEY (idFood) REFERENCES Food(id)
)
GO

--Thêm billInfo
INSERT BillInfo(idBill, idFood, count)
VALUES (4, 1, 2)
GO

INSERT BillInfo(idBill, idFood, count)
VALUES (4, 2, 2)
GO

INSERT BillInfo(idBill, idFood, count)
VALUES (5, 1, 2)
GO

INSERT BillInfo(idBill, idFood, count)
VALUES (5, 6, 2)
GO

INSERT BillInfo(idBill, idFood, count)
VALUES (3, 5, 2)
GO


--1. Proc lấy ra toàn bộ tài khoản bằng UserName
CREATE PROC USP_GetAccountByUserName
@username NVARCHAR(100)
AS
BEGIN
	SELECT * FROM dbo.Account WHERE UserName = @username
END
GO

EXEC USP_GetAccountByUserName @username = 'admin'
GO

SELECT * FROM Account WHERE UserName = 'admin' AND PassWord = 'admin'
GO

--2. Proc đăng nhập login truyền tham số
CREATE PROC USP_Login
@userName nvarchar(100), @passWord nvarchar(100)
AS
BEGIN
	SELECT * FROM Account WHERE UserName = @userName AND PassWord =  @passWord 
END
GO

--3. Thêm bàn ăn
DECLARE @i INT = 16

WHILE @i <= 30
BEGIN 
	INSERT dbo.TableFood (name) VALUES (N'Bàn ' + CAST(@i AS nvarchar(100)))
	SET @i = @i + 1
END
GO

SELECT * FROM TableFood
GO

--4 Lấy ra danh sách bàn ăn
CREATE PROC USP_GetTableList
AS
	SELECT * FROM dbo.TableFood
GO

EXEC USP_GetTableList
GO


--5 Proc thêm Bill
ALTER PROC USP_InsertBill
@idTable INT
AS
BEGIN
	INSERT Bill(DateCheckIn, DateCheckOut, idTable, status, discount) VALUES (GETDATE(), NULL, @idTable, 0, 0)
END
GO

--6 Proc thêm BillInfo
ALTER PROC USP_InsertBillInfo
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

--7 Trigger Update cho BillInfo
CREATE TRIGGER UTG_UpdateBillInfo --DONE
ON BillInfo FOR INSERT, UPDATE
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

--8 Trigger Update cho Bill
CREATE TRIGGER UpdateBill --DONE
ON Bill for UPDATE
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

--9 Trigger Delete Bill Info
create trigger UTG_DeleteBillInfo --DONE
on BillInfo for delete
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
go

--10 Proc thêm danh mục thức ăn
create proc InsertCategory
@name nvarchar(100)
as
begin
insert into FoodCategory(name)
values(@name);
end
go

--11 Proc cập nhật danh mục
create proc UpdateFoodCategory
@id int, @name nvarchar(100)
as
begin
update FoodCategory set name=@name where id=@id
end
go

--12 Proc thêm bàn
create proc InsertTable
@name nvarchar(100), @status nvarchar(100)
as
begin
insert into TableFood(name,status)
values(@name,@status);
end
go

--13 Proc cập nhật bàn
create proc UpdateTable
@id int, @name nvarchar(100), @status nvarchar(100)
as
begin
update TableFood set name=@name, status=@status where id=@id
end
go


--14 Proc chuyển bàn

CREATE PROC SwitchTable
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
go

--15 Proc lấy ra danh sách hóa đơn từ ngày đến ngày
CREATE PROC GetListBillByDate
@checkIn DATE, @checkOut DATE
AS
BEGIN
	SELECT f.name AS[Tên bàn], b.DateCheckIn AS[Ngày vào],b.DateCheckOut AS[Ngày ra],b.disCount AS[Giảm giá], b.totalPrice AS[Tổng tiền]
	FROM Bill AS b, TableFood AS f
	WHERE b.DateCheckIn >=@checkIn and b.DateCheckOut<=@checkOut and b.status=1 and f.id=b.idTable
END
GO

EXEC GetListBillByDate '20210520','20210520'

--16 Proc cập nhật tài khoản
CREATE PROC USP_UpdateAccount
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

--17 Proc lấy ra toàn bộ hóa đơn
CREATE PROC GetListBillAll
AS
BEGIN
	SELECT A.id AS[Mã hóa đơn], A.DateCheckIn AS[Ngày vào], A.DateCheckOut AS[Ngày ra], A.disCount AS[Giảm giá], A.totalPrice AS[Tổng tiền]
	FROM Bill AS A
	WHERE A.status = 1
END
GO


--Them cot giam gia vao Bill
ALTER TABLE Bill
ADD discount INT DEFAULT 0
GO

update Bill set disCount=0 WHERE discount IS NULL
go


SELECT * FROM Account

SELECT * FROM Bill
SELECT * FROM BillInfo
SELECT * FROM Food
SELECT * FROM FoodCategory

SELECT B.name AS [Tên danh mục],A.name AS [Tên món], A.price AS [Giá]
FROM Food AS A, FoodCategory AS B
WHERE A.idCategory = B.id

INSERT INTO Account(UserName, DisplayName,PassWord , Type)
VALUES ('nv2', N'NV2', '12345' ,0)