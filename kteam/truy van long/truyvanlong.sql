USE HowKteam
GO

-- Kiểm tra xem giáo viên 001 có phải là giáo viên chủ nhiệm hay không
SELECT * 
FROM dbo.GIAOVIEN
WHERE MAGV = '001' 
AND MAGV  IN 
(
   SELECT GVQLCM 
   FROM dbo.GIAOVIEN
)

--Xuất ra danh sách giáo viên tham gia nhiều hơn một đề tài
SELECT *
FROM dbo.GIAOVIEN AS GV
WHERE 1 <
(
    SELECT COUNT(*)
	FROM dbo.THAMGIADT
	WHERE MAGV = GV.MAGV
)

--Xuất ra thông tin khoa mà có nhiều hơn 2 giáo viên
SELECT *
FROM dbo.KHOA AS K
WHERE 2 <
(
    SELECT COUNT(*)
	FROM dbo.BOMON AS BM JOIN dbo.GIAOVIEN AS GV
	ON BM.MAKHOA = K.MAKHOA 
	AND BM.MABM = GV.MABM
)