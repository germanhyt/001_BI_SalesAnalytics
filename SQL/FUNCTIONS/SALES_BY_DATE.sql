

CREATE FUNCTION fn_salesByDate(@Date VARCHAR(255))
RETURNS TABLE
AS
RETURN (
    SELECT O.OrderDate, P.ProductName, OD.UnitPrice * OD.[Quantity] as Total
FROM [Order Details] as OD
    INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
    INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
WHERE O.OrderDate = @Date
)
GO

SELECT *
FROM fn_salesByDate('1996-07-04');

-- DROP FUNCTION fn_salesByDate;