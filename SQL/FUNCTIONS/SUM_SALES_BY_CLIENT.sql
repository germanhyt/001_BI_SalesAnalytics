
CREATE FUNCTION fn_SumSalesByClient(@ClientID VARCHAR(255)) 
RETURNS FLOAT AS
BEGIN
    DECLARE @sum FLOAT
    SELECT @sum = SUM(OD.UnitPrice * OD.[Quantity])
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
        INNER JOIN [Customers] as C ON O.CustomerID = C.CustomerID
    WHERE C.CustomerID = @ClientID
    RETURN @sum
END
GO


SELECT dbo.fn_SumSalesByClient('VINET');
-- DROP FUNCTION fn_SumSalesByClient
GO

