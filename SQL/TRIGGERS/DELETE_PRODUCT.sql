

CREATE TRIGGER tr_alert_deleteProduct
ON Products
AFTER DELETE
AS
BEGIN
    PRINT('SE BORRARON DATOS')
END;
GO

ALTER TABLE Products ENABLE TRIGGER tr_alert_deleteProduct;

-- DROP TRIGGER tr_alert_deleteProduct