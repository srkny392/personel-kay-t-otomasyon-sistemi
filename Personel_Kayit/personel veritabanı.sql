USE [master]
GO
/****** Object:  Database [PersonelVeriTabanii]    Script Date: 1.12.2021 00:11:52 ******/
CREATE DATABASE [PersonelVeriTabanii]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PersonelVeriTabanii', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PersonelVeriTabanii.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PersonelVeriTabanii_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\PersonelVeriTabanii_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PersonelVeriTabanii] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PersonelVeriTabanii].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PersonelVeriTabanii] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET ARITHABORT OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PersonelVeriTabanii] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PersonelVeriTabanii] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PersonelVeriTabanii] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PersonelVeriTabanii] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PersonelVeriTabanii] SET  MULTI_USER 
GO
ALTER DATABASE [PersonelVeriTabanii] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PersonelVeriTabanii] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PersonelVeriTabanii] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PersonelVeriTabanii] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PersonelVeriTabanii] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PersonelVeriTabanii]
GO
/****** Object:  Table [dbo].[Tbl_Personel]    Script Date: 1.12.2021 00:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Personel](
	[Perid] [smallint] IDENTITY(1,1) NOT NULL,
	[PerAd] [varchar](10) NULL,
	[PerSoyad] [varchar](20) NULL,
	[PerSehir] [varchar](13) NULL,
	[PerMaas] [smallint] NULL,
	[PerDurum] [bit] NULL,
	[PerMeslek] [varchar](15) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 1.12.2021 00:11:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[KullaniciAd] [varchar](10) NULL,
	[Sifre] [varchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Personel] ON 

INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (1, N'Baran', N'Yücedağ', N'Ankara', 2800, 1, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (2, N'Arzu', N'Çınar', N'Bursa', 2900, 0, N'Hemşire')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (3, N'Yavuz', N'Aslan', N'İstanbul', 3200, 1, N'Öğretmen')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (4, N'İsmail', N'Gemili', N'Bursa', 3300, 0, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (5, N'Eylül', N'Sarı', N'Ankara', 2700, 0, N'Mühendis')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (12, N'Yılmaz', N'Yıldırımoğlu', N'Konya', 3000, 1, N'Şoför')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (13, N'Serkan', N'Yıldırımoğlu', N'Ankara', 2000, 0, N'Öğrenci')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (8, N'Ali', N'Yıldırımoğlu', N'Konya', 7500, 0, N'Asker')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (9, N'Davut', N'Kara', N'Sivas', 2800, 1, N'Doktor')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (10, N'Ayla', N'Gül', N'Hatay', 4000, 1, N'Hemşire')
INSERT [dbo].[Tbl_Personel] ([Perid], [PerAd], [PerSoyad], [PerSehir], [PerMaas], [PerDurum], [PerMeslek]) VALUES (11, N'Gül', N'Çiçek', N'Adana', 3000, 1, N'Sporcu')
SET IDENTITY_INSERT [dbo].[Tbl_Personel] OFF
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'admin42', N'001122')
INSERT [dbo].[Tbl_Yonetici] ([KullaniciAd], [Sifre]) VALUES (N'personel01', N'123456')
USE [master]
GO
ALTER DATABASE [PersonelVeriTabanii] SET  READ_WRITE 
GO
