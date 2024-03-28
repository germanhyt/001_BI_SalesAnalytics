

CREATE PROCEDURE sp_priceOfProduct(@ProductID VARCHAR(200))
AS
BEGIN
    SELECT P.ProductName, P.UnitPrice
    FROM Products as P
    WHERE P.ProductID = @ProductID
END
GO

EXEC sp_priceOfProduct @ProductID = '1'
GO

-- DROP PROCEDURE sp_priceOfProduct

SELECT *
FROM Products