USE [master]
GO
/****** Object:  Database [SiparisOtomasyonu]    Script Date: 25.12.2021 21:08:20 ******/
CREATE DATABASE [SiparisOtomasyonu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SiparisOtomasyonu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SiparisOtomasyonu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SiparisOtomasyonu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\SiparisOtomasyonu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SiparisOtomasyonu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SiparisOtomasyonu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SiparisOtomasyonu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ARITHABORT OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SiparisOtomasyonu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SiparisOtomasyonu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SiparisOtomasyonu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SiparisOtomasyonu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET RECOVERY FULL 
GO
ALTER DATABASE [SiparisOtomasyonu] SET  MULTI_USER 
GO
ALTER DATABASE [SiparisOtomasyonu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SiparisOtomasyonu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SiparisOtomasyonu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SiparisOtomasyonu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SiparisOtomasyonu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SiparisOtomasyonu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SiparisOtomasyonu', N'ON'
GO
ALTER DATABASE [SiparisOtomasyonu] SET QUERY_STORE = OFF
GO
USE [SiparisOtomasyonu]
GO
/****** Object:  Table [dbo].[Tbl_Kullanicilar]    Script Date: 25.12.2021 21:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kullanicilar](
	[KullaniciId] [smallint] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [varchar](20) NULL,
	[KullaniciSifre] [varchar](20) NULL,
	[KullaniciAdres] [varchar](20) NULL,
	[KullaniciYonetici] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Siparis]    Script Date: 25.12.2021 21:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Siparis](
	[SiparisId] [smallint] IDENTITY(1,1) NOT NULL,
	[SiparisTarih] [date] NULL,
	[SiparisDurum] [varchar](20) NULL,
	[SiparisTutar] [decimal](18, 2) NULL,
	[SiparisDesi] [float] NULL,
	[SiparisKullaniciId] [smallint] NULL,
	[SiparisDetay] [text] NULL,
	[SiparisKod] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Urun]    Script Date: 25.12.2021 21:08:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Urun](
	[UrunId] [smallint] IDENTITY(1,1) NOT NULL,
	[UrunAd] [varchar](20) NULL,
	[UrunFiyat] [float] NULL,
	[UrunAciklama] [varchar](20) NULL,
	[UrunDesi] [varchar](20) NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [SiparisOtomasyonu] SET  READ_WRITE 
GO
