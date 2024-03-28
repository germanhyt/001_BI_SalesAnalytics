

CREATE FUNCTION fn_SumSalesByDate(@Date VARCHAR(255)) 
RETURNS FLOAT AS
BEGIN
    DECLARE @sum FLOAT
    SELECT @sum = SUM(OD.UnitPrice * OD.[Quantity])
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
    WHERE O.OrderDate = @Date
    RETURN @sum
END
GO

SELECT dbo.fn_SumSalesByDate('1996-07-04') AS 'VENTAS DEL DIA 1996-07-04';