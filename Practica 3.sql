USE [Escolar_1]
GO
/****** Object:  Table [dbo].[Alumno]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Alumno](
	[IdAlumno] [varchar](7) NOT NULL,
	[IdUsuario] [varchar](7) NOT NULL,
	[IdSemestreActual] [nchar](10) NOT NULL,
	[DatNom] [nvarchar](50) NOT NULL,
	[DarApe] [nvarchar](50) NOT NULL,
	[DatNac] [date] NOT NULL,
	[DatSexo] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdAlumno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Calificaciones]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Calificaciones](
	[IdGrupoMateria] [varchar](3) NOT NULL,
	[IdGrupoAlumno] [varchar](3) NOT NULL,
	[Calificacion] [nvarchar](3) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carrera](
	[IdCarrera] [uniqueidentifier] NOT NULL,
	[IdNivel] [uniqueidentifier] NOT NULL,
	[NomCarrera] [varchar](50) NOT NULL,
	[Semestre] [varchar](1) NOT NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[IdCarrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo_Alumno]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo_Alumno](
	[IdAlumno] [varchar](7) NOT NULL,
	[IdGrupoMateria] [varchar](3) NOT NULL,
 CONSTRAINT [PK_Grupo_Alumno] PRIMARY KEY CLUSTERED 
(
	[IdGrupoMateria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Materia]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Materia](
	[IdMateria] [uniqueidentifier] NOT NULL,
	[IdCarrera] [uniqueidentifier] NOT NULL,
	[MatNom] [nvarchar](50) NOT NULL,
	[Frecuencia] [varchar](5) NOT NULL,
	[SemestreMat] [nchar](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Nivel]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Nivel](
	[IdNivel] [uniqueidentifier] NOT NULL,
	[NomNivel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Nivel] PRIMARY KEY CLUSTERED 
(
	[IdNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/10/2017 11:28:29 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [varchar](7) NOT NULL,
	[NomUs] [varchar](6) NOT NULL,
	[Pass] [varchar](7) NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Alumno_Usuario] FOREIGN KEY([IdUsuario])
REFERENCES [dbo].[Usuario] ([IdUsuario])
GO
ALTER TABLE [dbo].[Alumno] CHECK CONSTRAINT [FK_Alumno_Usuario]
GO
ALTER TABLE [dbo].[Calificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Calificaciones_Grupo_Alumno] FOREIGN KEY([IdGrupoMateria])
REFERENCES [dbo].[Grupo_Alumno] ([IdGrupoMateria])
GO
ALTER TABLE [dbo].[Calificaciones] CHECK CONSTRAINT [FK_Calificaciones_Grupo_Alumno]
GO
ALTER TABLE [dbo].[Carrera]  WITH CHECK ADD  CONSTRAINT [FK_Carrera_Nivel] FOREIGN KEY([IdNivel])
REFERENCES [dbo].[Nivel] ([IdNivel])
GO
ALTER TABLE [dbo].[Carrera] CHECK CONSTRAINT [FK_Carrera_Nivel]
GO
ALTER TABLE [dbo].[Grupo_Alumno]  WITH CHECK ADD  CONSTRAINT [FK_Grupo_Alumno_Alumno] FOREIGN KEY([IdAlumno])
REFERENCES [dbo].[Alumno] ([IdAlumno])
GO
ALTER TABLE [dbo].[Grupo_Alumno] CHECK CONSTRAINT [FK_Grupo_Alumno_Alumno]
GO
ALTER TABLE [dbo].[Materia]  WITH CHECK ADD  CONSTRAINT [FK_Materia_Carrera] FOREIGN KEY([IdCarrera])
REFERENCES [dbo].[Carrera] ([IdCarrera])
GO
ALTER TABLE [dbo].[Materia] CHECK CONSTRAINT [FK_Materia_Carrera]
GO
