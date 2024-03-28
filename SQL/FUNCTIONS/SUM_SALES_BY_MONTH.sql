CREATE FUNCTION fn_salesByMonth(@Month VARCHAR(255))  
RETURNS FLOAT AS
BEGIN
    DECLARE @sum FLOAT
    SELECT @sum = SUM(OD.UnitPrice * OD.[Quantity])
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
    WHERE MONTH(O.OrderDate) = @Month
    RETURN @sum
END
GO

SELECT dbo.fn_salesByMonth('7') AS 'VENTAS DEL MES 7';