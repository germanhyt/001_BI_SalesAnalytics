

CREATE VIEW vw_clientsTop
AS
    SELECT TOP 10
        C.CustomerID, C.CompanyName, SUM(OD.unitPrice * OD.quantity) AS 'Total Sales'
    FROM [order details] as OD
        INNER JOIN Products as P ON OD.ProductID = P.ProductID
        INNER JOIN Orders as O ON OD.OrderID = O.OrderID
        INNER JOIN Customers as C ON O.CustomerID = C.CustomerID
    GROUP BY C.CustomerID, C.CompanyName
    ORDER BY 'Total Sales' DESC
GO

SELECT *
FROM vw_clientsTop

-- DROP VIEW vw_clientsTop

SELECT *
FROM Customers