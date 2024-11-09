----========== creating data base :============
 Create Database customerOrderinfo;

 --========================================

CREATE TABLE [Products](
	[ProductID] [int] IDENTITY(1,1) NOT NULL primary key ,
	[ProductName] [varchar](100) NOT NULL,
	[Description] [text] NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[StockQuantity] [int] NOT NULL,
	[CreatedAt] [timestamp] NOT NULL
);
truncate table products;
---alter table products drop column createdat;
---alter table products add  CreatedAt DATE;

insert into Products(ProductName,Description,Price,StockQuantity,CreatedAt)values('PeanutButter', '100% natural healthy& natural, high protein content '
, 225,1,'02-09-2024');




INSERT INTO Products (ProductName, Description, Price, StockQuantity, CreatedAt)
VALUES
('Almond Butter', 'Organic almond butter, rich in healthy fats and protein', 350, 2, '2023-07-07'),
('Protein Bar', 'High-protein snack bar with 20g of protein per serving', 200, 5, '2024-07-22'),
('Coconut Oil', 'Organic virgin coconut oil, ideal for cooking or smoothies', 380, 1, '2024-06-18');


INSERT INTO Products (ProductName, Description, Price, StockQuantity, CreatedAt)
VALUES
('Chia Seeds', 'Rich source of omega-3 fatty acids and fiber', 159.99, 150, '2024-08-15'),
('Quinoa', 'Organic quinoa, gluten-free and high in protein', 109.99, 120, '2024-09-01'),
('Greek Yogurt', 'Low-fat Greek yogurt, high in protein and probiotics', 65.49, 180, '2024-07-10'),
('Granola', 'Low-sugar granola with oats, nuts, and dried fruit', 75.99, 150, '2024-08-22'),
('Spiralized Zucchini', 'Pre-cut zucchini spirals for healthy pasta alternatives', 53.49, 100, '2024-06-30'),
('Kale Chips', 'Baked kale chips with a light sea salt seasoning', 72.99, 130, '2024-07-05'),
('Vegan Protein Powder', 'Plant-based protein powder with chocolate flavor', 129.99, 80, '2024-06-25'),
('Almond Milk', 'Unsweetened almond milk, low in calories and dairy-free', 54.99, 200, '2024-09-10'),
('Rice Cakes', 'Organic rice cakes, low-calorie and gluten-free', 61.99, 300, '2024-08-17'),
('Avocado Oil', 'Cold-pressed avocado oil, rich in healthy fats', 159.99, 50, '2024-07-19');


INSERT INTO Products (ProductName, Description, Price, StockQuantity, CreatedAt)
VALUES
('Matcha Powder', 'Premium organic matcha powder, great for smoothies and tea', 198.99, 60, '2024-10-01');


select * from Products

--=======================================================================================================================


-- creating state table 

create table [state](
id int IDENTITY(1,1) not null  primary key,
name [varchar](100) NOT NULL);

insert into state(name) values ('AndhraPradesh'),('Telangana'),
('Karnataka'),('Tamilnadu'),('Kerala'),('Maharastra');

select * from state

--================================================================================================
drop  table city
create table [dbo].[City](
id int IDENTITY(1,1) not null  primary key,
name [varchar](100) NOT NULL,
Stateid int not null FOREIGN KEY  REFERENCES [dbo].[state] (id));


-- Inserting city data with correct Stateid reference

INSERT INTO City (name, Stateid)
VALUES 
    ('Vijayawada', 1),
    ('Visakhapatnam', 1),
    ('Tirupati', 1),
    ('Hyderabad', 2),
    ('Karimnagar', 2),
    ('Bangalore', 3),
    ('Mysore', 3),
    ('Gulbarga', 3),
    ('Chennai', 4),
    ('Kochi', 5),
    ('Mumbai', 6),
    ('Pune', 6);  



select * from City;

--=========================================================


CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL primary key,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Phone] [varchar](15) NULL,
	[Address] [varchar](255) NULL,
	[CityId] int  not NULL FOREIGN KEY(CityId) REFERENCES [dbo].[city] (id),
	[StateId] int not NULL FOREIGN KEY(StateId) REFERENCES [dbo].[State] (id),
	[ZipCode] [varchar](10) NULL,
	[CreatedAt] [date] NOT NULL);


	insert into Customers values('Venkatasai','kanala','kanalavenkatasai@gamil.com','7032661163',
	'1-171-1,brahminstreet',3,1,517123,'2023-08-07')

	INSERT INTO [dbo].[Customers] (FirstName, LastName, Email, Phone, Address, CityId, StateId, ZipCode, CreatedAt)VALUES
('vedika','bangaru','vedikabangaru@gmail.com','9845269230','1-232-1,gandhinagar',1,1,'532123','2024-08-21'),

('shalini','bhaskar','shalu213@gmail.com','8897521650','#12-323',9,4,'560023','2023-04-19'),
('asmitha','padmavathi','asmithapad@gmail.com','9980524560','#12,2-211,',11,6,'570023','2023-12-24'),
('sravya','rao','sravyarao.t@gmail.com','8883923230','#32,230',4,2,'590023','2024-10-23')



-- Inserting records into Customers table
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address, CityId, StateId, ZipCode, CreatedAt)
VALUES
('Vikram', 'Verma', 'vikram.verma@example.com', '9876543280', '321,23,Dellroad', 1, 1, '520001', '2023-01-10'),
('Ananya', 'Iyer', 'ananya.iyer@example.com', '9876543281', '#1/23 Birlaroad', 2, 1, '520002', '2023-02-12'),
('Arjun', 'Patel', 'arjun.patel@example.com', '9876543282', '323,KT road ', 3, 1, '520003', '2023-03-15'),
('Ravi', 'Kumar', 'ravi.kumar@example.com', '9876543283', '#1 323,jublihills', 4, 2, '500001', '2023-04-20'),
('Divya', 'Mehta', 'divya.mehta@example.com', '9876543284', '#21,meharroad 5', 5, 2, '505001', '2023-05-10'),
('Kiran', 'Singh', 'kiran.singh@example.com', '9876543285', '#12-3,Street 6', 6, 3, '560001', '2024-10-21')



select *  from  Customers;


--=========================
cREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL primary key,
	[CustomerID] [int] NULL FOREIGN KEY(CustomerID) REFERENCES [dbo].[Customers] (CustomerID),
	[OrderDate] [date] NOT NULL,
	[TotalAmount] [decimal](10, 2) NULL,
	[Status] [varchar](50) NULL);

	--- alter table orders add [Status] [varchar](50) NULL;
	SELECT * FROM Customers;
	SELECT * FROM Customers WHERE CustomerID IN (22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32);

	INSERT INTO [dbo].[Orders] (CustomerID, OrderDate, TotalAmount, Status)
VALUES
(22, '2024-11-09', 500.00, 'Pending'),
(23, '2024-11-08', 750.00, 'Shipped'),
(24, '2024-11-07', 1200.00, 'Delivered'),
(25, '2024-11-06', 300.00, 'Pending'),
(26, '2024-11-05', 950.00, 'Shipped'),
(27, '2024-11-04', 450.00, 'Pending'),
(28, '2024-11-03', 600.00, 'Shipped'),
(29, '2024-11-02', 700.00, 'Delivered'),
(30, '2024-11-01', 800.00, 'Pending'),
(31, '2024-10-30', 550.00, 'Pending'),
(32, '2024-10-29', 900.00, 'Shipped');




select * from orders


	



	
	--===============================================================================================================================


CREATE TABLE [dbo].[OrderItems](
	[OrderItemID] [int] IDENTITY(1,1) NOT NULL primary key,
	[OrderID] [int] NULL FOREIGN KEY(OrderID) REFERENCES [dbo].Orders (OrderID),
	[ProductID] [int] NULL FOREIGN KEY(ProductId) REFERENCES [dbo].Products (ProductId),
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](10, 2) NOT NULL)


	INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 2, 225.00);  -- OrderID 1, ProductID 1, Quantity 2, UnitPrice 225.00



	select * from OrderItems;


	-- Inserting data into OrderItems table

	-- Order 1 (Customer 22)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(1, 1, 2, 225.00),  -- Peanut Butter
(1, 2, 1, 350.00);  -- Almond Butter

-- Order 2 (Customer 23)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(2, 3, 3, 200.00),  -- Protein Bar
(2, 4, 2, 380.00);  -- Coconut Oil

-- Order 3 (Customer 24)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(3, 5, 5, 159.99),  -- Chia Seeds
(3, 6, 4, 109.99);  -- Quinoa

-- Order 4 (Customer 25)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(4, 7, 3, 65.49),  -- Greek Yogurt
(4, 8, 2, 75.99);  -- Granola

-- Order 5 (Customer 26)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(5, 9, 6, 53.49),  -- Spiralized Zucchini
(5, 10, 3, 72.99);  -- Kale Chips

-- Order 6 (Customer 27)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(6, 11, 1, 129.99), -- Vegan Protein Powder
(6, 12, 4, 54.99); -- Almond Milk

-- Order 7 (Customer 28)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(7, 13, 2, 61.99), -- Rice Cakes
(7, 14, 3, 159.99); -- Avocado Oil

-- Order 8 (Customer 29)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(8, 15, 1, 198.99); -- Matcha Powder

-- Order 9 (Customer 30)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(9, 1, 2, 225.00), -- Peanut Butter
(9, 5, 3, 159.99); -- Chia Seeds

-- Order 10 (Customer 31)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(10, 3, 4, 200.00), -- Protein Bar
(10, 7, 1, 65.49); -- Greek Yogurt

-- Order 11 (Customer 32)
INSERT INTO [dbo].[OrderItems] (OrderID, ProductID, Quantity, UnitPrice)
VALUES
(11, 6, 2, 109.99), -- Quinoa
(11, 9, 1, 53.49); -- Spiralized Zucchini



	SELECT * FROM [dbo].[Orders];
SELECT * FROM [dbo].[OrderItems];
