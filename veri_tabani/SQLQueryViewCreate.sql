CREATE VIEW vw_Bilgi_BMI
AS
SELECT 
    uye_id,
    adi,
    soyadi,
    kilo,
    boy,
    yas,
    cinsiyet,
    egzersiz,
    CAST(kilo * 10000.0 / (boy * boy) AS DECIMAL(5,2)) AS VucutKitleIndeksi,
    CASE 
        WHEN kilo * 10000.0 / (boy * boy) < 18.5 THEN 'Zayýf'
        WHEN kilo * 10000.0 / (boy * boy) BETWEEN 18.5 AND 24.9 THEN 'Normal'
        WHEN kilo * 10000.0 / (boy * boy) BETWEEN 25 AND 29.9 THEN 'Fazla Kilolu'
        WHEN kilo * 10000.0 / (boy * boy) >= 30 THEN 'Obez'
    END AS BMI_Durumu
FROM dbo.tblBilgiler;
