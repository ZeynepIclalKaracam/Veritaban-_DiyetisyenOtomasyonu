CREATE TRIGGER trg_KiloKontrol
ON dbo.tblBilgiler
AFTER INSERT, UPDATE
AS
BEGIN
    INSERT INTO dbo.KiloUyariLog (uye_id, mesaj)
    SELECT i.uye_id, 'Dikkat! Kilo 150 kg üzerinde.'
    FROM inserted i
    WHERE i.kilo > 150;
END;

