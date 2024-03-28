

CREATE VIEW vw_monthsWithMoreSales
AS
    SELECT
        SUM(OD.UnitPrice * OD.Quantity) AS 'Total Sales'
    FROM [Order Details] as OD
        INNER JOIN [Products] as P ON OD.ProductID = P.ProductID
        INNER JOIN [Orders] as O ON OD.OrderID = O.OrderID
    ORDER BY 'Total Sales' DESC
GO

SELECT *
FROM vw_monthsWithMoreSales

DROP VIEW vw_monthsWithMoreSales