-- ============================================
-- BTL CO SO DU LIEU - HE THONG QUAN LY BENH VIEN
-- PHIEN BAN MICROSOFT SQL SERVER (T-SQL)
-- ============================================
-- Tao database neu chua ton tai.
-- SQL Server su dung NVARCHAR de luu tieng Viet Unicode.
IF DB_ID(N'QuanLyBenhVien') IS NULL
BEGIN
    EXEC(N'CREATE DATABASE [QuanLyBenhVien];');
END;
GO

USE [QuanLyBenhVien];
GO
