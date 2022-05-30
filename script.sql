USE [master]
GO
/****** Object:  Database [DBbtyon]    Script Date: 30.05.2022 13:48:11 ******/
CREATE DATABASE [DBbtyon]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBbtyon', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBbtyon.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBbtyon_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DBbtyon_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBbtyon] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBbtyon].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBbtyon] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBbtyon] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBbtyon] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBbtyon] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBbtyon] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBbtyon] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DBbtyon] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBbtyon] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBbtyon] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBbtyon] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBbtyon] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBbtyon] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBbtyon] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBbtyon] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBbtyon] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBbtyon] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBbtyon] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBbtyon] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBbtyon] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBbtyon] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBbtyon] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBbtyon] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBbtyon] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBbtyon] SET  MULTI_USER 
GO
ALTER DATABASE [DBbtyon] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBbtyon] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBbtyon] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBbtyon] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBbtyon] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBbtyon] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBbtyon] SET QUERY_STORE = OFF
GO
USE [DBbtyon]
GO
/****** Object:  Table [dbo].[Columns]    Script Date: 30.05.2022 13:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Columns](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Order] [int] NULL,
	[IsVisible] [bit] NULL,
 CONSTRAINT [PK_Columns] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Records]    Script Date: 30.05.2022 13:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Records](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateTime] [datetime] NULL,
	[ModifyTime] [datetime] NULL,
 CONSTRAINT [PK_Records] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLogs]    Script Date: 30.05.2022 13:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ColumnID] [int] NULL,
	[ValueID] [int] NULL,
	[RecordID] [int] NULL,
	[Added] [bit] NULL,
	[Deleted] [bit] NULL,
	[Updated] [bit] NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_SystemLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Values]    Script Date: 30.05.2022 13:48:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Values](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RecordID] [int] NULL,
	[ColumnID] [int] NULL,
	[Value] [nvarchar](50) NULL,
 CONSTRAINT [PK_Values] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Columns] ON 

INSERT [dbo].[Columns] ([Id], [Name], [Order], [IsVisible]) VALUES (2051, N'Name', 1, 1)
INSERT [dbo].[Columns] ([Id], [Name], [Order], [IsVisible]) VALUES (2053, N'Surname', 2, 1)
SET IDENTITY_INSERT [dbo].[Columns] OFF
GO
SET IDENTITY_INSERT [dbo].[Records] ON 

INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1, CAST(N'2019-12-02T00:00:00.000' AS DateTime), CAST(N'2020-12-02T00:00:00.000' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (22, CAST(N'2022-05-26T12:31:32.127' AS DateTime), CAST(N'2022-05-26T12:31:32.127' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (23, CAST(N'2022-05-26T13:21:38.507' AS DateTime), CAST(N'2022-05-26T13:21:38.507' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (24, CAST(N'2022-05-26T15:21:06.010' AS DateTime), CAST(N'2022-05-26T15:21:06.010' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (25, CAST(N'2022-05-26T21:30:17.620' AS DateTime), CAST(N'2022-05-26T21:30:17.620' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1024, CAST(N'2022-05-27T21:00:31.643' AS DateTime), CAST(N'2022-05-27T21:00:31.643' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1025, CAST(N'2022-05-27T21:00:34.513' AS DateTime), CAST(N'2022-05-27T21:00:34.513' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1026, CAST(N'2022-05-27T21:00:36.630' AS DateTime), CAST(N'2022-05-27T21:00:36.630' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1027, CAST(N'2022-05-27T21:00:37.537' AS DateTime), CAST(N'2022-05-27T21:00:37.537' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1028, CAST(N'2022-05-27T21:00:38.890' AS DateTime), CAST(N'2022-05-27T21:00:38.890' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1029, CAST(N'2022-05-27T21:00:40.177' AS DateTime), CAST(N'2022-05-27T21:00:40.177' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1030, CAST(N'2022-05-27T21:00:41.193' AS DateTime), CAST(N'2022-05-27T21:00:41.193' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1031, CAST(N'2022-05-27T21:00:41.933' AS DateTime), CAST(N'2022-05-27T21:00:41.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1032, CAST(N'2022-05-27T21:00:57.897' AS DateTime), CAST(N'2022-05-27T21:00:57.897' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1033, CAST(N'2022-05-27T21:00:58.863' AS DateTime), CAST(N'2022-05-27T21:00:58.863' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1034, CAST(N'2022-05-27T21:01:00.043' AS DateTime), CAST(N'2022-05-27T21:01:00.043' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1035, CAST(N'2022-05-27T21:01:00.810' AS DateTime), CAST(N'2022-05-27T21:01:00.810' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1036, CAST(N'2022-05-27T21:01:02.777' AS DateTime), CAST(N'2022-05-27T21:01:02.777' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1037, CAST(N'2022-05-27T21:01:03.817' AS DateTime), CAST(N'2022-05-27T21:01:03.817' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1038, CAST(N'2022-05-27T21:01:05.777' AS DateTime), CAST(N'2022-05-27T21:01:05.777' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1039, CAST(N'2022-05-27T21:01:06.497' AS DateTime), CAST(N'2022-05-27T21:01:06.497' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1040, CAST(N'2022-05-27T21:01:48.987' AS DateTime), CAST(N'2022-05-27T21:01:48.987' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1041, CAST(N'2022-05-27T21:01:50.680' AS DateTime), CAST(N'2022-05-27T21:01:50.680' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1042, CAST(N'2022-05-27T22:15:22.260' AS DateTime), CAST(N'2022-05-27T22:15:22.260' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1043, CAST(N'2022-05-27T22:15:31.987' AS DateTime), CAST(N'2022-05-27T22:15:31.987' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1044, CAST(N'2022-05-27T22:58:22.260' AS DateTime), CAST(N'2022-05-27T22:58:22.260' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1045, CAST(N'2022-05-27T22:58:25.200' AS DateTime), CAST(N'2022-05-27T22:58:25.200' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1046, CAST(N'2022-05-27T22:58:29.590' AS DateTime), CAST(N'2022-05-27T22:58:29.590' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1047, CAST(N'2022-05-27T22:58:31.143' AS DateTime), CAST(N'2022-05-27T22:58:31.143' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1048, CAST(N'2022-05-27T22:58:35.003' AS DateTime), CAST(N'2022-05-27T22:58:35.003' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1049, CAST(N'2022-05-27T22:58:37.093' AS DateTime), CAST(N'2022-05-27T22:58:37.093' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1050, CAST(N'2022-05-27T22:58:48.717' AS DateTime), CAST(N'2022-05-27T22:58:48.717' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1051, CAST(N'2022-05-27T22:58:50.280' AS DateTime), CAST(N'2022-05-27T22:58:50.280' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1052, CAST(N'2022-05-27T23:25:48.250' AS DateTime), CAST(N'2022-05-27T23:25:48.250' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1053, CAST(N'2022-05-27T23:25:52.050' AS DateTime), CAST(N'2022-05-27T23:25:52.050' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1054, CAST(N'2022-05-27T23:49:04.190' AS DateTime), CAST(N'2022-05-27T23:49:04.190' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1055, CAST(N'2022-05-28T00:16:38.847' AS DateTime), CAST(N'2022-05-28T00:16:38.847' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1056, CAST(N'2022-05-28T00:16:39.073' AS DateTime), CAST(N'2022-05-28T00:16:39.073' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1057, CAST(N'2022-05-28T00:16:55.440' AS DateTime), CAST(N'2022-05-28T00:16:55.440' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1058, CAST(N'2022-05-28T00:16:55.663' AS DateTime), CAST(N'2022-05-28T00:16:55.663' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1059, CAST(N'2022-05-28T00:16:58.067' AS DateTime), CAST(N'2022-05-28T00:16:58.067' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1060, CAST(N'2022-05-28T00:16:58.207' AS DateTime), CAST(N'2022-05-28T00:16:58.207' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1061, CAST(N'2022-05-28T00:17:23.647' AS DateTime), CAST(N'2022-05-28T00:17:23.647' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1062, CAST(N'2022-05-28T00:17:23.933' AS DateTime), CAST(N'2022-05-28T00:17:23.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1063, CAST(N'2022-05-28T00:18:18.537' AS DateTime), CAST(N'2022-05-28T00:18:18.537' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1064, CAST(N'2022-05-28T00:18:18.657' AS DateTime), CAST(N'2022-05-28T00:18:18.657' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1065, CAST(N'2022-05-28T12:07:51.910' AS DateTime), CAST(N'2022-05-28T12:07:51.910' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1066, CAST(N'2022-05-28T12:08:23.467' AS DateTime), CAST(N'2022-05-28T12:08:23.467' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1067, CAST(N'2022-05-28T12:08:29.210' AS DateTime), CAST(N'2022-05-28T12:08:29.210' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1068, CAST(N'2022-05-28T12:15:04.513' AS DateTime), CAST(N'2022-05-28T12:15:04.513' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1069, CAST(N'2022-05-28T12:15:07.583' AS DateTime), CAST(N'2022-05-28T12:15:07.583' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1070, CAST(N'2022-05-28T12:15:09.613' AS DateTime), CAST(N'2022-05-28T12:15:09.613' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1071, CAST(N'2022-05-28T12:15:10.943' AS DateTime), CAST(N'2022-05-28T12:15:10.943' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1072, CAST(N'2022-05-28T12:18:24.347' AS DateTime), CAST(N'2022-05-28T12:18:24.347' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1073, CAST(N'2022-05-28T12:18:24.720' AS DateTime), CAST(N'2022-05-28T12:18:24.720' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1074, CAST(N'2022-05-28T12:18:43.363' AS DateTime), CAST(N'2022-05-28T12:18:43.363' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1075, CAST(N'2022-05-28T12:18:44.547' AS DateTime), CAST(N'2022-05-28T12:18:44.547' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1076, CAST(N'2022-05-28T12:18:47.797' AS DateTime), CAST(N'2022-05-28T12:18:47.797' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1077, CAST(N'2022-05-28T12:18:47.830' AS DateTime), CAST(N'2022-05-28T12:18:47.830' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1078, CAST(N'2022-05-28T12:18:59.283' AS DateTime), CAST(N'2022-05-28T12:18:59.283' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1079, CAST(N'2022-05-28T12:18:59.457' AS DateTime), CAST(N'2022-05-28T12:18:59.457' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1080, CAST(N'2022-05-28T12:20:02.557' AS DateTime), CAST(N'2022-05-28T12:20:02.557' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1081, CAST(N'2022-05-28T12:20:02.583' AS DateTime), CAST(N'2022-05-28T12:20:02.583' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1082, CAST(N'2022-05-28T12:20:14.590' AS DateTime), CAST(N'2022-05-28T12:20:14.590' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1083, CAST(N'2022-05-28T12:20:14.880' AS DateTime), CAST(N'2022-05-28T12:20:14.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1084, CAST(N'2022-05-28T12:20:15.793' AS DateTime), CAST(N'2022-05-28T12:20:15.793' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1085, CAST(N'2022-05-28T12:20:16.687' AS DateTime), CAST(N'2022-05-28T12:20:16.687' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1086, CAST(N'2022-05-28T12:20:21.660' AS DateTime), CAST(N'2022-05-28T12:20:21.660' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1087, CAST(N'2022-05-28T12:20:21.687' AS DateTime), CAST(N'2022-05-28T12:20:21.687' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1088, CAST(N'2022-05-28T12:20:24.107' AS DateTime), CAST(N'2022-05-28T12:20:24.107' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1089, CAST(N'2022-05-28T12:20:25.163' AS DateTime), CAST(N'2022-05-28T12:20:25.163' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1090, CAST(N'2022-05-28T12:20:28.820' AS DateTime), CAST(N'2022-05-28T12:20:28.820' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1091, CAST(N'2022-05-28T12:20:28.857' AS DateTime), CAST(N'2022-05-28T12:20:28.857' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1092, CAST(N'2022-05-28T12:20:30.250' AS DateTime), CAST(N'2022-05-28T12:20:30.250' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1093, CAST(N'2022-05-28T12:20:31.253' AS DateTime), CAST(N'2022-05-28T12:20:31.253' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1094, CAST(N'2022-05-28T12:20:32.730' AS DateTime), CAST(N'2022-05-28T12:20:32.730' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1095, CAST(N'2022-05-28T12:20:33.417' AS DateTime), CAST(N'2022-05-28T12:20:33.417' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1096, CAST(N'2022-05-28T12:20:36.127' AS DateTime), CAST(N'2022-05-28T12:20:36.127' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1097, CAST(N'2022-05-28T12:20:36.153' AS DateTime), CAST(N'2022-05-28T12:20:36.153' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1098, CAST(N'2022-05-28T12:20:36.370' AS DateTime), CAST(N'2022-05-28T12:20:36.370' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1099, CAST(N'2022-05-28T12:20:36.420' AS DateTime), CAST(N'2022-05-28T12:20:36.420' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1100, CAST(N'2022-05-28T12:20:37.627' AS DateTime), CAST(N'2022-05-28T12:20:37.627' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1101, CAST(N'2022-05-28T12:20:38.550' AS DateTime), CAST(N'2022-05-28T12:20:38.550' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1102, CAST(N'2022-05-28T12:20:39.860' AS DateTime), CAST(N'2022-05-28T12:20:39.860' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1103, CAST(N'2022-05-28T12:20:40.383' AS DateTime), CAST(N'2022-05-28T12:20:40.383' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1104, CAST(N'2022-05-28T12:21:03.140' AS DateTime), CAST(N'2022-05-28T12:21:03.140' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1105, CAST(N'2022-05-28T12:21:03.917' AS DateTime), CAST(N'2022-05-28T12:21:03.917' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1106, CAST(N'2022-05-28T12:21:12.610' AS DateTime), CAST(N'2022-05-28T12:21:12.610' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1107, CAST(N'2022-05-28T12:21:13.010' AS DateTime), CAST(N'2022-05-28T12:21:13.010' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1108, CAST(N'2022-05-28T12:43:24.990' AS DateTime), CAST(N'2022-05-28T12:43:24.990' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1109, CAST(N'2022-05-28T12:43:25.107' AS DateTime), CAST(N'2022-05-28T12:43:25.107' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1110, CAST(N'2022-05-28T12:52:37.553' AS DateTime), CAST(N'2022-05-28T12:52:37.553' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1111, CAST(N'2022-05-28T12:54:45.683' AS DateTime), CAST(N'2022-05-28T12:54:45.683' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1112, CAST(N'2022-05-28T13:44:31.053' AS DateTime), CAST(N'2022-05-28T13:44:31.053' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1113, CAST(N'2022-05-28T13:46:12.747' AS DateTime), CAST(N'2022-05-28T13:46:12.747' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1114, CAST(N'2022-05-28T13:47:07.103' AS DateTime), CAST(N'2022-05-28T13:47:07.103' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1115, CAST(N'2022-05-28T13:47:07.227' AS DateTime), CAST(N'2022-05-28T13:47:07.227' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1116, CAST(N'2022-05-28T13:50:04.990' AS DateTime), CAST(N'2022-05-28T13:50:04.990' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1117, CAST(N'2022-05-28T13:50:05.203' AS DateTime), CAST(N'2022-05-28T13:50:05.203' AS DateTime))
GO
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1118, CAST(N'2022-05-28T13:53:32.853' AS DateTime), CAST(N'2022-05-28T13:53:32.853' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1119, CAST(N'2022-05-28T13:53:34.413' AS DateTime), CAST(N'2022-05-28T13:53:34.413' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1120, CAST(N'2022-05-28T14:04:57.410' AS DateTime), CAST(N'2022-05-28T14:04:57.410' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1121, CAST(N'2022-05-28T14:04:58.617' AS DateTime), CAST(N'2022-05-28T14:04:58.617' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1122, CAST(N'2022-05-28T14:08:15.057' AS DateTime), CAST(N'2022-05-28T14:08:15.057' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1123, CAST(N'2022-05-28T14:08:16.257' AS DateTime), CAST(N'2022-05-28T14:08:16.257' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1124, CAST(N'2022-05-28T14:08:24.237' AS DateTime), CAST(N'2022-05-28T14:08:24.237' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1125, CAST(N'2022-05-28T14:08:24.707' AS DateTime), CAST(N'2022-05-28T14:08:24.707' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1126, CAST(N'2022-05-28T14:10:53.343' AS DateTime), CAST(N'2022-05-28T14:10:53.343' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1127, CAST(N'2022-05-28T14:32:39.073' AS DateTime), CAST(N'2022-05-28T14:32:39.073' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1128, CAST(N'2022-05-28T14:32:40.470' AS DateTime), CAST(N'2022-05-28T14:32:40.470' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1129, CAST(N'2022-05-28T14:34:41.347' AS DateTime), CAST(N'2022-05-28T14:34:41.347' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1130, CAST(N'2022-05-28T14:34:42.813' AS DateTime), CAST(N'2022-05-28T14:34:42.813' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1131, CAST(N'2022-05-28T14:36:06.040' AS DateTime), CAST(N'2022-05-28T14:36:06.040' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1132, CAST(N'2022-05-28T14:47:03.110' AS DateTime), CAST(N'2022-05-28T14:47:03.110' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1133, CAST(N'2022-05-28T14:47:03.500' AS DateTime), CAST(N'2022-05-28T14:47:03.500' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1134, CAST(N'2022-05-28T14:47:06.773' AS DateTime), CAST(N'2022-05-28T14:47:06.773' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1135, CAST(N'2022-05-28T14:47:10.007' AS DateTime), CAST(N'2022-05-28T14:47:10.007' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1136, CAST(N'2022-05-28T14:47:13.520' AS DateTime), CAST(N'2022-05-28T14:47:13.520' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1137, CAST(N'2022-05-28T14:47:14.920' AS DateTime), CAST(N'2022-05-28T14:47:14.920' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1138, CAST(N'2022-05-28T14:47:17.507' AS DateTime), CAST(N'2022-05-28T14:47:17.507' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1139, CAST(N'2022-05-28T14:47:18.657' AS DateTime), CAST(N'2022-05-28T14:47:18.657' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1140, CAST(N'2022-05-28T14:47:21.220' AS DateTime), CAST(N'2022-05-28T14:47:21.220' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1141, CAST(N'2022-05-28T14:47:22.163' AS DateTime), CAST(N'2022-05-28T14:47:22.163' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1142, CAST(N'2022-05-28T14:48:58.540' AS DateTime), CAST(N'2022-05-28T14:48:58.540' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1143, CAST(N'2022-05-28T14:48:59.513' AS DateTime), CAST(N'2022-05-28T14:48:59.513' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1144, CAST(N'2022-05-28T14:49:03.263' AS DateTime), CAST(N'2022-05-28T14:49:03.263' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1145, CAST(N'2022-05-28T14:49:04.190' AS DateTime), CAST(N'2022-05-28T14:49:04.190' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1146, CAST(N'2022-05-28T14:49:07.463' AS DateTime), CAST(N'2022-05-28T14:49:07.463' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1147, CAST(N'2022-05-28T14:49:08.763' AS DateTime), CAST(N'2022-05-28T14:49:08.763' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1148, CAST(N'2022-05-28T14:51:02.477' AS DateTime), CAST(N'2022-05-28T14:51:02.477' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1149, CAST(N'2022-05-28T14:51:04.077' AS DateTime), CAST(N'2022-05-28T14:51:04.077' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1150, CAST(N'2022-05-28T14:52:26.880' AS DateTime), CAST(N'2022-05-28T14:52:26.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1151, CAST(N'2022-05-28T15:02:01.020' AS DateTime), CAST(N'2022-05-28T15:02:01.020' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1152, CAST(N'2022-05-28T15:09:57.880' AS DateTime), CAST(N'2022-05-28T15:09:57.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1153, CAST(N'2022-05-28T15:14:29.250' AS DateTime), CAST(N'2022-05-28T15:14:29.250' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1154, CAST(N'2022-05-28T15:14:30.513' AS DateTime), CAST(N'2022-05-28T15:14:30.513' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1155, CAST(N'2022-05-28T15:14:51.410' AS DateTime), CAST(N'2022-05-28T15:14:51.410' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1156, CAST(N'2022-05-28T15:14:52.530' AS DateTime), CAST(N'2022-05-28T15:14:52.530' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1157, CAST(N'2022-05-28T15:16:09.160' AS DateTime), CAST(N'2022-05-28T15:16:09.160' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1158, CAST(N'2022-05-28T15:16:09.290' AS DateTime), CAST(N'2022-05-28T15:16:09.290' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1159, CAST(N'2022-05-28T15:16:41.880' AS DateTime), CAST(N'2022-05-28T15:16:41.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1160, CAST(N'2022-05-28T15:16:51.320' AS DateTime), CAST(N'2022-05-28T15:16:51.320' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1161, CAST(N'2022-05-28T15:16:51.403' AS DateTime), CAST(N'2022-05-28T15:16:51.403' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1162, CAST(N'2022-05-28T15:17:09.390' AS DateTime), CAST(N'2022-05-28T15:17:09.390' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1163, CAST(N'2022-05-28T15:17:11.930' AS DateTime), CAST(N'2022-05-28T15:17:11.930' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1164, CAST(N'2022-05-28T15:17:13.947' AS DateTime), CAST(N'2022-05-28T15:17:13.947' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1165, CAST(N'2022-05-28T15:17:16.010' AS DateTime), CAST(N'2022-05-28T15:17:16.010' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1166, CAST(N'2022-05-28T15:19:04.330' AS DateTime), CAST(N'2022-05-28T15:19:04.330' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1167, CAST(N'2022-05-28T15:19:05.470' AS DateTime), CAST(N'2022-05-28T15:19:05.470' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1168, CAST(N'2022-05-28T15:19:09.490' AS DateTime), CAST(N'2022-05-28T15:19:09.490' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1169, CAST(N'2022-05-28T15:19:10.580' AS DateTime), CAST(N'2022-05-28T15:19:10.580' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1170, CAST(N'2022-05-28T15:19:12.713' AS DateTime), CAST(N'2022-05-28T15:19:12.713' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1171, CAST(N'2022-05-28T15:19:13.613' AS DateTime), CAST(N'2022-05-28T15:19:13.613' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1172, CAST(N'2022-05-28T15:19:16.170' AS DateTime), CAST(N'2022-05-28T15:19:16.170' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1173, CAST(N'2022-05-28T15:19:16.933' AS DateTime), CAST(N'2022-05-28T15:19:16.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1174, CAST(N'2022-05-28T15:23:52.237' AS DateTime), CAST(N'2022-05-28T15:23:52.237' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1175, CAST(N'2022-05-28T15:23:55.447' AS DateTime), CAST(N'2022-05-28T15:23:55.447' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1176, CAST(N'2022-05-28T15:45:01.843' AS DateTime), CAST(N'2022-05-28T15:45:01.843' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1177, CAST(N'2022-05-28T15:45:23.057' AS DateTime), CAST(N'2022-05-28T15:45:23.057' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1178, CAST(N'2022-05-28T19:30:24.893' AS DateTime), CAST(N'2022-05-28T19:30:24.893' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1179, CAST(N'2022-05-28T19:30:28.423' AS DateTime), CAST(N'2022-05-28T19:30:28.423' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1180, CAST(N'2022-05-28T19:30:39.243' AS DateTime), CAST(N'2022-05-28T19:30:39.243' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1181, CAST(N'2022-05-28T19:30:44.870' AS DateTime), CAST(N'2022-05-28T19:30:44.870' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1182, CAST(N'2022-05-28T19:30:57.207' AS DateTime), CAST(N'2022-05-28T19:30:57.207' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1183, CAST(N'2022-05-28T19:30:57.233' AS DateTime), CAST(N'2022-05-28T19:30:57.233' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1184, CAST(N'2022-05-28T19:32:30.560' AS DateTime), CAST(N'2022-05-28T19:32:30.560' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1185, CAST(N'2022-05-28T19:32:33.250' AS DateTime), CAST(N'2022-05-28T19:32:33.250' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1186, CAST(N'2022-05-28T19:32:41.947' AS DateTime), CAST(N'2022-05-28T19:32:41.947' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1187, CAST(N'2022-05-28T19:32:42.840' AS DateTime), CAST(N'2022-05-28T19:32:42.840' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1188, CAST(N'2022-05-28T19:33:33.750' AS DateTime), CAST(N'2022-05-28T19:33:33.750' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1189, CAST(N'2022-05-28T19:33:33.980' AS DateTime), CAST(N'2022-05-28T19:33:33.980' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1190, CAST(N'2022-05-28T19:48:34.127' AS DateTime), CAST(N'2022-05-28T19:48:34.127' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1191, CAST(N'2022-05-28T19:48:34.660' AS DateTime), CAST(N'2022-05-28T19:48:34.660' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1192, CAST(N'2022-05-28T19:51:23.707' AS DateTime), CAST(N'2022-05-28T19:51:23.707' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1193, CAST(N'2022-05-28T19:51:23.833' AS DateTime), CAST(N'2022-05-28T19:51:23.833' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1194, CAST(N'2022-05-28T19:52:02.080' AS DateTime), CAST(N'2022-05-28T19:52:02.080' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1195, CAST(N'2022-05-28T19:52:50.687' AS DateTime), CAST(N'2022-05-28T19:52:50.687' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1196, CAST(N'2022-05-28T19:52:50.707' AS DateTime), CAST(N'2022-05-28T19:52:50.707' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1197, CAST(N'2022-05-28T19:53:01.650' AS DateTime), CAST(N'2022-05-28T19:53:01.650' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1198, CAST(N'2022-05-28T19:53:01.697' AS DateTime), CAST(N'2022-05-28T19:53:01.697' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1199, CAST(N'2022-05-28T19:54:20.460' AS DateTime), CAST(N'2022-05-28T19:54:20.460' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1200, CAST(N'2022-05-28T19:59:18.743' AS DateTime), CAST(N'2022-05-28T19:59:18.743' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1201, CAST(N'2022-05-28T19:59:19.863' AS DateTime), CAST(N'2022-05-28T19:59:19.863' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1202, CAST(N'2022-05-28T20:15:01.370' AS DateTime), CAST(N'2022-05-28T20:15:01.370' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1203, CAST(N'2022-05-28T20:15:02.150' AS DateTime), CAST(N'2022-05-28T20:15:02.150' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1204, CAST(N'2022-05-28T20:15:23.770' AS DateTime), CAST(N'2022-05-28T20:15:23.770' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1205, CAST(N'2022-05-28T20:15:25.850' AS DateTime), CAST(N'2022-05-28T20:15:25.850' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1206, CAST(N'2022-05-28T20:25:32.773' AS DateTime), CAST(N'2022-05-28T20:25:32.773' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1207, CAST(N'2022-05-28T20:25:33.703' AS DateTime), CAST(N'2022-05-28T20:25:33.703' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1208, CAST(N'2022-05-28T20:25:35.037' AS DateTime), CAST(N'2022-05-28T20:25:35.037' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1209, CAST(N'2022-05-28T20:34:16.317' AS DateTime), CAST(N'2022-05-28T20:34:16.317' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1210, CAST(N'2022-05-28T20:34:54.720' AS DateTime), CAST(N'2022-05-28T20:34:54.720' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1211, CAST(N'2022-05-28T20:37:20.287' AS DateTime), CAST(N'2022-05-28T20:37:20.287' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1212, CAST(N'2022-05-28T20:40:41.260' AS DateTime), CAST(N'2022-05-28T20:40:41.260' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1213, CAST(N'2022-05-28T20:53:05.260' AS DateTime), CAST(N'2022-05-28T20:53:05.260' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1214, CAST(N'2022-05-28T20:53:06.727' AS DateTime), CAST(N'2022-05-28T20:53:06.727' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1215, CAST(N'2022-05-28T21:16:24.933' AS DateTime), CAST(N'2022-05-28T21:16:24.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1216, CAST(N'2022-05-28T21:16:27.173' AS DateTime), CAST(N'2022-05-28T21:16:27.173' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1217, CAST(N'2022-05-28T21:35:13.043' AS DateTime), CAST(N'2022-05-28T21:35:13.043' AS DateTime))
GO
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1218, CAST(N'2022-05-28T21:35:13.803' AS DateTime), CAST(N'2022-05-28T21:35:13.803' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1219, CAST(N'2022-05-28T21:40:48.800' AS DateTime), CAST(N'2022-05-28T21:40:48.800' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1220, CAST(N'2022-05-28T21:40:49.540' AS DateTime), CAST(N'2022-05-28T21:40:49.540' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1221, CAST(N'2022-05-28T21:58:04.677' AS DateTime), CAST(N'2022-05-28T21:58:04.677' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1222, CAST(N'2022-05-28T21:58:04.877' AS DateTime), CAST(N'2022-05-28T21:58:04.877' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1223, CAST(N'2022-05-28T21:58:17.760' AS DateTime), CAST(N'2022-05-28T21:58:17.760' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1224, CAST(N'2022-05-28T21:58:18.033' AS DateTime), CAST(N'2022-05-28T21:58:18.033' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1225, CAST(N'2022-05-28T21:58:41.730' AS DateTime), CAST(N'2022-05-28T21:58:41.730' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1226, CAST(N'2022-05-28T21:58:42.433' AS DateTime), CAST(N'2022-05-28T21:58:42.433' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1227, CAST(N'2022-05-28T21:59:17.060' AS DateTime), CAST(N'2022-05-28T21:59:17.060' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1228, CAST(N'2022-05-28T21:59:18.233' AS DateTime), CAST(N'2022-05-28T21:59:18.233' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1229, CAST(N'2022-05-28T21:59:35.390' AS DateTime), CAST(N'2022-05-28T21:59:35.390' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1230, CAST(N'2022-05-28T21:59:36.493' AS DateTime), CAST(N'2022-05-28T21:59:36.493' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1231, CAST(N'2022-05-28T22:00:03.237' AS DateTime), CAST(N'2022-05-28T22:00:03.237' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1232, CAST(N'2022-05-28T22:00:04.140' AS DateTime), CAST(N'2022-05-28T22:00:04.140' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1233, CAST(N'2022-05-28T22:00:11.563' AS DateTime), CAST(N'2022-05-28T22:00:11.563' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1234, CAST(N'2022-05-28T22:00:13.290' AS DateTime), CAST(N'2022-05-28T22:00:13.290' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1235, CAST(N'2022-05-28T22:01:39.847' AS DateTime), CAST(N'2022-05-28T22:01:39.847' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1236, CAST(N'2022-05-28T22:01:40.673' AS DateTime), CAST(N'2022-05-28T22:01:40.673' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1237, CAST(N'2022-05-28T22:01:44.880' AS DateTime), CAST(N'2022-05-28T22:01:44.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1238, CAST(N'2022-05-28T22:01:53.177' AS DateTime), CAST(N'2022-05-28T22:01:53.177' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1239, CAST(N'2022-05-28T22:01:53.543' AS DateTime), CAST(N'2022-05-28T22:01:53.543' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1240, CAST(N'2022-05-28T22:01:57.077' AS DateTime), CAST(N'2022-05-28T22:01:57.077' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1241, CAST(N'2022-05-28T22:01:57.523' AS DateTime), CAST(N'2022-05-28T22:01:57.523' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1242, CAST(N'2022-05-28T22:01:59.537' AS DateTime), CAST(N'2022-05-28T22:01:59.537' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1243, CAST(N'2022-05-28T22:01:59.680' AS DateTime), CAST(N'2022-05-28T22:01:59.680' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1244, CAST(N'2022-05-28T22:02:01.433' AS DateTime), CAST(N'2022-05-28T22:02:01.433' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1245, CAST(N'2022-05-28T22:03:27.133' AS DateTime), CAST(N'2022-05-28T22:03:27.133' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1246, CAST(N'2022-05-28T22:05:21.760' AS DateTime), CAST(N'2022-05-28T22:05:21.760' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1247, CAST(N'2022-05-28T22:09:58.640' AS DateTime), CAST(N'2022-05-28T22:09:58.640' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1248, CAST(N'2022-05-28T22:09:58.773' AS DateTime), CAST(N'2022-05-28T22:09:58.773' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1249, CAST(N'2022-05-28T22:11:04.433' AS DateTime), CAST(N'2022-05-28T22:11:04.433' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1250, CAST(N'2022-05-28T22:17:46.110' AS DateTime), CAST(N'2022-05-28T22:17:46.110' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1251, CAST(N'2022-05-28T22:19:19.887' AS DateTime), CAST(N'2022-05-28T22:19:19.887' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1252, CAST(N'2022-05-28T22:19:21.007' AS DateTime), CAST(N'2022-05-28T22:19:21.007' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1253, CAST(N'2022-05-28T22:21:38.683' AS DateTime), CAST(N'2022-05-28T22:21:38.683' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1254, CAST(N'2022-05-28T22:21:41.007' AS DateTime), CAST(N'2022-05-28T22:21:41.007' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1255, CAST(N'2022-05-28T22:21:54.747' AS DateTime), CAST(N'2022-05-28T22:21:54.747' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1256, CAST(N'2022-05-28T22:22:03.220' AS DateTime), CAST(N'2022-05-28T22:22:03.220' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1257, CAST(N'2022-05-28T22:22:03.290' AS DateTime), CAST(N'2022-05-28T22:22:03.290' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1258, CAST(N'2022-05-28T22:23:04.360' AS DateTime), CAST(N'2022-05-28T22:23:04.360' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1259, CAST(N'2022-05-28T22:23:16.997' AS DateTime), CAST(N'2022-05-28T22:23:16.997' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1260, CAST(N'2022-05-28T22:23:21.620' AS DateTime), CAST(N'2022-05-28T22:23:21.620' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1261, CAST(N'2022-05-28T22:23:32.383' AS DateTime), CAST(N'2022-05-28T22:23:32.383' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1262, CAST(N'2022-05-28T22:23:44.660' AS DateTime), CAST(N'2022-05-28T22:23:44.660' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1263, CAST(N'2022-05-28T22:23:44.697' AS DateTime), CAST(N'2022-05-28T22:23:44.697' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1264, CAST(N'2022-05-28T22:23:54.013' AS DateTime), CAST(N'2022-05-28T22:23:54.013' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1265, CAST(N'2022-05-28T22:23:54.037' AS DateTime), CAST(N'2022-05-28T22:23:54.037' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1266, CAST(N'2022-05-28T22:24:00.230' AS DateTime), CAST(N'2022-05-28T22:24:00.230' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1267, CAST(N'2022-05-28T22:24:00.257' AS DateTime), CAST(N'2022-05-28T22:24:00.257' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1268, CAST(N'2022-05-28T22:25:42.057' AS DateTime), CAST(N'2022-05-28T22:25:42.057' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1269, CAST(N'2022-05-28T22:25:42.100' AS DateTime), CAST(N'2022-05-28T22:25:42.100' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1270, CAST(N'2022-05-28T22:25:58.900' AS DateTime), CAST(N'2022-05-28T22:25:58.900' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1271, CAST(N'2022-05-28T22:25:59.103' AS DateTime), CAST(N'2022-05-28T22:25:59.103' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1272, CAST(N'2022-05-28T22:26:04.753' AS DateTime), CAST(N'2022-05-28T22:26:04.753' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1273, CAST(N'2022-05-28T22:26:05.250' AS DateTime), CAST(N'2022-05-28T22:26:05.250' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1274, CAST(N'2022-05-28T22:26:10.213' AS DateTime), CAST(N'2022-05-28T22:26:10.213' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1275, CAST(N'2022-05-28T22:26:13.030' AS DateTime), CAST(N'2022-05-28T22:26:13.030' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1276, CAST(N'2022-05-28T22:26:18.127' AS DateTime), CAST(N'2022-05-28T22:26:18.127' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1277, CAST(N'2022-05-28T22:26:18.470' AS DateTime), CAST(N'2022-05-28T22:26:18.470' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1278, CAST(N'2022-05-28T22:26:21.983' AS DateTime), CAST(N'2022-05-28T22:26:21.983' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1279, CAST(N'2022-05-28T22:27:07.057' AS DateTime), CAST(N'2022-05-28T22:27:07.057' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1280, CAST(N'2022-05-28T22:30:35.793' AS DateTime), CAST(N'2022-05-28T22:30:35.793' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1281, CAST(N'2022-05-28T22:32:41.483' AS DateTime), CAST(N'2022-05-28T22:32:41.483' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1282, CAST(N'2022-05-28T22:32:42.133' AS DateTime), CAST(N'2022-05-28T22:32:42.133' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1283, CAST(N'2022-05-28T22:32:54.410' AS DateTime), CAST(N'2022-05-28T22:32:54.410' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1284, CAST(N'2022-05-28T22:32:54.437' AS DateTime), CAST(N'2022-05-28T22:32:54.437' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1285, CAST(N'2022-05-28T22:33:08.017' AS DateTime), CAST(N'2022-05-28T22:33:08.017' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1286, CAST(N'2022-05-28T22:33:08.033' AS DateTime), CAST(N'2022-05-28T22:33:08.033' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1287, CAST(N'2022-05-28T22:33:45.933' AS DateTime), CAST(N'2022-05-28T22:33:45.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1288, CAST(N'2022-05-28T22:33:49.520' AS DateTime), CAST(N'2022-05-28T22:33:49.520' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1289, CAST(N'2022-05-28T22:37:23.383' AS DateTime), CAST(N'2022-05-28T22:37:23.383' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1290, CAST(N'2022-05-28T22:37:25.210' AS DateTime), CAST(N'2022-05-28T22:37:25.210' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1291, CAST(N'2022-05-28T22:37:30.993' AS DateTime), CAST(N'2022-05-28T22:37:30.993' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1292, CAST(N'2022-05-28T22:37:31.077' AS DateTime), CAST(N'2022-05-28T22:37:31.077' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1293, CAST(N'2022-05-28T22:37:34.777' AS DateTime), CAST(N'2022-05-28T22:37:34.777' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1294, CAST(N'2022-05-28T22:37:35.243' AS DateTime), CAST(N'2022-05-28T22:37:35.243' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1295, CAST(N'2022-05-28T22:37:47.343' AS DateTime), CAST(N'2022-05-28T22:37:47.343' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1296, CAST(N'2022-05-28T22:37:47.610' AS DateTime), CAST(N'2022-05-28T22:37:47.610' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1297, CAST(N'2022-05-28T22:39:00.047' AS DateTime), CAST(N'2022-05-28T22:39:00.047' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1298, CAST(N'2022-05-28T22:39:00.437' AS DateTime), CAST(N'2022-05-28T22:39:00.437' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1299, CAST(N'2022-05-28T22:39:06.907' AS DateTime), CAST(N'2022-05-28T22:39:06.907' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1300, CAST(N'2022-05-28T22:39:06.970' AS DateTime), CAST(N'2022-05-28T22:39:06.970' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1301, CAST(N'2022-05-28T22:39:13.110' AS DateTime), CAST(N'2022-05-28T22:39:13.110' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1302, CAST(N'2022-05-28T22:39:13.143' AS DateTime), CAST(N'2022-05-28T22:39:13.143' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1303, CAST(N'2022-05-28T22:39:52.710' AS DateTime), CAST(N'2022-05-28T22:39:52.710' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1304, CAST(N'2022-05-28T22:39:56.430' AS DateTime), CAST(N'2022-05-28T22:39:56.430' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1305, CAST(N'2022-05-28T22:40:19.090' AS DateTime), CAST(N'2022-05-28T22:40:19.090' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1306, CAST(N'2022-05-28T22:40:19.190' AS DateTime), CAST(N'2022-05-28T22:40:19.190' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1307, CAST(N'2022-05-28T22:40:52.927' AS DateTime), CAST(N'2022-05-28T22:40:52.927' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1308, CAST(N'2022-05-28T22:40:53.310' AS DateTime), CAST(N'2022-05-28T22:40:53.310' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1309, CAST(N'2022-05-28T22:40:57.280' AS DateTime), CAST(N'2022-05-28T22:40:57.280' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1310, CAST(N'2022-05-28T22:42:58.123' AS DateTime), CAST(N'2022-05-28T22:42:58.123' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1311, CAST(N'2022-05-28T22:43:01.680' AS DateTime), CAST(N'2022-05-28T22:43:01.680' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1312, CAST(N'2022-05-28T22:44:59.880' AS DateTime), CAST(N'2022-05-28T22:44:59.880' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1313, CAST(N'2022-05-28T22:45:00.203' AS DateTime), CAST(N'2022-05-28T22:45:00.203' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1314, CAST(N'2022-05-28T22:45:09.630' AS DateTime), CAST(N'2022-05-28T22:45:09.630' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1315, CAST(N'2022-05-28T22:45:10.603' AS DateTime), CAST(N'2022-05-28T22:45:10.603' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1316, CAST(N'2022-05-28T22:45:13.550' AS DateTime), CAST(N'2022-05-28T22:45:13.550' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1317, CAST(N'2022-05-28T22:45:14.580' AS DateTime), CAST(N'2022-05-28T22:45:14.580' AS DateTime))
GO
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1318, CAST(N'2022-05-28T22:47:02.060' AS DateTime), CAST(N'2022-05-28T22:47:02.060' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1319, CAST(N'2022-05-28T22:47:03.157' AS DateTime), CAST(N'2022-05-28T22:47:03.157' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1320, CAST(N'2022-05-28T22:47:03.410' AS DateTime), CAST(N'2022-05-28T22:47:03.410' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1321, CAST(N'2022-05-28T22:47:05.753' AS DateTime), CAST(N'2022-05-28T22:47:05.753' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1322, CAST(N'2022-05-28T22:47:08.843' AS DateTime), CAST(N'2022-05-28T22:47:08.843' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1323, CAST(N'2022-05-28T22:47:08.930' AS DateTime), CAST(N'2022-05-28T22:47:08.930' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1324, CAST(N'2022-05-28T22:47:09.187' AS DateTime), CAST(N'2022-05-28T22:47:09.187' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1325, CAST(N'2022-05-28T22:47:14.040' AS DateTime), CAST(N'2022-05-28T22:47:14.040' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1326, CAST(N'2022-05-28T22:47:15.037' AS DateTime), CAST(N'2022-05-28T22:47:15.037' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1327, CAST(N'2022-05-28T22:47:18.413' AS DateTime), CAST(N'2022-05-28T22:47:18.413' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1328, CAST(N'2022-05-28T22:47:27.047' AS DateTime), CAST(N'2022-05-28T22:47:27.047' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1414, CAST(N'2022-05-29T14:03:34.330' AS DateTime), CAST(N'2022-05-29T14:03:34.330' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1415, CAST(N'2022-05-29T14:03:34.393' AS DateTime), CAST(N'2022-05-29T14:03:34.393' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1416, CAST(N'2022-05-29T14:03:39.400' AS DateTime), CAST(N'2022-05-29T14:03:39.400' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1417, CAST(N'2022-05-29T14:03:41.857' AS DateTime), CAST(N'2022-05-29T14:03:41.857' AS DateTime))
GO
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1418, CAST(N'2022-05-29T14:05:02.743' AS DateTime), CAST(N'2022-05-29T14:05:02.743' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1419, CAST(N'2022-05-29T14:05:06.977' AS DateTime), CAST(N'2022-05-29T14:05:06.977' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1420, CAST(N'2022-05-29T14:05:08.387' AS DateTime), CAST(N'2022-05-29T14:05:08.387' AS DateTime))

GO
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1518, CAST(N'2022-05-30T08:15:01.490' AS DateTime), CAST(N'2022-05-30T08:15:01.490' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1519, CAST(N'2022-05-30T08:15:01.577' AS DateTime), CAST(N'2022-05-30T08:15:01.577' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1520, CAST(N'2022-05-30T08:16:10.323' AS DateTime), CAST(N'2022-05-30T08:16:10.323' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1521, CAST(N'2022-05-30T08:16:10.387' AS DateTime), CAST(N'2022-05-30T08:16:10.387' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1522, CAST(N'2022-05-30T09:03:50.870' AS DateTime), CAST(N'2022-05-30T09:03:50.870' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1523, CAST(N'2022-05-30T09:03:50.983' AS DateTime), CAST(N'2022-05-30T09:03:50.983' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1524, CAST(N'2022-05-30T09:14:57.853' AS DateTime), CAST(N'2022-05-30T09:14:57.853' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1525, CAST(N'2022-05-30T09:14:57.933' AS DateTime), CAST(N'2022-05-30T09:14:57.933' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1526, CAST(N'2022-05-30T09:15:50.107' AS DateTime), CAST(N'2022-05-30T09:15:50.107' AS DateTime))
INSERT [dbo].[Records] ([Id], [CreateTime], [ModifyTime]) VALUES (1527, CAST(N'2022-05-30T09:15:50.350' AS DateTime), CAST(N'2022-05-30T09:15:50.350' AS DateTime))

SET IDENTITY_INSERT [dbo].[Records] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemLogs] ON 

INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (28, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=deneme')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (29, NULL, NULL, 1531, 1, NULL, NULL, N'Column Added=mkey')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (30, NULL, NULL, 1532, NULL, NULL, 1, N'Column Hide: mkey')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (32, NULL, NULL, 1535, NULL, NULL, 1, N'Columns Moved: mkey(Up)-Name(Down)')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (33, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Name')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (34, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=mkey')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (43, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Surname')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (45, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Surname')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (46, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Name')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (52, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=PhoneNumber')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (53, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Name')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (54, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Surname')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (55, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=DateOfBirth')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (56, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Adress')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (57, 2051, NULL, 1554, 1, NULL, NULL, N'Column Added=Name')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (60, 2051, NULL, 1557, NULL, NULL, 1, N'Columns Moved: Surname(Up)-Name(Down)')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (62, 2051, NULL, 1559, NULL, NULL, 1, N'Columns Moved: Surname(Up)-Name(Down)')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (63, 2051, NULL, 1560, NULL, NULL, 1, N'Column Hide: Name')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (65, NULL, NULL, NULL, NULL, 1, NULL, N'Column deleted=Surname')
INSERT [dbo].[SystemLogs] ([Id], [ColumnID], [ValueID], [RecordID], [Added], [Deleted], [Updated], [Description]) VALUES (66, 2053, NULL, 1564, 1, NULL, NULL, N'Column Added=Surname')
SET IDENTITY_INSERT [dbo].[SystemLogs] OFF
GO
ALTER TABLE [dbo].[SystemLogs]  WITH CHECK ADD  CONSTRAINT [FK_SystemLogs_Columns] FOREIGN KEY([ColumnID])
REFERENCES [dbo].[Columns] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SystemLogs] CHECK CONSTRAINT [FK_SystemLogs_Columns]
GO
ALTER TABLE [dbo].[SystemLogs]  WITH CHECK ADD  CONSTRAINT [FK_SystemLogs_Records] FOREIGN KEY([RecordID])
REFERENCES [dbo].[Records] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SystemLogs] CHECK CONSTRAINT [FK_SystemLogs_Records]
GO
ALTER TABLE [dbo].[Values]  WITH CHECK ADD  CONSTRAINT [FK_Values_Columns] FOREIGN KEY([ColumnID])
REFERENCES [dbo].[Columns] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Values] CHECK CONSTRAINT [FK_Values_Columns]
GO
ALTER TABLE [dbo].[Values]  WITH CHECK ADD  CONSTRAINT [FK_Values_Records] FOREIGN KEY([RecordID])
REFERENCES [dbo].[Records] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Values] CHECK CONSTRAINT [FK_Values_Records]
GO
/****** Object:  Trigger [dbo].[DeleteTrigger]    Script Date: 30.05.2022 13:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[DeleteTrigger] on [dbo].[Columns]
for Delete
as
declare @columnName as nvarchar(50)
select @columnName=deleted.Name from deleted
insert into SystemLogs(Deleted,Description) values(1,'Column deleted='+@columnName)
GO
ALTER TABLE [dbo].[Columns] ENABLE TRIGGER [DeleteTrigger]
GO
/****** Object:  Trigger [dbo].[InsertTrigger]    Script Date: 30.05.2022 13:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[InsertTrigger] on [dbo].[Columns]
for insert 
as
declare @columnID as int
declare @recordID as int
declare @colName as nvarchar(20)
set @columnID=(select top 1(Id) from Columns order by Id desc)
set @recordID=(select top 1(Id) from Records order by Id desc)
set @colName=(select Name from Columns  where Id=@columnID)
insert into SystemLogs(Added,ColumnID,RecordID,Description) values(1,@columnID,@recordID,'Column Added='+@colName);
GO
ALTER TABLE [dbo].[Columns] ENABLE TRIGGER [InsertTrigger]
GO
/****** Object:  Trigger [dbo].[RecordTrigger]    Script Date: 30.05.2022 13:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create trigger [dbo].[RecordTrigger] on [dbo].[Columns]
for insert,update
as
insert into Records(CreateTime,ModifyTime) values(GETDATE(),GETDATE())
GO
ALTER TABLE [dbo].[Columns] ENABLE TRIGGER [RecordTrigger]
GO
/****** Object:  Trigger [dbo].[UpdateTrigger]    Script Date: 30.05.2022 13:48:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE trigger [dbo].[UpdateTrigger] on [dbo].[Columns]
for update 
as
declare @columnID as int
declare @oldName as nvarchar(20)
declare @newName as nvarchar(50)
declare @oldOrder as int
declare @newOrder as int
declare @secondColumn as nvarchar(20)
declare @isVisible as bit
declare @isVisibleChanged as bit
declare @recordID as int

set @oldName=(select Name from deleted)
set @newName=(select Name from inserted)
set @columnID=(select Id from inserted)
set @newOrder=(select [Order] from inserted)
set @oldOrder=(select [Order] from deleted)
set @secondColumn=(select Name from Columns where [Order]=@oldOrder)
set @isVisible=(select IsVisible from inserted)
set @isVisibleChanged=(select IsVisible from deleted)
set @recordID=(select top 1(Id) from Records order by Id desc)

if(@newName!=@oldName and @isVisible!=0)
begin
insert SystemLogs(ColumnID,Updated,RecordID,Description) values(@columnID,1,@recordID,'Column name changed: '+@oldName+'-'+@newName)
end else
if(@newOrder!=@oldOrder and @isVisible!=0)
begin
insert into SystemLogs(ColumnID,Updated,Description,RecordID) values(@columnID,1,'Columns Moved: '+@secondColumn+'(Up)-'+@newName+'(Down)',@recordID)
delete from SystemLogs where Description is null
end else
if(@isVisible!=@isVisibleChanged and @isVisible=0)
begin
insert into SystemLogs(ColumnID,Updated,Description,RecordID) values(@columnID,1,'Column Hide: '+@newName,@recordID)
end
GO
ALTER TABLE [dbo].[Columns] ENABLE TRIGGER [UpdateTrigger]
GO
USE [master]
GO
ALTER DATABASE [DBbtyon] SET  READ_WRITE 
GO
