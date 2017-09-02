USE [master]
GO
/****** Object:  Database [Libreria]    Script Date: 02/09/2017 11:24:26 a.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Libreria')
BEGIN
CREATE DATABASE [Libreria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Libreria', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Libreria.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Libreria_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Libreria_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [Libreria] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Libreria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Libreria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Libreria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Libreria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Libreria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Libreria] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Libreria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Libreria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Libreria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Libreria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Libreria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Libreria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Libreria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Libreria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Libreria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Libreria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Libreria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Libreria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Libreria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Libreria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Libreria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Libreria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Libreria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Libreria] SET  MULTI_USER 
GO
ALTER DATABASE [Libreria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Libreria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Libreria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Libreria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Libreria]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Almacenes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Almacenes](
	[clave_almacen] [int] NOT NULL,
	[telefono] [int] NULL,
	[direccion] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_almacen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Autores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Autores](
	[clave_autor] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
	[direccion] [varchar](50) NULL,
	[URL] [varchar](50) NULL,
	[edad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_autor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarritoLibros]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarritoLibros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarritoLibros](
	[clave_carrito] [int] NULL,
	[ISBN] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Carritos]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carritos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Carritos](
	[clave_carrito] [int] NOT NULL,
	[clave_cliente] [int] NULL,
	[fecha_compra] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_carrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Clientes](
	[clave_cliente] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
	[direccion] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[telefono] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Editores]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Editores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Editores](
	[clave_editor] [int] NOT NULL,
	[nombre] [varchar](45) NULL,
	[direccion] [varchar](50) NULL,
	[telefono] [int] NULL,
	[URL] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[clave_editor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Libros]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Libros](
	[ISBN] [int] NOT NULL,
	[tituo] [varchar](45) NULL,
	[año] [varchar](50) NULL,
	[precio] [money] NULL,
	[clave_editor] [int] NULL,
	[clave_autor] [int] NULL,
	[clave_almacen] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tabla]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tabla]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tabla](
	[nombre] [varchar](45) NOT NULL,
	[edad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tabla2]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tabla2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tabla2](
	[domicilio] [varchar](45) NOT NULL,
	[matricula] [int] NULL,
	[nombre] [varchar](45) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vista1]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vista1]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vista1] as select * from Libros
' 
GO
/****** Object:  View [dbo].[vista2]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vista2]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vista2] as 
select L.ISBN,L.tituo,L.año,L.precio
from Libros as L
join Almacenes as A
on L.clave_almacen=A.clave_almacen' 
GO
/****** Object:  View [dbo].[vista3]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vista3]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vista3] as select *from Autores' 
GO
/****** Object:  View [dbo].[vista4]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vista4]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vista4] as 
select L.ISBN,L.tituo,L.año,L.precio,L.clave_editor,clave_autor from Libros as L
join Almacenes as A
on L.clave_almacen=A.clave_almacen' 
GO
/****** Object:  View [dbo].[vista5]    Script Date: 02/09/2017 11:24:26 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vista5]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[vista5] as 
select L.ISBN,L.tituo,L.año,L.precio,L.clave_editor, L.clave_almacen ,L.clave_autor from Libros as L
join Almacenes as A
on L.clave_almacen=A.clave_almacen
' 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CarritoLi__clave__286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarritoLibros]'))
ALTER TABLE [dbo].[CarritoLibros]  WITH CHECK ADD FOREIGN KEY([clave_carrito])
REFERENCES [dbo].[Carritos] ([clave_carrito])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__CarritoLib__ISBN__29572725]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarritoLibros]'))
ALTER TABLE [dbo].[CarritoLibros]  WITH CHECK ADD FOREIGN KEY([ISBN])
REFERENCES [dbo].[Libros] ([ISBN])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Carritos__clave___1ED998B2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Carritos]'))
ALTER TABLE [dbo].[Carritos]  WITH CHECK ADD FOREIGN KEY([clave_cliente])
REFERENCES [dbo].[Clientes] ([clave_cliente])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Libros__clave_al__267ABA7A]') AND parent_object_id = OBJECT_ID(N'[dbo].[Libros]'))
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([clave_almacen])
REFERENCES [dbo].[Almacenes] ([clave_almacen])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Libros__clave_au__25869641]') AND parent_object_id = OBJECT_ID(N'[dbo].[Libros]'))
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([clave_autor])
REFERENCES [dbo].[Autores] ([clave_autor])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Libros__clave_ed__24927208]') AND parent_object_id = OBJECT_ID(N'[dbo].[Libros]'))
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD FOREIGN KEY([clave_editor])
REFERENCES [dbo].[Editores] ([clave_editor])
GO
USE [master]
GO
ALTER DATABASE [Libreria] SET  READ_WRITE 
GO
