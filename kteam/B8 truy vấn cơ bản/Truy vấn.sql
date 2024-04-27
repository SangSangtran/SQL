USE HowKteam
GO

SELECT GV.MAGV, GV.HOTEN, NT.TEN  FROM dbo.GIAOVIEN AS GV, dbo.NGUOITHAN AS NT
WHERE GV.MAGV = NT.MAGV

SELECT * FROM dbo.GIAOVIEN
WHERE PHAI = N'Nữ' AND LUONG > 2000

-- Lấy ra họ tên giáo viên, năm sinh và tuổi vủa giáo viên nhỏ hơn 40
SELECT HOTEN, NGSINH, YEAR(GETDATE()) - YEAR(NGSINH) AS 'TUOI' FROM dbo.GIAOVIEN
WHERE YEAR(GETDATE()) - YEAR(NGSINH) <= 40

-- Đếm số lượng người thân của giáo viên có mã giáo viên là 007
SELECT COUNT(*) AS N'Số lượng người thân' 
FROM dbo.NGUOITHAN, dbo.GIAOVIEN
WHERE NGUOITHAN.MAGV = dbo.GIAOVIEN.MAGV AND dbo.GIAOVIEN.MAGV = N'007'

-- Số lượng giáo viên khoa cntt
SELECT COUNT(*)
FROM dbo.GIAOVIEN AS GV, dbo.BOMON AS BM, dbo.KHOA AS K
WHERE GV.MABM = BM.MABM 
AND BM.MAKHOA = K.MAKHOA 
AND K.MAKHOA = N'CNTT'

--thông tin giáo viên và đề tài người đó tham gia khi mà kết quả đạt
SELECT GV.*
FROM dbo.GIAOVIEN AS GV, dbo.THAMGIADT AS TG
WHERE GV.MAGV = TG.MAGV
AND KETQUA =N'Đạt'

-- Xuất ra thông tin gv mà tên có chữ l
SELECT *
FROM dbo.GIAOVIEN
WHERE HOTEN LIKE N'%N%'



SELECT *
FROM dbo.GIAOVIEN LEFT JOIN dbo.BOMON
ON BOMON.MABM = GIAOVIEN.MABM


