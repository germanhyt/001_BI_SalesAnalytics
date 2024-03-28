

CREATE TRIGGER tr_alert_insertClient 
ON Customers
AFTER INSERT
AS
BEGIN
    PRINT('SE INSERTARON DATOS')
END;
GO

ALTER TABLE Customers ENABLE TRIGGER tr_alert_insertClient;

DROP TRIGGER tr_alert_insertClient;
