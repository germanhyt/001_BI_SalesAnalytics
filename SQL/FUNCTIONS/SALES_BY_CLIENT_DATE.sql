

-- SELECT * FROM ORDERS;

CREATE FUNCTION fn_salesByClientAndDate(@ClientID VARCHAR(255), @Date VARCHAR(255)) 
RETURNS TABLE AS 
RETURN (
    SELECT C.CustomerID, P.ProductName, O.OrderDate, OD.UnitPrice * OD.[Quantity] as Total
FROM [Order Details] as OD
    INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
    INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
    INNER JOIN [Customers] as C ON O.CustomerID = C.CustomerID
WHERE C.CustomerID = @ClientID AND O.OrderDate = @Date
)
GO

SELECT *
FROM fn_salesByClientAndDate('VINET', '1996-07-04');
GO
DROP FUNCTION fn_salesByClientAndDate;
GO
