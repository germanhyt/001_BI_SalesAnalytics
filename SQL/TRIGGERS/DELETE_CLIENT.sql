
CREATE TRIGGER tr_alert_deleteClient 
ON Customers
AFTER DELETE
AS
BEGIN
    PRINT('SE BORRARON DATOS')
END;
GO

ALTER TABLE Customers ENABLE TRIGGER tr_alert_deleteClient;