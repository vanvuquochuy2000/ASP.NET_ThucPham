CREATE DATABASE DsDACSAN
GO
USE DsDACSAN
GO
CREATE TABLE Products
(
ProductID int primary key identity,
Name nvarchar(500),
Price int,
ImageURL varchar(500)
)
delete Products

CREATE TABLE DATHANG
(	
	MaSP char(10),
	TenSP nvarchar(50),
	SoLuong char(10),
	GiaTien char(100)
)
CREATE TABLE THANHVIENN
(
MaTV nvarchar(50) primary key,
TenTV nvarchar(500),
DiaChi nvarchar(100),
SĐT char(12),
GioiTinh nvarchar(5)
)
GO

INSERT INTO Products VALUES (N'Bánh tráng Mỹ Lồng',80000,'images/01.jpg');
INSERT INTO Products VALUES (N'Bánh phồng Sơn Đốc',70000,'images/02.jpg');
INSERT INTO Products VALUES (N'Chuối đập',3000,'images/03.jpg');
INSERT INTO Products VALUES (N'Bánh xèo ốc gạo',20000,'images/04.jpg');
INSERT INTO Products VALUES (N'Bánh canh bột xắt',35000,'images/05.jpg');
INSERT INTO Products VALUES (N'Chuột dừa',50000,'images/06.jpg');
INSERT INTO Products VALUES (N'Đuông dừa',40000,'images/07.jpg');
INSERT INTO Products VALUES (N'Cháo cua đồng',35000,'images/08.jpg');
INSERT INTO Products VALUES (N'Kẹo dừa',60000,'images/09.jpg');
INSERT INTO Products VALUES (N'Bì cuốn',7000,'images/10.jpg');
INSERT INTO Products VALUES (N'Rượu dừa',11000,'images/11.jpg');
INSERT INTO Products VALUES (N'Cơm dừa tôm rang',55000,'images/12.jpg');
INSERT INTO Products VALUES (N'Canh chua cá linh',100000,'images/13.jpg');
INSERT INTO Products VALUES (N'Lẩu cháo cua đồng',150000,'images/14.jpg');
INSERT INTO Products VALUES (N'Củ hũ dừa',10000,'images/15.jpg');
INSERT INTO Products VALUES (N'Bánh tráng sữa',5000,'images/16.jpg');
INSERT INTO Products VALUES (N'Bánh xèo củ hủ dừa',20000,'images/17.jpg');
INSERT INTO Products VALUES (N'Gỏi củ hủ dừa',25000,'images/18.jpg');
INSERT INTO Products VALUES (N'Bánh canh nước dừa',35000,'images/19.jpg');
INSERT INTO Products VALUES (N'Cơm dừa',55000,'images/20.jpg');
INSERT INTO Products VALUES (N'Cháo dừa',35000,'images/21.jpg');
INSERT INTO Products VALUES (N'Canh gà lá cách',35000,'images/22.jpg');
INSERT INTO Products VALUES (N'Nấm mối muối ớt',120000,'images/23.jpg');
INSERT INTO Products VALUES (N'Tép rang dừa',45000,'images/24.jpg');
INSERT INTO Products VALUES (N'Mắm lóc chưng dừa',55000,'images/25.jpg');

