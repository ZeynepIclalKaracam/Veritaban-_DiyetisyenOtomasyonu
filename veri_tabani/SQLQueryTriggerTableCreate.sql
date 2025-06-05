USE Kalori; 
GO

CREATE TABLE dbo.KiloUyariLog (
    LogID INT IDENTITY(1,1) PRIMARY KEY,
    uye_id INT,
    tarih DATETIME DEFAULT GETDATE(),
    mesaj NVARCHAR(255)
);
