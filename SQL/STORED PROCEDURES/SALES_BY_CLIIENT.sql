

CREATE PROCEDURE sp_salesByClient(@ClientID VARCHAR(200))
AS
BEGIN
    SELECT SUM(OD.UnitPrice * OD.[Quantity]) AS 'Total Sales Por Cliente'
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
        INNER JOIN [Customers] as C ON O.CustomerID = C.CustomerID
    WHERE C.CustomerID = @ClientID
END


EXEC sp_salesByClient @ClientID = 'VINET'
-- DROP PROCEDURE sp_salesByClient

SELECT *
FROM Customers