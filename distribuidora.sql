USE [master]
GO


/****** nombre: Raimer Abreu      matricula: 15-EIIN-1-039 seccion: 0541 ******/
/****** nombre:Estarlin Lopez     matricula: 17-SIIN-1-104 seccion: 0541 ******/
/****** Object:  Database [DistribuidoraDeAlimentos]    Script Date: 8/23/2021 5:58:03 PM ******/
CREATE DATABASE [DistribuidoraDeAlimentos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DistribuidoraDeAlimentos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\DistribuidoraDeAlimentos.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DistribuidoraDeAlimentos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQL2019\MSSQL\DATA\DistribuidoraDeAlimentos_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DistribuidoraDeAlimentos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ARITHABORT OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET  MULTI_USER 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET QUERY_STORE = OFF
GO
USE [DistribuidoraDeAlimentos]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 8/23/2021 5:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[cedula] [int] NULL,
	[tel] [int] NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 8/23/2021 5:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[apellido] [nvarchar](100) NULL,
	[posicion] [nvarchar](100) NULL,
	[cedula] [nvarchar](15) NULL,
	[direccion] [nvarchar](100) NULL,
	[tel] [int] NULL,
	[fecha_de_nacimiento] [datetime] NULL,
	[fecha_de_ingresi] [datetime] NULL,
	[sueldo] [int] NULL,
 CONSTRAINT [PK_empleados] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[maquina_registradora]    Script Date: 8/23/2021 5:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[maquina_registradora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[estacion] [int] NULL,
	[maquina] [int] NULL,
 CONSTRAINT [PK_maquina_registradora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 8/23/2021 5:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](100) NULL,
	[precio] [int] NULL,
 CONSTRAINT [PK_productos] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 8/23/2021 5:58:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[empleados] [int] NULL,
	[maquina] [int] NULL,
	[producto] [int] NULL,
	[cliente] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (1, N'jose', 405212255, 1809562214)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (2, N'germania', 402254448, 1809562245)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (3, N'raul', 405212202, 1809656221)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (4, N'manolo', 405221554, 1809565875)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (5, N'luisito', 402554588, 1809562458)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (6, N'carlos', 402254588, 1809562212)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (7, N'ricardo', 402212215, 1809562158)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (8, N'paola', 402544552, 1829212254)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (9, N'vanessa', 402255587, 1809562211)
INSERT [dbo].[clientes] ([codigo], [nombre], [cedula], [tel]) VALUES (10, N'joselito', 402254884, 1809455221)
SET IDENTITY_INSERT [dbo].[clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[empleados] ON 

INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (1, N'juan ', N'jaquz', N'contador ', N'4022142212', N'c/ principal #4 villa mella ', 1809562212, CAST(N'1995-05-13T00:00:00.000' AS DateTime), CAST(N'2016-05-13T00:00:00.000' AS DateTime), 19000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (2, N'jose ', N'martinez ', N'chofer', N'0011200221', N'c/ feliz evaristo mejia #377 cristo rey ', 1809525521, CAST(N'1996-05-16T00:00:00.000' AS DateTime), CAST(N'2017-08-14T00:00:00.000' AS DateTime), 17500)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (3, N'juana ', N'vasquez', N'secretatia ', N'4022152215', N'c/ 19 esq. costa rica, alma rosa 2', 1809526221, CAST(N'1997-06-14T00:00:00.000' AS DateTime), CAST(N'2017-08-16T00:00:00.000' AS DateTime), 16000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (4, N'wanda ', N'ramirez ', N'vendedora', N'4021522125', N'c/ ramon erarte #44 villa juana ', 1809562215, CAST(N'1993-02-05T00:00:00.000' AS DateTime), CAST(N'2016-03-18T00:00:00.000' AS DateTime), 20000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (5, N'katherine ', N'cordero', N'asistente adm.', N'0112022452', N'c/ 25 esq. club rotario jardines de alma rosa ', 1809562217, CAST(N'1998-09-10T00:00:00.000' AS DateTime), CAST(N'2018-08-17T00:00:00.000' AS DateTime), 20000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (6, N'enmanuel ', N'pacheco', N'encargado del almcen', N'4022125211', N'c/ 41 esq. 39 cristo rey ', 1809562214, CAST(N'1991-01-08T00:00:00.000' AS DateTime), CAST(N'2016-01-19T00:00:00.000' AS DateTime), 25000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (7, N'juan ', N'mejia ', N'encargado de seguridad', N'4021212252', N'c/ 34 esq.19 capotillo', 1809574585, CAST(N'1990-07-16T00:00:00.000' AS DateTime), CAST(N'2018-06-16T00:00:00.000' AS DateTime), 28000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (8, N'mojica ', N'herrera', N'asistente de chofer', N'4025846555', N'c/ 4ta los mamayes #1', 1829546545, CAST(N'1994-05-19T00:00:00.000' AS DateTime), CAST(N'2019-01-16T00:00:00.000' AS DateTime), 15000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (9, N'perla ', N'vargaz', N'recepcionista ', N'4022554454', N'c/ 19 urb. italia ', 1809562215, CAST(N'1999-05-17T00:00:00.000' AS DateTime), CAST(N'2018-04-11T00:00:00.000' AS DateTime), 16000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (10, N'jorge ', N'caba', N'gerente ', N'4022121552', N'c/ 13 esq. 15 la esperilla ', 1809562211, CAST(N'1994-06-15T00:00:00.000' AS DateTime), CAST(N'2016-05-14T00:00:00.000' AS DateTime), 30000)
INSERT [dbo].[empleados] ([codigo], [nombre], [apellido], [posicion], [cedula], [direccion], [tel], [fecha_de_nacimiento], [fecha_de_ingresi], [sueldo]) VALUES (11, N'manuel ', N'jimenez ', N'vendedor ', N'4025552442', N'c/ principal hato mayor ~~71', 1809562211, CAST(N'1993-07-13T00:00:00.000' AS DateTime), CAST(N'2018-09-15T00:00:00.000' AS DateTime), 20000)
SET IDENTITY_INSERT [dbo].[empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[maquina_registradora] ON 

INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (1, 1101, 1)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (2, 1102, 2)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (3, 1103, 3)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (4, 1104, 4)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (5, 1105, 5)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (6, 1106, 6)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (7, 1107, 7)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (8, 1108, 8)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (9, 1109, 9)
INSERT [dbo].[maquina_registradora] ([codigo], [estacion], [maquina]) VALUES (10, 1110, 10)
SET IDENTITY_INSERT [dbo].[maquina_registradora] OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (1, N'arroz', 150)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (2, N'habichuela ', 80)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (3, N'macarrones ', 35)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (4, N'salami ', 185)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (5, N'queso ', 75)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (6, N'pan', 45)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (7, N'huevos ', 60)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (8, N'aceite', 180)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (9, N'fideos ', 45)
INSERT [dbo].[productos] ([codigo], [nombre], [precio]) VALUES (10, N'leche', 400)
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (4, 1102, 1, 3)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (11, 1103, 4, 5)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (4, 1102, 5, 8)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (4, 1104, 8, 1)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (11, 1102, 10, 9)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (11, 1103, 4, 7)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (4, 1105, 2, 2)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (4, 1108, 6, 4)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (11, 1101, 5, 3)
INSERT [dbo].[ventas] ([empleados], [maquina], [producto], [cliente]) VALUES (11, 1107, 7, 2)
GO
USE [master]
GO
ALTER DATABASE [DistribuidoraDeAlimentos] SET  READ_WRITE 
GO
