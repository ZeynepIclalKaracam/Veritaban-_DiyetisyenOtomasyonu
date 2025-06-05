CREATE VIEW vw_KiloUyariDetay
AS
SELECT 
    log.LogID,
    log.uye_id,
    b.adi,
    b.soyadi,
    b.kilo,
    b.boy,
    b.yas,
    b.cinsiyet,
    log.tarih,
    log.mesaj
FROM dbo.KiloUyariLog AS log
INNER JOIN dbo.tblBilgiler AS b ON log.uye_id = b.uye_id;
