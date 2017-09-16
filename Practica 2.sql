USE [master]
GO

/****** Object:  Database [Escolar]    Script Date: 16/09/2017 02:52:17 a.m. ******/
CREATE DATABASE [Escolar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Escolar', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escolar.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Escolar_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Escolar_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [Escolar] SET COMPATIBILITY_LEVEL = 110
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Escolar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Escolar] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Escolar] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Escolar] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Escolar] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Escolar] SET ARITHABORT OFF 
GO

ALTER DATABASE [Escolar] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [Escolar] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Escolar] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Escolar] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Escolar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Escolar] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Escolar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Escolar] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Escolar] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Escolar] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Escolar] SET  ENABLE_BROKER 
GO

ALTER DATABASE [Escolar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Escolar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Escolar] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Escolar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Escolar] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Escolar] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Escolar] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Escolar] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [Escolar] SET  MULTI_USER 
GO

ALTER DATABASE [Escolar] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Escolar] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Escolar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Escolar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO

ALTER DATABASE [Escolar] SET  READ_WRITE 
GO

