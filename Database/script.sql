USE [master]
GO
/****** Object:  Database [DbProyecto]    Script Date: 29/06/2021 22:49:32 ******/
CREATE DATABASE [DbProyecto]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbProyecto', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\DbProyecto.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbProyecto_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\DbProyecto_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DbProyecto] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbProyecto].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbProyecto] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbProyecto] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbProyecto] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbProyecto] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbProyecto] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbProyecto] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbProyecto] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbProyecto] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbProyecto] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbProyecto] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbProyecto] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbProyecto] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbProyecto] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbProyecto] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbProyecto] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbProyecto] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbProyecto] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbProyecto] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbProyecto] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbProyecto] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbProyecto] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbProyecto] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbProyecto] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DbProyecto] SET  MULTI_USER 
GO
ALTER DATABASE [DbProyecto] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbProyecto] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbProyecto] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbProyecto] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbProyecto] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbProyecto] SET QUERY_STORE = OFF
GO
USE [DbProyecto]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [DbProyecto]
GO
/****** Object:  Table [dbo].[TblCliente]    Script Date: 29/06/2021 22:49:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCliente](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [varchar](30) NOT NULL,
	[SegundoNombre] [varchar](30) NULL,
	[PrimerApellido] [varchar](30) NOT NULL,
	[SegundoApellido] [varchar](30) NULL,
	[ApellidoCasada] [varchar](30) NULL,
	[Direccion] [varchar](150) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[TelefonoSecundario] [varchar](50) NULL,
	[TelefonoCelular] [varchar](50) NULL,
	[NIT] [varchar](50) NULL,
	[DPI] [varchar](50) NOT NULL,
	[CorreoElectronico] [varchar](100) NULL,
	[FechaNacimiento] [date] NULL,
	[ProfesionUOficio] [varchar](150) NULL,
	[Activo] [bit] NOT NULL,
	[TieneUsuario] [int] NULL,
 CONSTRAINT [PK_TblCliente] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DbProyecto] SET  READ_WRITE 
GO
