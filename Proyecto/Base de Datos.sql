USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyEventProcessingLogin##')
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'Â£¶¤;¾·!öF}M© =¬x×Å©ìÑO~-9¡ #', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'##MS_PolicyTsqlExecutionLogin##')
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'âü&ø9Fþ#;KXÏºäåè©é­h%êW ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/****** Object:  Login [BUILTIN\Usuarios]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'BUILTIN\Usuarios')
CREATE LOGIN [BUILTIN\Usuarios] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT AUTHORITY\SYSTEM')
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQL$SQLEXPRESS]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT Service\MSSQL$SQLEXPRESS')
CREATE LOGIN [NT Service\MSSQL$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\ReportServer$SQLEXPRESS]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\ReportServer$SQLEXPRESS')
CREATE LOGIN [NT SERVICE\ReportServer$SQLEXPRESS] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\SQLWriter')
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'NT SERVICE\Winmgmt')
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [Personal-PC\Personal]    Script Date: 11/11/2017 01:06:49 a.m. ******/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'Personal-PC\Personal')
CREATE LOGIN [Personal-PC\Personal] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQL$SQLEXPRESS]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [Personal-PC\Personal]
GO
USE [Escolar_1]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 11/11/2017 01:06:49 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Alumno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [varchar](7) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[IdUsuario] [varchar](7) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[IdSemestreActual] [nchar](10) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DatNom] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DarApe] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[DatNac] [date] NOT NULL,
	[DatSexo] [varchar](1) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Alumno] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Calificaciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Calificaciones](
	[IdGrupoMateria] [varchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[IdGrupoAlumno] [varchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Calificacion] [nvarchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Calificaciones] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Carrera]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [uniqueidentifier] NOT NULL,
	[IdNivel] [uniqueidentifier] NOT NULL,
	[NomCarrera] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Semestre] [varchar](1) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Carrera] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Grupo_Alumno]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Grupo_Alumno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Grupo_Alumno](
	[IdAlumno] [varchar](7) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[IdGrupoMateria] [varchar](3) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Grupo_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdGrupoMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Grupo_Alumno] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Materia]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Materia](
	[IdMateria] [uniqueidentifier] NOT NULL,
	[IdCarrera] [uniqueidentifier] NOT NULL,
	[MatNom] [nvarchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Frecuencia] [varchar](5) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[SemestreMat] [nchar](1) COLLATE Modern_Spanish_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Materia] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Nivel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Nivel](
	[IdNivel] [uniqueidentifier] NOT NULL,
	[NomNivel] [varchar](50) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[IdNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Nivel] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 11/11/2017 01:06:50 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [varchar](7) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[NomUs] [varchar](6) COLLATE Modern_Spanish_CI_AS NOT NULL,
	[Pass] [varchar](7) COLLATE Modern_Spanish_CI_AS NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Usuario] TO  SCHEMA OWNER 
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Alumno_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Alumno]'))
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Calificaciones_Grupo_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Calificaciones]'))
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Grupo_Alumno] FOREIGN KEY([IdGrupoMateria])
REFERENCES [dbo].[Grupo_Alumno] ([IdGrupoMateria])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Calificaciones_Grupo_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Calificaciones]'))
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Grupo_Alumno]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Carrera_Nivel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Carrera]'))
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_Nivel] FOREIGN KEY([IdNivel])
REFERENCES [dbo].[Nivel] ([IdNivel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Carrera_Nivel]') AND parent_object_id = OBJECT_ID(N'[dbo].[Carrera]'))
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_Nivel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Grupo_Alumno_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo_Alumno]'))
ALTER TABLE [dbo].[Grupo_Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Alumno_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Grupo_Alumno_Alumno]') AND parent_object_id = OBJECT_ID(N'[dbo].[Grupo_Alumno]'))
ALTER TABLE [dbo].[Grupo_Alumno] CHECK CONSTRAINT [FK_Grupo_Alumno_Alumno]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Materia_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Materia]'))
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Materia_Carrera]') AND parent_object_id = OBJECT_ID(N'[dbo].[Materia]'))
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
