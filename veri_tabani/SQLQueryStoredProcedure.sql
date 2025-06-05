CREATE PROCEDURE sp_YasGrubunaGoreUyeListele
    @MinYas INT,
    @MaxYas INT
AS
BEGIN
    SELECT * 
    FROM dbo.tblBilgiler
    WHERE yas BETWEEN @MinYas AND @MaxYas;
END;
