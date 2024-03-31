
-- TEST TRIIGER
INSERT INTO Products    
    (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES
    ('Chai', 1, 1, '10 boxes x 20 bags', 18, 39, 0, 10, 0);





select SUM(OD.unitPrice *OD.quantity) AS 'Total Sales'
from [Order Details] as OD
    INNER JOIN Products as P ON OD.ProductID = P.ProductID
    INNER JOIN Orders as O ON OD.OrderID = O.OrderID


SELECT COUNT(*) as 'Quantity of Sales'
FROM [Order Details]


SELECT * FROM [Order Details]