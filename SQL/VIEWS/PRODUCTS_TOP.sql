

CREATE VIEW vw_productsTop
AS
    SELECT TOP 10
        P.ProductName ,SUM(OD.unitPrice * OD.quantity) AS 'Total Sales'
    FROM [order details] as OD
        INNER JOIN Products as P ON OD.ProductID = P.ProductID
    GROUP BY P.ProductName
    ORDER BY 'Total Sales' DESC
GO

SELECT *
FROM vw_productsTop

-- DROP VIEW vw_productsTop

SELECT *
FROM products