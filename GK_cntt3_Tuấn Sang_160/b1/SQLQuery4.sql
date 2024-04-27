CREATE DATABASE QLDIEM
GO
USE QLDIEM
GO

CREATE TABLE KETQUA (
    MASV CHAR(20),
    MAMH CHAR(20),
    LANTHI TINYINT,
	DIEM DECIMAL(10,8)
    
    PRIMARY KEY (MASV, MAMH, LANTHI)
)
GO

CREATE TABLE DMKHOA
(
   MAKHOA CHAR(10) constraint DMKHOA_MAKHOA_KP PRIMARY KEY,
   TENKHOA nvarchar(20)
)
GO

CREATE TABLE DMMH
(
   MAMH CHAR(30) constraint DMMH_MAMH_KP PRIMARY KEY,
   TENMH NVARCHAR(50),
   SOTIET TINYINT
)
GO

CREATE TABLE DMSV
(
    MASV CHAR(30) constraint DMSV_MASV_KP PRIMARY KEY,
	HOSV NVARCHAR(50),
	TENSV NVARCHAR(50),
	PHAI BIT,
	NGAYSINH DATETIME,
	NOISINH NVARCHAR(50),
	MAKH CHAR(30),
	HOCBONG FLOAT
)
GO
