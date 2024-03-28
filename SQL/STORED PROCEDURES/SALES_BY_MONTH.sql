

create procedure sp_salesByMonth(@Month VARCHAR(200))
AS
BEGIN
    SELECT SUM(OD.unitPrice * OD.Quantity) AS 'Total Sales By Month'
    FROM [Order Details] as OD
        INNER JOIN Products as P ON OD.ProductID=P.ProductID
        INNER JOIN Orders as O ON OD.OrderID=O.OrderID
    WHERE O.OrderDate = @Month
END


exec sp_salesByMonth @Month = '1996-07-04'
go

-- drop procedure sp_salesByMonth

