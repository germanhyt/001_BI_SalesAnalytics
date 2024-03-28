


CREATE PROCEDURE sp_dataProducts(@id VARCHAR(100))
AS
BEGIN
    SELECT *
    FROM Products
    WHERE ProductID = @id
END
GO

EXEC sp_dataProducts @id=2
GO

drop PROCEDURE sp_dataProducts

SELECT *
FROM Products;