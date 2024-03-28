

CREATE PROCEDURE sp_salesByClient(@ClientID INT)
AS
BEGIN
    SELECT SUM(OD.UnitPrice * OD.[Quantity]) AS 'Total Sales'
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
        INNER JOIN [Customers] as C ON O.CustomerID = C.CustomerID
    WHERE C.CustomerID = @ClientID
END



DROP PROCEDURE sp_salesByClient

SELECT *
FROM Customers