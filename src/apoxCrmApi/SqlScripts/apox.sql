IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'apox') BEGIN EXEC('CREATE SCHEMA apox') END
GO 


--Drop all tables
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'orderDetails') DROP TABLE apox.orderDetails
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'orders') DROP TABLE apox.orders
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'customers') DROP TABLE apox.customers

--Customers
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'customers') DROP TABLE apox.customers
GO
CREATE TABLE apox.Customers (
	id				int		NOT NULL	IDENTITY(1, 1) PRIMARY KEY,	
	vat				nvarchar(100)	NOT NULL	UNIQUE,	
	email			nvarchar(100)	NOT NULL,		
	firstName		nvarchar(100)	NULL,
	lastName		nvarchar(100)	NULL,
	phone			nvarchar(100)	NULL,
	address			nvarchar(100)	NULL,
	statusId		int				DEFAULT NULL, --REFERENCES CustomerStatus(Id),
	ratingId		int				DEFAULT NULL --REFERENCES CustomerRating(Id),
);
GO
--SELECT * FROM apox.Customers

DELETE apox.Customers
SET IDENTITY_INSERT apox.Customers ON
GO
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 1, '1235064695','johndoe1@gmail.com','John','Doe','6902064695','Larisis 54,Athens',1,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 2, '1235364691','maryfoe@gmail.com','Mary','Foe','6905364695','Panormou 54,Athens',2,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 3, '1235664692','billdem@gmail.com','Bill','Test','6907064695','Propontidos 64,Piraeus',1,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 4, '1235264693','frankcass@gmail.com','Frank','Cass','6909064695','Meandroupoleos 24,Athens',3,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 5, '1235864694','raycarl@gmail.com','Ray','Carl','6934084695','Larisis 74,Athens',2,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 6, '1245864694','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 7, '1665064695','johndoe1@gmail.com','John','Doe','6902064695','Larisis 54,Athens',1,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 8, '1775364691','maryfoe@gmail.com','Mary','Foe','6905364695','Panormou 54,Athens',2,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 9, '1885664692','billdem@gmail.com','Bill','Test','6907064695','Propontidos 64,Piraeus',1,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 10,'1455264693','frankcass@gmail.com','Frank','Cass','6909064695','Meandroupoleos 24,Athens',3,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 11,'1935864694','raycarl@gmail.com','Ray','Carl','6934084695','Larisis 74,Athens',2,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 12,'1648864694','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 13,'1345864694','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 14,'3456064695','johndoe1@gmail.com','John','Doe','6902064695','Larisis 54,Athens',1,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 15,'1235455678','maryfoe@gmail.com','Mary','Foe','6905364695','Panormou 54,Athens',2,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 16,'1235667232','billdem@gmail.com','Bill','Test','6907064695','Propontidos 64,Piraeus',1,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 17,'1235234283','frankcass@gmail.com','Frank','Cass','6909064695','Meandroupoleos 24,Athens',3,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 18,'1235864342','raycarl@gmail.com','Ray','Carl','6934084695','Larisis 74,Athens',2,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 19,'1445864111','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 20,'1245864342','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 21,'1535067735','johndoe1@gmail.com','John','Doe','6902064695','Larisis 54,Athens',1,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 22,'1235345591','maryfoe@gmail.com','Mary','Foe','6905364695','Panormou 54,Athens',2,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 23,'1278364692','billdem@gmail.com','Bill','Test','6907064695','Propontidos 64,Piraeus',1,3
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 24,'1236476893','frankcass@gmail.com','Frank','Cass','6909064695','Meandroupoleos 24,Athens',3,1
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 25,'1235464694','raycarl@gmail.com','Ray','Carl','6934084695','Larisis 74,Athens',2,2
INSERT apox.Customers (id, vat,email,firstName,lastName,phone,address,statusId,ratingId) SELECT 26,'2342364694','raycarl@gmail.com','Apox','Kapa','6934084695','Larisis 34,Athens',3,3
GO
SET IDENTITY_INSERT apox.Customers OFF
GO

--Orders
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'orders') DROP TABLE apox.orders
GO
CREATE TABLE apox.orders (
	id				int				NOT NULL	IDENTITY(1, 1) PRIMARY KEY,	
	customerId		int				NOT NULL    ,--REFERENCES Customers(Id),
	number			nvarchar(100)	NOT NULL	UNIQUE,
	descr			nvarchar(500)	NOT NULL,
	date			datetime		NOT NULL
);
GO

DELETE apox.orders
SET IDENTITY_INSERT apox.orders ON
GO
INSERT apox.orders (id,customerId,number,descr,date) SELECT 1,1,'O23241','Order O23241','2016-10-16'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 2,2,'O23242','Order O23242','2016-10-26'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 3,3,'O23243','Order O23243','2016-09-13'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 4,4,'O23244','Order O23244','2016-12-06'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 5,1,'O23245','Order O23245','2016-11-11'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 6,5,'O23246','Order O23246','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 7,1,'O23247','Order O23247','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 8,2,'O23248','Order O23248','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 9,2,'O23249','Order O23249','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 10,4,'O23210','Order O23210','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 11,2,'O23211','Order O23211','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 12,3,'O23212','Order O23212','2016-11-12'
INSERT apox.orders (id,customerId,number,descr,date) SELECT 13,5,'O23213','Order O23213','2016-11-12'
GO
SET IDENTITY_INSERT apox.orders OFF
GO


--OrderDetails
IF EXISTS (SELECT table_name FROM information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'orderDetails') DROP TABLE apox.orderDetails
GO
CREATE TABLE apox.orderDetails (
	id				int				NOT NULL	IDENTITY(1, 1) PRIMARY KEY,	
	orderId			int				NOT NULL	,--REFERENCES Orders(id) ON DELETE CASCADE,
	product			nvarchar(100)	NOT NULL,
	quantity		int   			NULL,
	price			money			NULL
);
GO




--Customer Status
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'customerStatus') DROP TABLE apox.customerStatus
GO
CREATE TABLE apox.customerStatus (
	id				int				NOT NULL IDENTITY(1, 1) PRIMARY KEY,	
	descr	nvarchar(100)			NOT NULL

);
GO

DELETE apox.customerStatus
SET IDENTITY_INSERT apox.customerStatus ON
GO
INSERT apox.customerStatus (id,descr) SELECT 1,'Active'
INSERT apox.customerStatus (id,descr) SELECT 2,'Inactive'
INSERT apox.customerStatus (id,descr) SELECT 3,'Frozen'
GO
SET IDENTITY_INSERT apox.customerStatus OFF

--SELECT id,descr FROM apox.customerStatus



--Customer Rating
IF EXISTS (SELECT table_name FROM   information_schema.tables WHERE  table_schema = 'apox' AND table_name = 'customerRating') DROP TABLE apox.customerRating
GO
CREATE TABLE apox.customerRating (
	id		int						NOT NULL IDENTITY(1, 1) PRIMARY KEY,	
	descr	nvarchar(100)			NOT NULL

);
GO

DELETE apox.customerRating
SET IDENTITY_INSERT apox.customerRating ON
GO
INSERT apox.customerRating (id,descr) SELECT 1,'Excelent'
INSERT apox.customerRating (id,descr) SELECT 2,'Average'
INSERT apox.customerRating (id,descr) SELECT 3,'Bad'
GO
SET IDENTITY_INSERT apox.customerRating OFF


--SELECT id,descr FROM apox.customerRating
