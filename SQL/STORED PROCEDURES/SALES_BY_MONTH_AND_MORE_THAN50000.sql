

create procedure sp_salesByMonthAndMoreThan50000(@Month VARCHAR(200))
AS
BEGIN
    SELECT SUM(OD.unitPrice * OD.Quantity) AS 'Total Sales By Month And More Than 50000'
    FROM [Order Details] as OD
        INNER JOIN Products as P ON OD.ProductID=P.ProductID
        INNER JOIN Orders as O ON OD.OrderID=O.OrderID
    WHERE O.OrderDate = @Month
    HAVING SUM(OD.unitPrice * OD.Quantity) > 50
END


exec sp_salesByMonthAndMoreThan50000 @Month = '1996-07-04'
go

-- drop procedure sp_salesByMonthAndMoreThan50000
-- go
