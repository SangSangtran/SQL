CREATE VIEW V_CAU1
AS
        SELECT *
		FROM DMSV
		WHERE MAKH = 'AV'
		WITH CHECK OPTION
GO

CREATE VIEW v_dskhongrot AS
SELECT MASV, HOSV, TENSV, PHAI
FROM dbo.DMSV
WHERE MASV IN (SELECT MASV
               FROM KETQUA
			   GROUP BY MASV
			   HAVING MIN(DIEM) >= 5)
GO