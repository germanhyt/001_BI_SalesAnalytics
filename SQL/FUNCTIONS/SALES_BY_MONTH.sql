

CREATE FUNCTION fn_sumSalesByMonth(@Month VARCHAR(255)) 
returns TABLE AS
RETURN 
(
    SELECT O.OrderDate, P.ProductName, OD.UnitPrice * OD.[Quantity] as Total
FROM [Order Details] as OD
    INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
    INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
WHERE MONTH(O.OrderDate) = @Month
)
GO

SELECT *
FROM fn_sumSalesByMonth('7');
GO