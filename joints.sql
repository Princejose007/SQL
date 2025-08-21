
use basic;

CREATE TABLE Customers (
custid INT PRIMARY KEY,
custname VARCHAR(255),
contactperson VARCHAR(255),
region VARCHAR(255)
);

CREATE TABLE Orders (
orderid INT PRIMARY KEY,
custid INT,
orderdate DATE,
FOREIGN KEY (custid) REFERENCES Customers(custid)
);

INSERT INTO Customers (CustID, CustName, ContactPerson, Region) VALUES
(1, 'Kerala Spices', 'prince', 'India'),
(2, 'Malabar Foods', 'aron', 'India'),
(3, 'Tropical Treats', 'das', 'Sri Lanka'),
(4, 'Spice Route', 'anjo', 'UAE');

INSERT INTO Orders (OrderID, CustID, OrderDate) VALUES
(101, 1, '2025-08-01'),
(102, 2, '2025-08-03');

SELECT 
Customers.custid,
Customers.custname,
Orders.orderid,
Orders.orderdate
FROM Customers
INNER JOIN Orders ON Customers.custid = Orders.custid;


#Left join

SELECT 
  customers.custid,
  customers.custname,
  orders.orderid,
  orders.orderdate
FROM customers
LEFT JOIN orders ON customers.custid = orders.custid;


#right join

select
  customers.custid,
  customers.custname,
  orders.orderid,
  orders.orderdate
FROM customers
right join orders On customers.custid = orders.custid;

#union
CREATE TABLE OnlineCustomers (
  custid INT,
  custname VARCHAR(100),
  region VARCHAR(50)
);

CREATE TABLE OfflineCustomers (
  custid INT,
  custname VARCHAR(100),
  region VARCHAR(50)
);

INSERT INTO OnlineCustomers (custid, custname, region) VALUES
(1, 'Kerala Spices', 'India'),
(2, 'Malabar Foods', 'India'),
(3, 'Tropical Treats', 'Sri Lanka');

INSERT INTO OfflineCustomers (custid, custname, region) VALUES
(2, 'Malabar Foods', 'India'),
(4, 'Spice Route', 'UAE'),
(5, 'Ceylon Delights', 'Sri Lanka');

SELECT custid, custname, region FROM OnlineCustomers
UNION
SELECT custid, custname, region FROM OfflineCustomers;

#self joint


CREATE TABLE Employees (
  empid INT,
  empname VARCHAR(100),
  managerid INT
);


INSERT INTO Employees (empid, empname, managerid) VALUES
(1, 'Prince', NULL),        
(2, 'Arya', 1),
(3, 'Ravi', 1),
(4, 'Sneha', 2),
(5, 'Kiran', 2),
(6, 'Meera', 3);

SELECT 
  e.empname AS Employee,
  m.empname AS Manager
FROM 
  Employees e
LEFT JOIN 
  Employees m ON e.managerid = m.empid;
  
  
  CREATE TABLE Employeees (
  empid INT PRIMARY KEY,
  empname VARCHAR(50),
  managerid INT
);

INSERT INTO Employeees (empid, empname, managerid) VALUES
(1, 'Prince', NULL),
(2, 'Arya', 1),
(3, 'Ravi', 1),
(4, 'Sneha', 2); 


SELECT 
  e.empname AS Employee,
  m.empname AS Manager
FROM Employees e
LEFT JOIN Employees m ON e.managerid = m.empid;