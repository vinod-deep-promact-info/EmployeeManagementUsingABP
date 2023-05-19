USE [master]
GO
/****** Object:  Database [EmployeeManagement]    Script Date: 19-05-2023 15:09:35 ******/
CREATE DATABASE [EmployeeManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EmployeeManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EmployeeManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EmployeeManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EmployeeManagement_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EmployeeManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EmployeeManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EmployeeManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EmployeeManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EmployeeManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EmployeeManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EmployeeManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [EmployeeManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [EmployeeManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EmployeeManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EmployeeManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EmployeeManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EmployeeManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EmployeeManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EmployeeManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EmployeeManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EmployeeManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EmployeeManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EmployeeManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EmployeeManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EmployeeManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EmployeeManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EmployeeManagement] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [EmployeeManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EmployeeManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EmployeeManagement] SET  MULTI_USER 
GO
ALTER DATABASE [EmployeeManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EmployeeManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EmployeeManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EmployeeManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EmployeeManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EmployeeManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EmployeeManagement] SET QUERY_STORE = OFF
GO
USE [EmployeeManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogActions]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogActions](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[ServiceName] [nvarchar](256) NULL,
	[MethodName] [nvarchar](128) NULL,
	[Parameters] [nvarchar](2000) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpAuditLogActions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpAuditLogs]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpAuditLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantId] [uniqueidentifier] NULL,
	[TenantName] [nvarchar](64) NULL,
	[ImpersonatorUserId] [uniqueidentifier] NULL,
	[ImpersonatorUserName] [nvarchar](256) NULL,
	[ImpersonatorTenantId] [uniqueidentifier] NULL,
	[ImpersonatorTenantName] [nvarchar](64) NULL,
	[ExecutionTime] [datetime2](7) NOT NULL,
	[ExecutionDuration] [int] NOT NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[ClientName] [nvarchar](128) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[HttpMethod] [nvarchar](16) NULL,
	[Url] [nvarchar](256) NULL,
	[Exceptions] [nvarchar](max) NULL,
	[Comments] [nvarchar](256) NULL,
	[HttpStatusCode] [int] NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpAuditLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpBackgroundJobs]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpBackgroundJobs](
	[Id] [uniqueidentifier] NOT NULL,
	[JobName] [nvarchar](128) NOT NULL,
	[JobArgs] [nvarchar](max) NOT NULL,
	[TryCount] [smallint] NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[NextTryTime] [datetime2](7) NOT NULL,
	[LastTryTime] [datetime2](7) NULL,
	[IsAbandoned] [bit] NOT NULL,
	[Priority] [tinyint] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpBackgroundJobs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpClaimTypes]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpClaimTypes](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Required] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[Regex] [nvarchar](512) NULL,
	[RegexDescription] [nvarchar](128) NULL,
	[Description] [nvarchar](256) NULL,
	[ValueType] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpClaimTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpDepartments]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpDepartments](
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[DepartmentName] [nvarchar](50) NOT NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
	[IsDeleted] [bit] NOT NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpDepartments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEmployees]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEmployees](
	[Id] [uniqueidentifier] NOT NULL,
	[DepartmentId] [uniqueidentifier] NOT NULL,
	[EmployeeName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Salary] [float] NOT NULL,
	[SocialSecurityNumber] [nvarchar](32) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpEmployees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityChanges]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[AuditLogId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ChangeTime] [datetime2](7) NOT NULL,
	[ChangeType] [tinyint] NOT NULL,
	[EntityTenantId] [uniqueidentifier] NULL,
	[EntityId] [nvarchar](128) NOT NULL,
	[EntityTypeFullName] [nvarchar](128) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpEntityChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpEntityPropertyChanges]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpEntityPropertyChanges](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[EntityChangeId] [uniqueidentifier] NOT NULL,
	[NewValue] [nvarchar](512) NULL,
	[OriginalValue] [nvarchar](512) NULL,
	[PropertyName] [nvarchar](128) NOT NULL,
	[PropertyTypeFullName] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpEntityPropertyChanges] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureGroups]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatureGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatures]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatures](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[DefaultValue] [nvarchar](256) NULL,
	[IsVisibleToClients] [bit] NOT NULL,
	[IsAvailableToHost] [bit] NOT NULL,
	[AllowedProviders] [nvarchar](256) NULL,
	[ValueType] [nvarchar](2048) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpFeatureValues]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpFeatureValues](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpFeatureValues] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpLinkUsers]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpLinkUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[SourceTenantId] [uniqueidentifier] NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[TargetTenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpLinkUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnitRoles]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnitRoles](
	[RoleId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpOrganizationUnitRoles] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpOrganizationUnits]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpOrganizationUnits](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[Code] [nvarchar](95) NOT NULL,
	[DisplayName] [nvarchar](128) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGrants]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGrants](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ProviderName] [nvarchar](64) NOT NULL,
	[ProviderKey] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_AbpPermissionGrants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissionGroups]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissionGroups](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissionGroups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpPermissions]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpPermissions](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[ParentName] [nvarchar](128) NULL,
	[DisplayName] [nvarchar](256) NOT NULL,
	[IsEnabled] [bit] NOT NULL,
	[MultiTenancySide] [tinyint] NOT NULL,
	[Providers] [nvarchar](128) NULL,
	[StateCheckers] [nvarchar](256) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpPermissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoleClaims]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoleClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpRoles]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Name] [nvarchar](256) NOT NULL,
	[NormalizedName] [nvarchar](256) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[IsStatic] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSecurityLogs]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSecurityLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ApplicationName] [nvarchar](96) NULL,
	[Identity] [nvarchar](96) NULL,
	[Action] [nvarchar](96) NULL,
	[UserId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NULL,
	[TenantName] [nvarchar](64) NULL,
	[ClientId] [nvarchar](64) NULL,
	[CorrelationId] [nvarchar](64) NULL,
	[ClientIpAddress] [nvarchar](64) NULL,
	[BrowserInfo] [nvarchar](512) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
 CONSTRAINT [PK_AbpSecurityLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpSettings]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpSettings](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](2048) NOT NULL,
	[ProviderName] [nvarchar](64) NULL,
	[ProviderKey] [nvarchar](64) NULL,
 CONSTRAINT [PK_AbpSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenantConnectionStrings]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenantConnectionStrings](
	[TenantId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_AbpTenantConnectionStrings] PRIMARY KEY CLUSTERED 
(
	[TenantId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpTenants]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpTenants](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](64) NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpTenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserClaims]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserClaims](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ClaimType] [nvarchar](256) NOT NULL,
	[ClaimValue] [nvarchar](1024) NULL,
 CONSTRAINT [PK_AbpUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserDelegations]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserDelegations](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[SourceUserId] [uniqueidentifier] NOT NULL,
	[TargetUserId] [uniqueidentifier] NOT NULL,
	[StartTime] [datetime2](7) NOT NULL,
	[EndTime] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_AbpUserDelegations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserLogins]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[ProviderKey] [nvarchar](196) NOT NULL,
	[ProviderDisplayName] [nvarchar](128) NULL,
 CONSTRAINT [PK_AbpUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserOrganizationUnits]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserOrganizationUnits](
	[UserId] [uniqueidentifier] NOT NULL,
	[OrganizationUnitId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserOrganizationUnits] PRIMARY KEY CLUSTERED 
(
	[OrganizationUnitId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserRoles]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AbpUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUsers]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[NormalizedUserName] [nvarchar](256) NOT NULL,
	[Name] [nvarchar](64) NULL,
	[Surname] [nvarchar](64) NULL,
	[Email] [nvarchar](256) NOT NULL,
	[NormalizedEmail] [nvarchar](256) NOT NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](256) NULL,
	[SecurityStamp] [nvarchar](256) NOT NULL,
	[IsExternal] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](16) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ShouldChangePasswordOnNextLogin] [bit] NOT NULL,
	[EntityVersion] [int] NOT NULL,
	[LastPasswordChangeTime] [datetimeoffset](7) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_AbpUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbpUserTokens]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbpUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](64) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[TenantId] [uniqueidentifier] NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AbpUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[departmentId] [int] IDENTITY(1,1) NOT NULL,
	[departmentName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictApplications]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictApplications](
	[Id] [uniqueidentifier] NOT NULL,
	[ClientId] [nvarchar](100) NULL,
	[ClientSecret] [nvarchar](max) NULL,
	[ConsentType] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Permissions] [nvarchar](max) NULL,
	[PostLogoutRedirectUris] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedirectUris] [nvarchar](max) NULL,
	[Requirements] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[ClientUri] [nvarchar](max) NULL,
	[LogoUri] [nvarchar](max) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictApplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictAuthorizations]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictAuthorizations](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[CreationDate] [datetime2](7) NULL,
	[Properties] [nvarchar](max) NULL,
	[Scopes] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictAuthorizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictScopes]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictScopes](
	[Id] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Descriptions] [nvarchar](max) NULL,
	[DisplayName] [nvarchar](max) NULL,
	[DisplayNames] [nvarchar](max) NULL,
	[Name] [nvarchar](200) NULL,
	[Properties] [nvarchar](max) NULL,
	[Resources] [nvarchar](max) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictScopes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpenIddictTokens]    Script Date: 19-05-2023 15:09:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpenIddictTokens](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplicationId] [uniqueidentifier] NULL,
	[AuthorizationId] [uniqueidentifier] NULL,
	[CreationDate] [datetime2](7) NULL,
	[ExpirationDate] [datetime2](7) NULL,
	[Payload] [nvarchar](max) NULL,
	[Properties] [nvarchar](max) NULL,
	[RedemptionDate] [datetime2](7) NULL,
	[ReferenceId] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
	[Subject] [nvarchar](400) NULL,
	[Type] [nvarchar](50) NULL,
	[ExtraProperties] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](40) NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[CreatorId] [uniqueidentifier] NULL,
	[LastModificationTime] [datetime2](7) NULL,
	[LastModifierId] [uniqueidentifier] NULL,
	[IsDeleted] [bit] NOT NULL,
	[DeleterId] [uniqueidentifier] NULL,
	[DeletionTime] [datetime2](7) NULL,
 CONSTRAINT [PK_OpenIddictTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230517115124_Initial', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518042351_Employee entity created', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518043521_Employee entity created', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518043926_Employee entity created', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518044045_Employee entity created1', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518044234_Employee entity created2', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518045105_Employee entity updated', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518045329_Employee entity rename', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518054235_Employee entity FullAuditedAggregateRoot update', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518105242_Department entity FullAuditedAggregateRoot created', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518105706_Department entity FullAuditedAggregateRoot remove id and extraproperties', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518110250_Department entity FullAuditedAggregateRoot remove id and extraproperties1', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518122806_Department entity FullAuditedAggregateRoot remove id and extraproperties2', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518123129_Department entity FullAuditedAggregateRoot remove id and extraproperties3', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518132340_Department entity FullAuditedAggregateRoot remove id and extraproperties4', N'7.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230518132907_Department entity FullAuditedAggregateRoot remove id and extraproperties5', N'7.0.1')
GO
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'232212f0-05ed-60ae-d5b9-3a0b3bbbd03e', NULL, N'4b65fa84-cc37-de6b-af44-3a0b3bbbd03d', N'Volo.Abp.Identity.IdentityRoleAppService', N'CreateAsync', N'{"input":{"name":"HR","isDefault":false,"isPublic":true,"extraProperties":{}}}', CAST(N'2023-05-17T17:23:35.3165471' AS DateTime2), 208, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'fbebead7-ee48-f09e-55ce-3a0b3bbbd040', NULL, N'4b65fa84-cc37-de6b-af44-3a0b3bbbd03d', N'Volo.Abp.Identity.Web.Pages.Identity.Roles.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-17T17:23:35.2938636' AS DateTime2), 239, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'dc4946ae-f976-e3ef-3cd3-3a0b3bbf33c5', NULL, N'9b6a7698-0ce2-220e-b818-3a0b3bbf33c5', N'Volo.Abp.Identity.Web.Pages.Identity.Users.CreateModalModel', N'OnPostAsync', N'{}', CAST(N'2023-05-17T17:27:16.9357839' AS DateTime2), 700, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'3b2bf13e-b330-8cdf-d994-3a0b3bbf33c5', NULL, N'9b6a7698-0ce2-220e-b818-3a0b3bbf33c5', N'Volo.Abp.Identity.IdentityUserAppService', N'CreateAsync', N'{"input":{"userName":"ritesh","name":"Ritesh","surname":"Shinde","email":"riteshshinde@promactinfo.com","phoneNumber":"7802036687","isActive":true,"lockoutEnabled":false,"roleNames":["HR"],"extraProperties":{}}}', CAST(N'2023-05-17T17:27:16.9671529' AS DateTime2), 666, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6cff006c-0fca-4639-0a61-3a0b3bc0b339', NULL, N'3354debf-ba45-f9c1-1fd2-3a0b3bc0b339', N'Volo.Abp.SettingManagement.EmailSettingsAppService', N'GetAsync', N'{}', CAST(N'2023-05-17T17:28:55.6178132' AS DateTime2), 56, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'65d62ed7-6a5b-3073-b7d1-3a0b3bc0b339', NULL, N'3354debf-ba45-f9c1-1fd2-3a0b3bc0b339', N'Volo.Abp.SettingManagement.Web.Pages.SettingManagement.IndexModel', N'OnPostRenderViewAsync', N'{"id":"Volo.Abp.EmailSetting"}', CAST(N'2023-05-17T17:28:55.5437104' AS DateTime2), 10, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'edd074ce-23f3-b46f-11a9-3a0b3bc0c69d', NULL, N'c30db599-725c-b545-618b-3a0b3bc0c69d', N'Volo.Abp.SettingManagement.Web.Pages.SettingManagement.IndexModel', N'OnPostRenderViewAsync', N'{"id":"Volo.Abp.FeatureManagement"}', CAST(N'2023-05-17T17:29:00.7363088' AS DateTime2), 4, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'eece21d5-ba59-f30b-9f3e-3a0b3fc725bf', NULL, N'2835e1c2-78c4-0bbe-c01a-3a0b3fc725be', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T12:14:26.4177852' AS DateTime2), 771, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'b2f3a1f0-c5d7-a196-1593-3a0b3fcd4612', NULL, N'74221df8-971f-977a-8266-3a0b3fcd4612', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T12:21:08.5379444' AS DateTime2), 150, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0f45e307-91b7-a032-5a63-3a0b3fcdad19', NULL, N'e533f639-e2ea-4013-ce7e-3a0b3fcdad19', N'Volo.Abp.Account.ProfileController', N'ChangePasswordAsync', N'{"input":{}}', CAST(N'2023-05-18T12:21:34.7622055' AS DateTime2), 303, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'177d3260-8ae2-158a-5c7f-3a0b3fcdad19', NULL, N'e533f639-e2ea-4013-ce7e-3a0b3fcdad19', N'Volo.Abp.Account.ProfileAppService', N'ChangePasswordAsync', N'{"input":{}}', CAST(N'2023-05-18T12:21:34.7658303' AS DateTime2), 298, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'073f355b-807d-2779-c1e9-3a0b3fcdd24e', NULL, N'6ccde1bd-6879-1f41-d9a8-3a0b3fcdd24e', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T12:21:44.4561179' AS DateTime2), 134, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'a439d9ca-58e0-4d0d-7201-3a0b3fcf68ef', NULL, N'f0bb203c-d48d-4ab4-641b-3a0b3fcf68ef', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T12:23:28.5467908' AS DateTime2), 140, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'8f0746e6-4133-c56c-f2c3-3a0b3fd10941', NULL, N'deb443fb-1765-33a1-3b54-3a0b3fd10941', N'EmployeeManagement.Employees.EmployeeAppService', N'GetListAsync', N'{"input":{"sorting":"empoyeename","skipCount":1,"maxResultCount":10}}', CAST(N'2023-05-18T12:25:15.2000278' AS DateTime2), 44, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'172ce7c8-af87-42b4-d7ea-3a0b3fd30b91', NULL, N'8c51296c-dbb4-1c16-5d77-3a0b3fd30b91', N'EmployeeManagement.Employees.EmployeeAppService', N'CreateAsync', N'{"input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Vinod deep","age":28,"salary":50000}}', CAST(N'2023-05-18T12:27:26.8402722' AS DateTime2), 85, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'2e4e4855-f522-79a3-3c1a-3a0b402a0c30', NULL, N'791af11d-8a87-7e8f-97a0-3a0b402a0c30', N'EmployeeManagement.Employees.EmployeeAppService', N'CreateAsync', N'{"input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Ajay","age":20,"salary":0}}', CAST(N'2023-05-18T14:02:28.6786352' AS DateTime2), 2, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'02e2e87f-289b-950a-122e-3a0b402a54bc', NULL, N'89c63790-7955-d3b2-12f5-3a0b402a54bc', N'EmployeeManagement.Employees.EmployeeAppService', N'CreateAsync', N'{"input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Ajay","age":21,"salary":0}}', CAST(N'2023-05-18T14:02:47.2625583' AS DateTime2), 27, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'de04bc4b-d483-7fe4-adab-3a0b402a8539', NULL, N'3878d14a-9872-f99b-476c-3a0b402a8539', N'EmployeeManagement.Employees.EmployeeAppService', N'CreateAsync', N'{"input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Ajay","age":21,"salary":0}}', CAST(N'2023-05-18T14:02:59.6936588' AS DateTime2), 11, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bd90baa1-8129-365b-a41a-3a0b40306848', NULL, N'aa22eb35-31e9-76dc-7ee0-3a0b40306848', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:09:25.3619664' AS DateTime2), 150, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'a51f8424-cc54-647e-2818-3a0b40371fc5', NULL, N'5d17dde3-682b-b9d8-1be4-3a0b40371fc5', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:16:45.5282692' AS DateTime2), 169, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1faa90eb-1df6-ef6c-7a14-3a0b40371fc5', NULL, N'5d17dde3-682b-b9d8-1be4-3a0b40371fc5', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"U","providerKey":"53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":true},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":true},{"name":"AbpIdentity.Users.Create","isGranted":true},{"name":"AbpIdentity.Users.Update","isGranted":true},{"name":"AbpIdentity.Users.Delete","isGranted":true},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":true},{"name":"SettingManagement.Emailing","isGranted":true},{"name":"SettingManagement.Emailing.Test","isGranted":true},{"name":"AbpTenantManagement.Tenants","isGranted":true},{"name":"AbpTenantManagement.Tenants.Create","isGranted":true},{"name":"AbpTenantManagement.Tenants.Update","isGranted":true},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":true},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":true},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":true}]}}', CAST(N'2023-05-18T14:16:45.5374943' AS DateTime2), 151, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'43f33d66-1deb-de80-515d-3a0b40374754', NULL, N'0687ed8a-2e81-5981-bb72-3a0b40374754', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:16:55.7049528' AS DateTime2), 123, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5923d1dd-bee0-c438-5e05-3a0b4038e28d', NULL, N'4477c0d6-eed7-1fb8-de31-3a0b4038e28d', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:18:40.9834679' AS DateTime2), 117, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c04138a2-9a81-b787-79f1-3a0b40393dcb', NULL, N'b3911a03-a001-2bc0-6122-3a0b40393dcb', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:19:04.3392892' AS DateTime2), 119, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bcd83167-fb78-8061-2f78-3a0b403a1d42', NULL, N'bee54144-54a9-b711-d521-3a0b403a1d42', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"U","providerKey":"53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":false},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":true},{"name":"AbpIdentity.Users.Create","isGranted":true},{"name":"AbpIdentity.Users.Update","isGranted":true},{"name":"AbpIdentity.Users.Delete","isGranted":true},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":true},{"name":"SettingManagement.Emailing","isGranted":false},{"name":"SettingManagement.Emailing.Test","isGranted":false},{"name":"AbpTenantManagement.Tenants","isGranted":false},{"name":"AbpTenantManagement.Tenants.Create","isGranted":false},{"name":"AbpTenantManagement.Tenants.Update","isGranted":false},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":false}]}}', CAST(N'2023-05-18T14:20:01.5401783' AS DateTime2), 94, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'cb276247-3492-948b-ba33-3a0b403a1d42', NULL, N'bee54144-54a9-b711-d521-3a0b403a1d42', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:20:01.5381756' AS DateTime2), 128, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0fb77bce-31b0-1390-87eb-3a0b403a4d39', NULL, N'62315240-b52d-fcec-b115-3a0b403a4d39', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:20:13.8300498' AS DateTime2), 114, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bce9400b-d4f2-b277-fa0d-3a0b4042178a', NULL, N'769446ea-d1ae-4dd7-60fb-3a0b4042178a', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:28:44.3615268' AS DateTime2), 127, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'd862c29f-4946-8024-95fc-3a0b40435339', NULL, N'0e9238ad-1a9c-91d0-812c-3a0b40435339', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:30:05.1888337' AS DateTime2), 116, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'732be660-2761-e46a-e522-3a0b40435339', NULL, N'0e9238ad-1a9c-91d0-812c-3a0b40435339', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"U","providerKey":"53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":false},{"name":"AbpIdentity.Roles","isGranted":false},{"name":"AbpIdentity.Roles.Create","isGranted":false},{"name":"AbpIdentity.Roles.Update","isGranted":false},{"name":"AbpIdentity.Roles.Delete","isGranted":false},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":false},{"name":"AbpIdentity.Users","isGranted":false},{"name":"AbpIdentity.Users.Create","isGranted":false},{"name":"AbpIdentity.Users.Update","isGranted":false},{"name":"AbpIdentity.Users.Delete","isGranted":false},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":false},{"name":"SettingManagement.Emailing","isGranted":false},{"name":"SettingManagement.Emailing.Test","isGranted":false},{"name":"AbpTenantManagement.Tenants","isGranted":false},{"name":"AbpTenantManagement.Tenants.Create","isGranted":false},{"name":"AbpTenantManagement.Tenants.Update","isGranted":false},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":false}]}}', CAST(N'2023-05-18T14:30:05.1901963' AS DateTime2), 100, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'8578dc79-652a-fdf8-7f55-3a0b40454de7', NULL, N'5ddb022f-9ae3-c32b-e8b6-3a0b40454de7', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:32:14.8938675' AS DateTime2), 121, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'df16dcc4-eba7-dd1f-110d-3a0b404647a3', NULL, N'2d52fac3-3140-b08c-a25d-3a0b404647a3', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T14:33:18.8185004' AS DateTime2), 128, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'3c03a9e2-3eff-29bf-7872-3a0b4047a964', NULL, N'648c61eb-a747-24f3-6b59-3a0b4047a964', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:34:49.4199165' AS DateTime2), 88, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bc0e3c12-e22e-306b-a7f2-3a0b4047a964', NULL, N'648c61eb-a747-24f3-6b59-3a0b4047a964', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"U","providerKey":"53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":false},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":false},{"name":"AbpIdentity.Users.Create","isGranted":false},{"name":"AbpIdentity.Users.Update","isGranted":false},{"name":"AbpIdentity.Users.Delete","isGranted":false},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":false},{"name":"SettingManagement.Emailing","isGranted":false},{"name":"SettingManagement.Emailing.Test","isGranted":false},{"name":"AbpTenantManagement.Tenants","isGranted":false},{"name":"AbpTenantManagement.Tenants.Create","isGranted":false},{"name":"AbpTenantManagement.Tenants.Update","isGranted":false},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":false}]}}', CAST(N'2023-05-18T14:34:49.4213078' AS DateTime2), 83, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'177e2f93-19b6-cc9e-9eb7-3a0b4049ed36', NULL, N'58c7b342-ceac-e5e0-c6bb-3a0b4049ed36', N'EmployeeManagement.Employees.EmployeeAppService', N'CreateAsync', N'{"input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Karan","age":50,"salary":60000}}', CAST(N'2023-05-18T14:37:17.9354746' AS DateTime2), 6, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5c80eba4-8424-f0bd-1f99-3a0b404daf24', NULL, N'c722b8a0-d0d6-1c22-9529-3a0b404daf24', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"R","providerKey":"admin","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":true},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":true},{"name":"AbpIdentity.Users.Create","isGranted":true},{"name":"AbpIdentity.Users.Update","isGranted":true},{"name":"AbpIdentity.Users.Delete","isGranted":true},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":true},{"name":"SettingManagement.Emailing","isGranted":true},{"name":"SettingManagement.Emailing.Test","isGranted":true},{"name":"AbpTenantManagement.Tenants","isGranted":true},{"name":"AbpTenantManagement.Tenants.Create","isGranted":true},{"name":"AbpTenantManagement.Tenants.Update","isGranted":true},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":true},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":true},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":true}]}}', CAST(N'2023-05-18T14:41:24.1708914' AS DateTime2), 23, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'455ae73a-45c9-f63c-aa2d-3a0b404daf24', NULL, N'c722b8a0-d0d6-1c22-9529-3a0b404daf24', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:41:24.1694809' AS DateTime2), 26, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'7ff8b7c1-0ee6-e5fb-17c9-3a0b404e0f65', NULL, N'ea04526c-608b-e5d4-0dce-3a0b404e0f65', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"R","providerKey":"HR","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":false},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":true},{"name":"AbpIdentity.Users.Create","isGranted":true},{"name":"AbpIdentity.Users.Update","isGranted":true},{"name":"AbpIdentity.Users.Delete","isGranted":true},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":true},{"name":"SettingManagement.Emailing","isGranted":false},{"name":"SettingManagement.Emailing.Test","isGranted":false},{"name":"AbpTenantManagement.Tenants","isGranted":false},{"name":"AbpTenantManagement.Tenants.Create","isGranted":false},{"name":"AbpTenantManagement.Tenants.Update","isGranted":false},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":false}]}}', CAST(N'2023-05-18T14:41:48.7972484' AS DateTime2), 36, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'f50d72c2-8232-24f2-a2c9-3a0b404e0f65', NULL, N'ea04526c-608b-e5d4-0dce-3a0b404e0f65', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T14:41:48.7951287' AS DateTime2), 42, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'12f1b3de-7239-f886-70bd-3a0b4070069c', NULL, N'7e759ac6-0c76-481d-a7cf-3a0b4070069b', N'Volo.Abp.PermissionManagement.PermissionAppService', N'UpdateAsync', N'{"providerName":"R","providerKey":"HR","input":{"permissions":[{"name":"FeatureManagement.ManageHostFeatures","isGranted":false},{"name":"AbpIdentity.Roles","isGranted":true},{"name":"AbpIdentity.Roles.Create","isGranted":true},{"name":"AbpIdentity.Roles.Update","isGranted":true},{"name":"AbpIdentity.Roles.Delete","isGranted":true},{"name":"AbpIdentity.Roles.ManagePermissions","isGranted":true},{"name":"AbpIdentity.Users","isGranted":true},{"name":"AbpIdentity.Users.Create","isGranted":true},{"name":"AbpIdentity.Users.Update","isGranted":true},{"name":"AbpIdentity.Users.Delete","isGranted":true},{"name":"AbpIdentity.Users.ManagePermissions","isGranted":true},{"name":"SettingManagement.Emailing","isGranted":false},{"name":"SettingManagement.Emailing.Test","isGranted":false},{"name":"AbpTenantManagement.Tenants","isGranted":false},{"name":"AbpTenantManagement.Tenants.Create","isGranted":false},{"name":"AbpTenantManagement.Tenants.Update","isGranted":false},{"name":"AbpTenantManagement.Tenants.Delete","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageFeatures","isGranted":false},{"name":"AbpTenantManagement.Tenants.ManageConnectionStrings","isGranted":false}]}}', CAST(N'2023-05-18T15:18:54.6916120' AS DateTime2), 100, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'eefd7bce-a7b7-b99a-5ebe-3a0b4070069d', NULL, N'7e759ac6-0c76-481d-a7cf-3a0b4070069b', N'Volo.Abp.PermissionManagement.Web.Pages.AbpPermissionManagement.PermissionManagementModal', N'OnPostAsync', N'{}', CAST(N'2023-05-18T15:18:54.6807082' AS DateTime2), 115, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6a5a904d-fe86-2309-1df7-3a0b40702ebc', NULL, N'04420e0d-f7e3-d646-715b-3a0b40702ebb', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T15:19:04.7294921' AS DateTime2), 351, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'6f5c1d16-320c-3093-4582-3a0b4074c943', NULL, N'2627562e-d541-9a80-8288-3a0b4074c943', N'EmployeeManagement.Employees.EmployeeAppService', N'UpdateAsync', N'{"id":"bd4500e6-8eb5-1ccf-0192-3a0b4049ed32","input":{"departmentId":"3fa85f64-5717-4562-b3fc-2c963f66afa6","employeeName":"Sakti","age":40,"salary":10000}}', CAST(N'2023-05-18T15:24:06.6747122' AS DateTime2), 108, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'4f59c35a-4db9-7ea3-acc1-3a0b407b43eb', NULL, N'06230644-d0f2-5403-9db5-3a0b407b43eb', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:31:11.2781727' AS DateTime2), 124, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'dcb0b9c6-f443-0828-3729-3a0b407bb020', NULL, N'bc8f68c4-061d-9474-b9d1-3a0b407bb020', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:31:39.0584834' AS DateTime2), 45, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'58954d06-3c53-4d1c-8704-3a0b407c1031', NULL, N'd94895eb-ebe6-4f10-f7b4-3a0b407c1031', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:32:03.6815442' AS DateTime2), 15, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'4f4600cd-2a40-49c6-091e-3a0b40811f85', NULL, N'5ea48a8c-0531-d497-133b-3a0b40811f84', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:37:35.2221087' AS DateTime2), 68, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'70e532e1-ad86-fddc-d618-3a0b4081753d', NULL, N'88dc7639-9715-fc5a-7448-3a0b4081753d', N'EmployeeManagement.Employees.EmployeeAppService', N'GetAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:37:57.1350321' AS DateTime2), 56, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'1aa6e78a-20cb-3100-5111-3a0b4083caca', NULL, N'54d7a0e3-8782-81ff-95dc-3a0b4083caca', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:40:30.2003410' AS DateTime2), 15, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'bb014334-c007-35bc-c11b-3a0b40841a24', NULL, N'77fed5e2-f452-eac4-2206-3a0b40841a24', N'Volo.Abp.Account.Web.Pages.Account.LoginModel', N'OnPostAsync', N'{"action":"Login"}', CAST(N'2023-05-18T15:40:49.8188153' AS DateTime2), 711, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'c3c4658e-7b7e-7410-0544-3a0b408485c7', NULL, N'e27fdf0c-c070-63db-76de-3a0b408485c7', N'EmployeeManagement.Employees.EmployeeAppService', N'DeleteAsync', N'{"id":"9031864b-45c2-cef9-d393-3a0b402a8530"}', CAST(N'2023-05-18T15:41:18.0759062' AS DateTime2), 12, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'78bd0f1b-4319-932d-45c1-3a0b44c63734', NULL, N'34e379eb-cbe9-bf6d-c658-3a0b44c63734', N'EmployeeManagement.Employees.EmployeeAppService', N'EmployeeSearchByNameAsync', N'{"Name":"vinod"}', CAST(N'2023-05-19T11:31:32.0891895' AS DateTime2), 81, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'5c32dcf4-a2ba-dc74-a61a-3a0b44cc31b2', NULL, N'aa7d290e-c7fb-1799-cc66-3a0b44cc31b1', N'EmployeeManagement.Employees.EmployeeAppService', N'GetEmployeeByNameAsync', N'{"Name":"vinod"}', CAST(N'2023-05-19T11:38:03.1870355' AS DateTime2), 780, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'452c2756-171c-5b7a-d898-3a0b4564bc9d', NULL, N'0a043cbf-ef3b-6526-ee84-3a0b4564bc9d', N'EmployeeManagement.Employees.EmployeeAppService', N'UpdateAsync', N'{"id":"f696624d-9855-4863-93d5-f2db3b4966ee","input":{"departmentId":"f696624d-9855-4863-93d5-f2db3b4966ee","employeeName":"Naresh","age":23,"salary":50000}}', CAST(N'2023-05-19T14:24:40.9395210' AS DateTime2), 68, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'0da1f0fe-8d80-fb82-de3e-3a0b45654729', NULL, N'533ccd7e-5cd8-d48c-9c8c-3a0b45654729', N'EmployeeManagement.Employees.EmployeeAppService', N'UpdateAsync', N'{"id":"702f00af-5d3b-7ac2-2584-3a0b3fd30b47","input":{"departmentId":"f696624d-9855-4863-93d5-f2db3b4966ee","employeeName":"Naresh","age":23,"salary":50000}}', CAST(N'2023-05-19T14:25:16.3983342' AS DateTime2), 115, N'{}')
INSERT [dbo].[AbpAuditLogActions] ([Id], [TenantId], [AuditLogId], [ServiceName], [MethodName], [Parameters], [ExecutionTime], [ExecutionDuration], [ExtraProperties]) VALUES (N'79529875-1e17-e233-70dc-3a0b45777458', NULL, N'23c93a66-2dc5-c6d0-c92c-3a0b45777457', N'EmployeeManagement.Employees.EmployeeAppService', N'GetEmployeeByDepartmentAsync', N'{}', CAST(N'2023-05-19T14:45:07.6372001' AS DateTime2), 11, N'{}')
GO
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4b65fa84-cc37-de6b-af44-3a0b3bbbd03d', N'EmployeeManagement.Web', N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-17T17:23:35.2415283' AS DateTime2), 299, N'::1', NULL, NULL, N'20c2cb8b7b304c45b31cd2075420830e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Roles/CreateModal', NULL, N'', 204, N'{}', N'aab3eb10fbe248748bb30f3898baf314')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'9b6a7698-0ce2-220e-b818-3a0b3bbf33c5', N'EmployeeManagement.Web', N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-17T17:27:16.9051024' AS DateTime2), 732, N'::1', NULL, NULL, N'bfac86bff0cc4237a90a6bc4bd38252f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Identity/Users/CreateModal', NULL, N'', 204, N'{}', N'ad6b63d451db440998ae508ba515f64b')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3354debf-ba45-f9c1-1fd2-3a0b3bc0b339', N'EmployeeManagement.Web', N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-17T17:28:55.5410347' AS DateTime2), 261, N'::1', NULL, NULL, N'fd5332b0197c469396e98ae588122a66', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/SettingManagement', NULL, N'', 200, N'{}', N'251419dda6db44c78ab95c847c633fa4')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c30db599-725c-b545-618b-3a0b3bc0c69d', N'EmployeeManagement.Web', N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-17T17:29:00.7346072' AS DateTime2), 30, N'::1', NULL, NULL, N'7f686488b3124a0eb7acf1af4db709db', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/SettingManagement', NULL, N'', 200, N'{}', N'e8b808d2c8594692870c956e1ac922db')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2835e1c2-78c4-0bbe-c01a-3a0b3fc725be', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:14:26.4051376' AS DateTime2), 789, N'::1', NULL, NULL, N'729da2499c044a93965efb1323a9dae5', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'85f4baded23c45f5af6c69be21623a33')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'74221df8-971f-977a-8266-3a0b3fcd4612', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:21:08.5313019' AS DateTime2), 158, N'::1', NULL, NULL, N'9cf4617180224bfb8336384b09a1f3b2', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'bd0352287cdd451ba33e2398374361d4')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'e533f639-e2ea-4013-ce7e-3a0b3fcdad19', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:21:34.7488997' AS DateTime2), 317, N'::1', NULL, NULL, N'969abc63d8c34077b950e6395a83d29d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/account/my-profile/change-password', NULL, N'', 204, N'{}', N'f9e9897a08f647e38448e19a020711de')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'6ccde1bd-6879-1f41-d9a8-3a0b3fcdd24e', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:21:44.3361586' AS DateTime2), 254, N'::1', NULL, NULL, N'2e8aa77ac8a4472c9bc644fa410df778', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'4aa80d48010246d497cef311d4ccfb29')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f0bb203c-d48d-4ab4-641b-3a0b3fcf68ef', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:23:28.5355167' AS DateTime2), 151, N'::1', NULL, NULL, N'd0127961c0474ed1a4c63f17caa324b6', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'de2dbd04068749efb4337e60ccfffbf7')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'deb443fb-1765-33a1-3b54-3a0b3fd10941', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:25:15.1153561' AS DateTime2), 149, N'::1', NULL, NULL, N'b5faaf6ea72d4d82ac63cc44cdf4cf46', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/employee', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'cff4bf1c73de4449a81be230baab2290')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8c51296c-dbb4-1c16-5d77-3a0b3fd30b91', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T12:27:26.8196605' AS DateTime2), 110, N'::1', NULL, NULL, N'3cbdcf51fc284235af62ad0d620c1706', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee', NULL, N'', 200, N'{}', N'c043d693add241c289928f2a3f9f533e')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'791af11d-8a87-7e8f-97a0-3a0b402a0c30', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:02:28.6749888' AS DateTime2), 45, N'::1', NULL, NULL, N'33d3d4d7c0e0428bacc5cc122e21a33d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee', N'[
  {
    "code": null,
    "message": "Your request is not valid!",
    "details": "The following errors were detected during validation.\r\n - The field Age must be between 21 and 70.\r\n",
    "data": {},
    "validationErrors": [
      {
        "message": "The field Age must be between 21 and 70.",
        "members": [
          "age"
        ]
      }
    ]
  }
]', N'', 400, N'{}', N'b20e074bc5c444e7a9f470a658fd1cfe')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'89c63790-7955-d3b2-12f5-3a0b402a54bc', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:02:47.2607969' AS DateTime2), 31, N'::1', NULL, NULL, N'4e15304d027f49bc8895882283f413bd', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee', NULL, N'', 200, N'{}', N'a56074abd1d34a0b899d32b0c4113f72')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3878d14a-9872-f99b-476c-3a0b402a8539', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:02:59.6923916' AS DateTime2), 13, N'::1', NULL, NULL, N'6db9cdaa564e4bb2a4bebeec626077f2', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee', NULL, N'', 200, N'{}', N'dc0766647db646fb95613c523b7674f7')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'aa22eb35-31e9-76dc-7ee0-3a0b40306848', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:09:25.3526712' AS DateTime2), 160, N'::1', NULL, NULL, N'c32cb41d79c143f7933aa456f1faf0c9', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'e03ac19a4b8a458383dbcc0533a45dbe')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5d17dde3-682b-b9d8-1be4-3a0b40371fc5', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:16:45.5129549' AS DateTime2), 188, N'::1', NULL, NULL, N'9e8201790f524ffa8fc17f70c2c7a998', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'8a6365970e194da0994aa3ffca10e1c2')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0687ed8a-2e81-5981-bb72-3a0b40374754', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:16:55.6971729' AS DateTime2), 131, N'::1', NULL, NULL, N'565883a6176f48d3bcb96aff86ebedce', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'0b30e2b4ef854cf29172997453f11d8f')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'4477c0d6-eed7-1fb8-de31-3a0b4038e28d', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:18:40.9740099' AS DateTime2), 127, N'::1', NULL, NULL, N'dd4b4b0095c94cbd96a575d6bd35ed71', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'868eb096f42644989f2dadbca534ec0d')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b3911a03-a001-2bc0-6122-3a0b40393dcb', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:19:04.3330673' AS DateTime2), 126, N'::1', NULL, NULL, N'd27daa59d53c4692aa490364b48f30be', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'e4f2bcb5f0844b318646f11600fb934d')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'bee54144-54a9-b711-d521-3a0b403a1d42', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:20:01.5318329' AS DateTime2), 135, N'::1', NULL, NULL, N'03e2d7abb2f74f23aa4466e5a839690e', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'2e1145d2b90c4d97b29fc41f749f3056')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'62315240-b52d-fcec-b115-3a0b403a4d39', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:20:13.8227146' AS DateTime2), 122, N'::1', NULL, NULL, N'ea071ca172a54450883bf8e5f14f7c40', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'7b5fdb6fbae94c7d9e795d7c99d9c15e')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'769446ea-d1ae-4dd7-60fb-3a0b4042178a', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:28:44.3512626' AS DateTime2), 139, N'::1', NULL, NULL, N'd8271dc9a4274b74a16a9338e69f0969', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'0631f1d85cf54c6ea83f2c154e6f35d5')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0e9238ad-1a9c-91d0-812c-3a0b40435339', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:30:05.1832754' AS DateTime2), 122, N'::1', NULL, NULL, N'543c235855214a54ad6225144afdb425', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'b2be7049c3974bb1a47a8d768ccd7b2b')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5ddb022f-9ae3-c32b-e8b6-3a0b40454de7', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:32:14.8872952' AS DateTime2), 128, N'::1', NULL, NULL, N'06b0bf4bf31345f7bb958cced05d8a3b', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'd609f6bca7a7489992964536e7802380')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2d52fac3-3140-b08c-a25d-3a0b404647a3', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:33:18.8127890' AS DateTime2), 134, N'::1', NULL, NULL, N'b5ceea148c044a26aae91450d58f4335', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'1847f0d95d8b4cbb97a65eff228e586e')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'648c61eb-a747-24f3-6b59-3a0b4047a964', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:34:49.4154867' AS DateTime2), 93, N'::1', NULL, NULL, N'360c8e4fa4394049b7e0a65c1077b5aa', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'3f5eada3229149c191a93727554183de')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'58c7b342-ceac-e5e0-c6bb-3a0b4049ed36', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:37:17.9330179' AS DateTime2), 9, N'::1', NULL, NULL, N'7c47b38d7f404d52a96df39e9410de34', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee', NULL, N'', 200, N'{}', N'95562cf8e4fe47c39c9b02679a869ed4')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c722b8a0-d0d6-1c22-9529-3a0b404daf24', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:41:24.1650091' AS DateTime2), 31, N'::1', NULL, NULL, N'5806cda8e4884613a9c5266853363f94', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'a1cd1c1a4e4c4e70af6682d8f2677687')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'ea04526c-608b-e5d4-0dce-3a0b404e0f65', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T14:41:48.7903379' AS DateTime2), 47, N'::1', NULL, NULL, N'f8d51963cefe4f9b978718ef61d5cfcb', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'6f63a9f0c3d046118325318afc88dad2')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7e759ac6-0c76-481d-a7cf-3a0b4070069b', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:18:54.6168397' AS DateTime2), 188, N'::1', NULL, NULL, N'96e70257e6664682a3d3588fdb990b6f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/AbpPermissionManagement/PermissionManagementModal', NULL, N'', 204, N'{}', N'542f2dd223b64d24ad3fdf4e5414b7f5')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'04420e0d-f7e3-d646-715b-3a0b40702ebb', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:19:04.7111482' AS DateTime2), 372, N'::1', NULL, NULL, N'd0a08f165ab04470bb0b55f624bb6d04', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'350c26f89c454ccfbd6d176550a7de93')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'2627562e-d541-9a80-8288-3a0b4074c943', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:24:06.5945580' AS DateTime2), 193, N'::1', NULL, NULL, N'f26f0d40b1744ff29a7b7eca718b5ae9', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/employee/bd4500e6-8eb5-1ccf-0192-3a0b4049ed32', NULL, N'', 200, N'{}', N'e34c1a9729924a2bb0d1c523a4a1b6f0')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'06230644-d0f2-5403-9db5-3a0b407b43eb', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:31:11.2713153' AS DateTime2), 132, N'::1', NULL, NULL, N'b75432ea36f349abaecb4b853a564814', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'e517684e15c24b8fb5c5fc73b3830d1d')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'bc8f68c4-061d-9474-b9d1-3a0b407bb020', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:31:39.0562527' AS DateTime2), 48, N'::1', NULL, NULL, N'0824f2a017114f24904fe5b00545fa56', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'84232917470e484ba98b17a7a8aa20ad')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'd94895eb-ebe6-4f10-f7b4-3a0b407c1031', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:32:03.6794147' AS DateTime2), 18, N'::1', NULL, NULL, N'265cdbef157947c5853c7374dcda459b', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'73aba95cfb5743369429e567f87779e7')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5ea48a8c-0531-d497-133b-3a0b40811f84', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:37:11.4921677' AS DateTime2), 23803, N'::1', NULL, NULL, N'b72e2b16d2e44524a8db64ea4f0599e7', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'5e6777c63fa9438d8ce75c67b906d659')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'88dc7639-9715-fc5a-7448-3a0b4081753d', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:37:52.9386212' AS DateTime2), 4302, N'::1', NULL, NULL, N'c10ac68740574f48a9837908ee7181bf', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', N'[
  {
    "code": null,
    "message": "There is no entity Employee with id = 9031864b-45c2-cef9-d393-3a0b402a8530!",
    "details": null,
    "data": null,
    "validationErrors": null
  }
]', N'', 404, N'{}', N'd01966fbabf04b86ac77c54f3b97edc2')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'54d7a0e3-8782-81ff-95dc-3a0b4083caca', N'EmployeeManagement.Web', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:39:33.5913116' AS DateTime2), 56627, N'::1', NULL, NULL, N'7dde23713d7740a8869c6381877905cb', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'3e5849783eba4a0e92e1d9df9327e59a')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'77fed5e2-f452-eac4-2206-3a0b40841a24', N'EmployeeManagement.Web', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:40:49.7991712' AS DateTime2), 733, N'::1', NULL, NULL, N'8e76ec5b257541d8876027896673b9ca', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/Account/Login', NULL, N'', 302, N'{}', N'edb01a21328d4f6b99641d77f55de91f')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'e27fdf0c-c070-63db-76de-3a0b408485c7', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-18T15:41:15.8734029' AS DateTime2), 2214, N'::1', NULL, NULL, N'ccb741ae132145bb97da372ffaa49778', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'DELETE', N'/api/app/employee/9031864B-45C2-CEF9-D393-3A0B402A8530', NULL, N'', 204, N'{}', N'149b3c1b22e84875b4f7b20cd69ee971')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'34e379eb-cbe9-bf6d-c658-3a0b44c63734', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T11:31:32.0199452' AS DateTime2), 183, N'::1', NULL, NULL, N'd4bab58dfc2c4475afc51fe4b6e2e70c', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'POST', N'/api/app/employee/employee-search-by-name', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'9def55d26a5748f38dde1cba086e51a2')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'aa7d290e-c7fb-1799-cc66-3a0b44cc31b1', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T11:38:03.0814654' AS DateTime2), 929, N'::1', NULL, NULL, N'6d2e04625e0940eeb101a9757e949a2d', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/employee/employee-by-name', N'[
  {
    "code": null,
    "message": "An internal error occurred during your request!",
    "details": null,
    "data": {},
    "validationErrors": null
  }
]', N'', 500, N'{}', N'd293c35f1f65404095e5b0d84012bfc0')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0a043cbf-ef3b-6526-ee84-3a0b4564bc9d', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T14:24:40.9019201' AS DateTime2), 139, N'::1', NULL, NULL, N'fe539ac832754ad8841f925cf5af7985', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/employee/F696624D-9855-4863-93D5-F2DB3B4966EE', N'[
  {
    "code": null,
    "message": "There is no entity Employee with id = f696624d-9855-4863-93d5-f2db3b4966ee!",
    "details": null,
    "data": null,
    "validationErrors": null
  }
]', N'', 404, N'{}', N'd3b767c904f147b7b3262aebeff7ef92')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'533ccd7e-5cd8-d48c-9c8c-3a0b45654729', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T14:25:16.3937847' AS DateTime2), 128, N'::1', NULL, NULL, N'54ed69d15b844fab957bd46acac5a99f', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'PUT', N'/api/app/employee/702F00AF-5D3B-7AC2-2584-3A0B3FD30B47', NULL, N'', 200, N'{}', N'efaed024ef204c299262e60945459775')
INSERT [dbo].[AbpAuditLogs] ([Id], [ApplicationName], [UserId], [UserName], [TenantId], [TenantName], [ImpersonatorUserId], [ImpersonatorUserName], [ImpersonatorTenantId], [ImpersonatorTenantName], [ExecutionTime], [ExecutionDuration], [ClientIpAddress], [ClientName], [ClientId], [CorrelationId], [BrowserInfo], [HttpMethod], [Url], [Exceptions], [Comments], [HttpStatusCode], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'23c93a66-2dc5-c6d0-c92c-3a0b45777457', N'EmployeeManagement.Web', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2023-05-19T14:45:07.3825494' AS DateTime2), 347, N'::1', NULL, NULL, N'5c3e5308237b491d8967b4a09fdeb8ec', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', N'GET', N'/api/app/employee/employee-by-department', N'[
  {
    "code": null,
    "message": "Your request is not valid!",
    "details": "The following errors were detected during validation.\r\n - The Name field is required.\r\n",
    "data": {},
    "validationErrors": [
      {
        "message": "The Name field is required.",
        "members": [
          "name"
        ]
      }
    ]
  }
]', N'', 400, N'{}', N'6e43f01cae5f4d63998dd9381bbabbfa')
GO
INSERT [dbo].[AbpDepartments] ([DepartmentId], [DepartmentName], [ConcurrencyStamp], [CreationTime], [CreatorId], [DeleterId], [DeletionTime], [IsDeleted], [LastModificationTime], [LastModifierId]) VALUES (N'be752172-08a1-4df9-8139-3c34cc79c308', N'HR', N'b1dd0ac677fe4184904bb6cffd62e0b7', CAST(N'2023-05-18T19:03:22.9958411' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AbpDepartments] ([DepartmentId], [DepartmentName], [ConcurrencyStamp], [CreationTime], [CreatorId], [DeleterId], [DeletionTime], [IsDeleted], [LastModificationTime], [LastModifierId]) VALUES (N'b71767e7-8f4f-4204-af50-a686509cf781', N'Finance', N'8c4e55626a57415087334774ec937e81', CAST(N'2023-05-18T19:03:23.0018882' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AbpDepartments] ([DepartmentId], [DepartmentName], [ConcurrencyStamp], [CreationTime], [CreatorId], [DeleterId], [DeletionTime], [IsDeleted], [LastModificationTime], [LastModifierId]) VALUES (N'f696624d-9855-4863-93d5-f2db3b4966ee', N'IT', N'becfbd4a35fb47cbbb37bca0b2aa29a6', CAST(N'2023-05-18T19:03:22.6020138' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[AbpEmployees] ([Id], [DepartmentId], [EmployeeName], [Age], [Salary], [SocialSecurityNumber], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'702f00af-5d3b-7ac2-2584-3a0b3fd30b47', N'f696624d-9855-4863-93d5-f2db3b4966ee', N'Naresh', 23, 50000, NULL, N'{}', N'0d4585104ab546ca8f55d3ed7461ffdd', CAST(N'2023-05-18T12:27:26.8918567' AS DateTime2), N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', CAST(N'2023-05-19T14:25:16.4644528' AS DateTime2), N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', 0, NULL, NULL)
INSERT [dbo].[AbpEmployees] ([Id], [DepartmentId], [EmployeeName], [Age], [Salary], [SocialSecurityNumber], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'66e75fdc-d02b-5349-f4e2-3a0b402a54a1', N'be752172-08a1-4df9-8139-3c34cc79c308', N'Ajay', 21, 0, NULL, N'{}', N'03f16e4716cf464abdf84caa280aaec5', CAST(N'2023-05-18T14:02:47.2690395' AS DateTime2), N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[AbpEmployees] ([Id], [DepartmentId], [EmployeeName], [Age], [Salary], [SocialSecurityNumber], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'9031864b-45c2-cef9-d393-3a0b402a8530', N'be752172-08a1-4df9-8139-3c34cc79c308', N'Ajay', 21, 0, NULL, N'{}', N'0a9bf1689eb646a5bf0244e9ff274590', CAST(N'2023-05-18T14:02:59.7007267' AS DateTime2), N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', CAST(N'2023-05-18T15:31:11.3937487' AS DateTime2), N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', 1, N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', CAST(N'2023-05-18T15:31:11.3844059' AS DateTime2))
INSERT [dbo].[AbpEmployees] ([Id], [DepartmentId], [EmployeeName], [Age], [Salary], [SocialSecurityNumber], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'bd4500e6-8eb5-1ccf-0192-3a0b4049ed32', N'be752172-08a1-4df9-8139-3c34cc79c308', N'Sakti', 40, 10000, NULL, N'{}', N'732b71c57736420a9fc11db82de3980e', CAST(N'2023-05-18T14:37:17.9391739' AS DateTime2), N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', CAST(N'2023-05-18T15:24:06.7422478' AS DateTime2), N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', 0, NULL, NULL)
GO
INSERT [dbo].[AbpFeatureGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'78e9f842-1b98-4a25-f524-3a0b3bbb5927', N'SettingManagement', N'L:AbpSettingManagement,Feature:SettingManagementGroup', N'{}')
GO
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'cfa45494-c7c6-a345-5a69-3a0b3bbb5929', N'SettingManagement', N'SettingManagement.Enable', NULL, N'L:AbpSettingManagement,Feature:SettingManagementEnable', N'L:AbpSettingManagement,Feature:SettingManagementEnableDescription', N'true', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
INSERT [dbo].[AbpFeatures] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [Description], [DefaultValue], [IsVisibleToClients], [IsAvailableToHost], [AllowedProviders], [ValueType], [ExtraProperties]) VALUES (N'a265261b-a1be-de52-3751-3a0b3bbb593a', N'SettingManagement', N'SettingManagement.AllowChangingEmailSettings', N'SettingManagement.Enable', N'L:AbpSettingManagement,Feature:AllowChangingEmailSettings', NULL, N'false', 1, 0, NULL, N'{"name":"ToggleStringValueType","properties":{},"validator":{"name":"BOOLEAN","properties":{}}}', N'{}')
GO
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'65c74e1a-72d6-47ff-9365-3a0b3bba062e', NULL, N'AbpIdentity.Roles', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'8089cc0a-88b4-af72-0a25-3a0b3bba063a', NULL, N'AbpIdentity.Roles.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'9b9ef8e5-31d7-d69e-782e-3a0b3bba063b', NULL, N'AbpIdentity.Roles.Update', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'8599ac72-0296-1a3a-1996-3a0b3bba063c', NULL, N'AbpIdentity.Users.ManagePermissions', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'a4b16005-10b0-788d-232a-3a0b3bba063c', NULL, N'AbpIdentity.Users.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'd5cb67ac-c2ea-70e2-6d24-3a0b3bba063c', NULL, N'AbpIdentity.Users.Update', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'ecf46147-ff41-2ad2-9606-3a0b3bba063c', NULL, N'FeatureManagement.ManageHostFeatures', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'b3359f1d-c55f-c5db-9878-3a0b3bba063c', NULL, N'AbpIdentity.Users', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'1bb8da30-05c5-d3fe-b8db-3a0b3bba063c', NULL, N'AbpIdentity.Roles.ManagePermissions', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'71dbbb65-cbd2-0776-b98a-3a0b3bba063c', NULL, N'AbpIdentity.Users.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'29c95bdf-c7a2-4f95-d1af-3a0b3bba063c', NULL, N'AbpIdentity.Roles.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'f3cf3049-48e1-3e44-3c27-3a0b3bba063d', NULL, N'SettingManagement.Emailing.Test', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'b92024b5-a5ca-2db7-5209-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants.Update', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'90771196-b70e-7c33-690b-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants.ManageFeatures', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'72773388-f966-bc3f-6b8c-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'889966e5-348b-8fe1-76b5-3a0b3bba063d', NULL, N'SettingManagement.Emailing', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'5e5c0e85-7689-308c-a60f-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants.Create', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'60e44942-f194-1634-af56-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'0f437f47-66dc-4aee-e31a-3a0b3bba063d', NULL, N'AbpTenantManagement.Tenants.Delete', N'R', N'admin')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'ec46dcef-24a8-8e8a-56c9-3a0b4047a91f', NULL, N'AbpIdentity.Roles', N'U', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'e01e676b-525a-9e6e-3dad-3a0b4047a924', NULL, N'AbpIdentity.Roles.Create', N'U', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'20a2714a-8e5d-9532-b8ff-3a0b4047a928', NULL, N'AbpIdentity.Roles.Update', N'U', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'f29f470c-3b6b-30a7-dcd2-3a0b4047a92f', NULL, N'AbpIdentity.Roles.Delete', N'U', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'3111bac6-af0f-9b77-00bc-3a0b4047a933', NULL, N'AbpIdentity.Roles.ManagePermissions', N'U', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'0dade858-78ba-61d6-fe98-3a0b404e0f43', NULL, N'AbpIdentity.Roles', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'703331ec-d40f-1373-8b5e-3a0b404e0f45', NULL, N'AbpIdentity.Roles.Create', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'faca461c-71a2-3d7a-8cf1-3a0b404e0f48', NULL, N'AbpIdentity.Roles.Update', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'64bb52ab-042c-67fb-d4c2-3a0b404e0f4a', NULL, N'AbpIdentity.Roles.Delete', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'72b470ab-7489-c364-56d6-3a0b404e0f4e', NULL, N'AbpIdentity.Roles.ManagePermissions', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'0de82682-f574-a9eb-3dfe-3a0b404e0f50', NULL, N'AbpIdentity.Users', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'1e8ec15b-3e8f-72e0-f3d7-3a0b404e0f52', NULL, N'AbpIdentity.Users.Create', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'e5163fff-be0d-487f-2705-3a0b404e0f54', NULL, N'AbpIdentity.Users.Update', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'34beb9f8-ee38-b267-7d4a-3a0b404e0f55', NULL, N'AbpIdentity.Users.Delete', N'R', N'HR')
INSERT [dbo].[AbpPermissionGrants] ([Id], [TenantId], [Name], [ProviderName], [ProviderKey]) VALUES (N'4310c5be-b767-fc31-eb12-3a0b404e0f57', NULL, N'AbpIdentity.Users.ManagePermissions', N'R', N'HR')
GO
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'ac493b37-b02c-bd70-906c-3a0b3bbb57fd', N'AbpIdentity', N'L:AbpIdentity,Permission:IdentityManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'66a77589-1cd3-d4fc-361a-3a0b3bbb581d', N'SettingManagement', N'L:AbpSettingManagement,Permission:SettingManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'2eed4b09-7189-f2a1-eccb-3a0b3bbb581d', N'FeatureManagement', N'L:AbpFeatureManagement,Permission:FeatureManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'2836765b-b2ba-5f91-84b6-3a0b3bbb5827', N'EmployeeManagement', N'F:EmployeeManagement', N'{}')
INSERT [dbo].[AbpPermissionGroups] ([Id], [Name], [DisplayName], [ExtraProperties]) VALUES (N'a76c59a4-1129-c351-fdd7-3a0b3bbb5827', N'AbpTenantManagement', N'L:AbpTenantManagement,Permission:TenantManagement', N'{}')
GO
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'30dda050-c945-76f1-26cb-3a0b3bbb5812', N'AbpIdentity', N'AbpIdentity.Roles', NULL, N'L:AbpIdentity,Permission:RoleManagement', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'5e417c5a-6fd1-f3e8-15b1-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Users.ManagePermissions', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'7b6feab8-65d0-c5b9-21e7-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Users.Update', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'82db96cb-c09c-d32d-582a-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Roles.ManagePermissions', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:ChangePermissions', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'58dd24e6-78de-fe41-69be-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Roles.Delete', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'9ecdfb6c-567c-cf51-7909-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Users', NULL, N'L:AbpIdentity,Permission:UserManagement', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'4812f7ed-8398-2c0b-8860-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Roles.Create', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'82e13c98-0953-8162-8c73-3a0b3bbb581d', N'FeatureManagement', N'FeatureManagement.ManageHostFeatures', NULL, N'L:AbpFeatureManagement,Permission:FeatureManagement.ManageHostFeatures', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'52e2de4f-3f48-dc0d-9329-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Users.Delete', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Delete', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'd51ac33d-c40a-531c-c683-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Roles.Update', N'AbpIdentity.Roles', N'L:AbpIdentity,Permission:Edit', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'31253090-ebbb-1472-dc85-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.UserLookup', NULL, N'L:AbpIdentity,Permission:UserLookup', 1, 3, N'C', NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'64652bc6-1e0b-cba7-e734-3a0b3bbb581d', N'AbpIdentity', N'AbpIdentity.Users.Create', N'AbpIdentity.Users', N'L:AbpIdentity,Permission:Create', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'db221c15-ba59-64cb-3a75-3a0b3bbb581e', N'SettingManagement', N'SettingManagement.Emailing', NULL, N'L:AbpSettingManagement,Permission:Emailing', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'2fc4ca83-7530-91ae-1af8-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Create', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Create', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'7efa7831-9e72-b8f5-290d-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Update', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Edit', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'33a9f388-808e-dd94-3a87-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageFeatures', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageFeatures', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'989e5c87-57b0-85c3-9c87-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants', NULL, N'L:AbpTenantManagement,Permission:TenantManagement', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'8c8aa067-b077-5415-9dbc-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.Delete', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:Delete', 1, 2, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'93f593df-b549-d758-ae2f-3a0b3bbb5827', N'SettingManagement', N'SettingManagement.Emailing.Test', N'SettingManagement.Emailing', N'L:AbpSettingManagement,Permission:EmailingTest', 1, 3, NULL, NULL, N'{}')
INSERT [dbo].[AbpPermissions] ([Id], [GroupName], [Name], [ParentName], [DisplayName], [IsEnabled], [MultiTenancySide], [Providers], [StateCheckers], [ExtraProperties]) VALUES (N'5fbe7ac2-81a4-e1b6-cfc9-3a0b3bbb5827', N'AbpTenantManagement', N'AbpTenantManagement.Tenants.ManageConnectionStrings', N'AbpTenantManagement.Tenants', N'L:AbpTenantManagement,Permission:ManageConnectionStrings', 1, 2, NULL, NULL, N'{}')
GO
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'ce72703e-3900-ff8b-459e-3a0b3bba0456', NULL, N'admin', N'ADMIN', 0, 1, 1, 0, N'{}', N'f70e025e37d1416cb23479eb4f4f2faf')
INSERT [dbo].[AbpRoles] ([Id], [TenantId], [Name], [NormalizedName], [IsDefault], [IsStatic], [IsPublic], [EntityVersion], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'810a4137-c2ca-d0a7-9d9b-3a0b3bbbcf57', NULL, N'HR', N'HR', 0, 0, 1, 0, N'{}', N'b7c8379ca40a4a81bef25689937d352a')
GO
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'81ae989c-1e13-b2d6-dcab-3a0b3fc724e2', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'729da2499c044a93965efb1323a9dae5', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:14:26.9747524' AS DateTime2), N'{}', N'5fbcc4c322c941ca9fdf08af83b57e8c')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'1f520d07-720c-5846-f298-3a0b3fcd1970', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'1196f9c26f22432c921d96b3b32e2ea7', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:20:57.2643030' AS DateTime2), N'{}', N'f94fccaac21b4e4abf47c64bad9e3634')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'fe54a770-043c-274c-7175-3a0b3fcd4605', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'9cf4617180224bfb8336384b09a1f3b2', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:21:08.6779185' AS DateTime2), N'{}', N'472949d6484c4c64ad22ea1427deca4d')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'a4891f8a-a04d-8326-e3e3-3a0b3fcdbe4e', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'e0bc64e432064f46ac16fdbfe49f8386', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:21:39.4706123' AS DateTime2), N'{}', N'af921c36f2954614b9ae421c5e5531a8')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0feca20a-f52d-cafb-99ec-3a0b3fcdd249', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'2e8aa77ac8a4472c9bc644fa410df778', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:21:44.5852046' AS DateTime2), N'{}', N'49ac5ffe559745b6b4775197bd1a4842')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'18f67a73-ed87-272c-9887-3a0b3fceee32', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'c5920169e1c74c3ea918802eee053d75', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:22:57.2665150' AS DateTime2), N'{}', N'7993a25a6208457f91ac0ce221c24f8f')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'51970b7f-c07c-1c9d-5327-3a0b3fcf68e7', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'd0127961c0474ed1a4c63f17caa324b6', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T12:23:28.6797959' AS DateTime2), N'{}', N'227dcde9c9f24fc8b1ad257a7035ab70')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'3ed2a361-9bdd-c0d9-f7c2-3a0b4030566c', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'4d25ba95f0864906868eef41c4e62e59', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:09:20.9405471' AS DateTime2), N'{}', N'074929136f4b42cf9d411843c5aa3b72')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5e3f0036-0416-8709-8777-3a0b4030683d', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'c32cb41d79c143f7933aa456f1faf0c9', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:09:25.5017586' AS DateTime2), N'{}', N'4bdf367f10854cc18086d361198d6db7')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'93021df4-bc3e-aa47-af4b-3a0b40373472', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'e7861072cace456fac5abf1f70bdfbb7', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:16:50.9944694' AS DateTime2), N'{}', N'ee15d843b2634be684b7b7a9d31716d4')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8847286d-f090-7e19-a4cc-3a0b4037474b', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'565883a6176f48d3bcb96aff86ebedce', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:16:55.8189923' AS DateTime2), N'{}', N'f2b4d30c70284ba6b7021d9f93d8d86b')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'35a15dc7-dfc6-4218-2247-3a0b4038d227', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'575b7cbfc37d4bd3a02a91a3938a6944', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:18:36.9035039' AS DateTime2), N'{}', N'820ef7b4151c4a008fcc32887413c90a')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'777b3527-561a-29aa-3524-3a0b4038e286', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'dd4b4b0095c94cbd96a575d6bd35ed71', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:18:41.0945393' AS DateTime2), N'{}', N'8c160d0c14f4482d9e94e8283b0baf13')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'66b4f41e-c8ce-4c8d-3895-3a0b40392c35', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'4b8fc2e047a14e8ba2af6231e456adcf', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:18:59.9575731' AS DateTime2), N'{}', N'8789f34ea7244714ba287d46c77c6597')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'ddf8d5fb-ca49-5329-75ac-3a0b40393dc5', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'd27daa59d53c4692aa490364b48f30be', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:19:04.4533188' AS DateTime2), N'{}', N'e56dc2418e12434f9fe5429221df015d')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'ff6af89f-8854-075d-80ff-3a0b403a3d25', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'1920dedbb3664903a606cf518b50e546', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:20:09.8294666' AS DateTime2), N'{}', N'66a6d92ec922477ab5497cef21914c22')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'5a682150-8174-63f9-3740-3a0b403a4d33', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'ea071ca172a54450883bf8e5f14f7c40', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:20:13.9394426' AS DateTime2), N'{}', N'e3bd304d055c4446a4d5f3208e187002')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'38f0f763-bab7-a8fe-b132-3a0b40420456', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'a1c7c0eee58e487ca9ccc87bf81ffa32', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:28:39.5740307' AS DateTime2), N'{}', N'2235d8e38d63464bb32aab2d34d6a275')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'29edb7ed-704f-1889-d005-3a0b4042177d', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'd8271dc9a4274b74a16a9338e69f0969', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:28:44.4770755' AS DateTime2), N'{}', N'c666083450984865b4cfd29e01553632')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'f3fc68d4-ddbb-22d2-c7e5-3a0b404427e8', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'a817e40cf60147858865cc026fc4b83b', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:30:59.7528159' AS DateTime2), N'{}', N'4c0d3a8071ce4be68b9e692a9a95fd7a')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'c2fee46a-10d6-99f2-3cf9-3a0b40454ddf', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'06b0bf4bf31345f7bb958cced05d8a3b', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:32:15.0077835' AS DateTime2), N'{}', N'cc806eba2b30491f92668fcb955572f7')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'7f11ccbd-c9f5-1632-dab9-3a0b40463527', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'cd7268687c3147599943e9f74dfa746b', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:33:14.2157397' AS DateTime2), N'{}', N'35247df039074080bc2d813c412086bc')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'04dac853-dbdc-9f9d-684a-3a0b4046479c', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'b5ceea148c044a26aae91450d58f4335', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T14:33:18.9399840' AS DateTime2), N'{}', N'5b38ef20d3af4b1db9078b7590e8fe3c')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'8484a70a-1f52-760b-65c2-3a0b407015b0', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'048fdd18f01a49dea37aae97946d4a38', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T15:18:58.6685882' AS DateTime2), N'{}', N'b6806f6c85ee421c9ccdcd16451f876b')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'0ae2b684-8618-1612-2ef4-3a0b40702ead', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'd0a08f165ab04470bb0b55f624bb6d04', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T15:19:05.0689001' AS DateTime2), N'{}', N'41ee4b6956594099979a38039332c4d3')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'275dfd87-b5fc-9f8e-d1dd-3a0b408405b6', NULL, N'EmployeeManagement.Web', N'Identity', N'Logout', N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'ritesh', NULL, NULL, N'ffa0e219fe4d48fe96a1b2e153dc8a36', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T15:40:45.2988836' AS DateTime2), N'{}', N'2ee70a705d6d4168a8696f4ef667d734')
INSERT [dbo].[AbpSecurityLogs] ([Id], [TenantId], [ApplicationName], [Identity], [Action], [UserId], [UserName], [TenantName], [ClientId], [CorrelationId], [ClientIpAddress], [BrowserInfo], [CreationTime], [ExtraProperties], [ConcurrencyStamp]) VALUES (N'b6bea4e5-c832-d6b4-58d8-3a0b40841a14', NULL, N'EmployeeManagement.Web', N'Identity', N'LoginSucceeded', N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'admin', NULL, NULL, N'8e76ec5b257541d8876027896673b9ca', N'::1', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', CAST(N'2023-05-18T15:40:50.5166116' AS DateTime2), N'{}', N'c8391c38da1a4cf3bdeef6845fd62581')
GO
INSERT [dbo].[AbpUserRoles] ([UserId], [RoleId], [TenantId]) VALUES (N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', N'ce72703e-3900-ff8b-459e-3a0b3bba0456', NULL)
INSERT [dbo].[AbpUserRoles] ([UserId], [RoleId], [TenantId]) VALUES (N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', N'810a4137-c2ca-d0a7-9d9b-3a0b3bbbcf57', NULL)
GO
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', NULL, N'admin', N'ADMIN', N'admin', NULL, N'admin@abp.io', N'ADMIN@ABP.IO', 0, N'AQAAAAIAAYagAAAAEFZkNGqEjV42JqE2AIlUFOeCbIo21W++S+H2y5Vd3phE3HFpuU4wWUiQWSa0oyH2kw==', N'FZKT5VKIQTD6BLOL4G6W4MIWJ5LOAMZG', 0, NULL, 0, 1, 0, NULL, 1, 0, 0, 2, CAST(N'2023-05-18T06:51:34.9763212+00:00' AS DateTimeOffset), N'{}', N'1c56964d54df42efa5c464d884d3ea10', CAST(N'2023-05-17T17:21:37.4869987' AS DateTime2), NULL, CAST(N'2023-05-18T12:21:35.0202648' AS DateTime2), N'ff0159f9-fd53-1ec7-389d-3a0b3bba01cf', 0, NULL, NULL)
INSERT [dbo].[AbpUsers] ([Id], [TenantId], [UserName], [NormalizedUserName], [Name], [Surname], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [IsExternal], [PhoneNumber], [PhoneNumberConfirmed], [IsActive], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [ShouldChangePasswordOnNextLogin], [EntityVersion], [LastPasswordChangeTime], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'53bf3cd2-5a8f-8f65-30c7-3a0b3bbf3132', NULL, N'ritesh', N'RITESH', N'Ritesh', N'Shinde', N'riteshshinde@promactinfo.com', N'RITESHSHINDE@PROMACTINFO.COM', 0, N'AQAAAAIAAYagAAAAEHrVHOzcbr2j6gofCqIssZAF66nhHScS5LDygF3URou8KZfX5rlX1CkaTSbnm/B0BA==', N'HAN4F23XNFE5T2J2P2XJ2MYGAYIBQF5C', 0, N'7802036687', 0, 1, 0, NULL, 0, 0, 0, 6, CAST(N'2023-05-17T11:57:17.0953697+00:00' AS DateTimeOffset), N'{}', N'18c33ae74d9d48ebbfe1291be78b8b6a', CAST(N'2023-05-17T17:27:17.2050723' AS DateTime2), N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', CAST(N'2023-05-17T17:27:17.6202372' AS DateTime2), N'31ddfd09-bb13-6b70-050f-3a0b3b9514ba', 0, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([departmentId], [departmentName]) VALUES (1, N'IT')
INSERT [dbo].[department] ([departmentId], [departmentName]) VALUES (2, N'HR')
INSERT [dbo].[department] ([departmentId], [departmentName]) VALUES (4, N'Account')
SET IDENTITY_INSERT [dbo].[department] OFF
GO
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'36f61cc9-26e6-1a6a-a021-3a0b3bba0804', N'EmployeeManagement_Web', N'AQAAAAEAACcQAAAAEB5r4+itu5uSyo96Yj1dsLAIdcww4fGaqeocpZuZcf8HEewzhaHiPqiRXclZ1d6wCg==', N'implicit', N'Web Application', NULL, N'["rst:code id_token","ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:implicit","rst:id_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:EmployeeManagement"]', N'["https://localhost:44337/signout-callback-oidc"]', NULL, N'["https://localhost:44337/signin-oidc"]', NULL, N'confidential', N'https://localhost:44337/', NULL, N'{}', N'1e9ec721f1aa43cbb64330fd6c657edd', CAST(N'2023-05-17T17:21:38.8378298' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'13a5e7f3-9efa-6de7-fd1c-3a0b3bba0880', N'EmployeeManagement_App', NULL, N'implicit', N'Console Test / Angular Application', NULL, N'["ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:password","gt:client_credentials","gt:refresh_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:EmployeeManagement"]', N'["http://localhost:4200"]', NULL, N'["http://localhost:4200"]', NULL, N'public', N'http://localhost:4200', NULL, N'{}', N'bfa478027a5243508f07db17857b43fc', CAST(N'2023-05-17T17:21:38.8827491' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'e7a10628-6413-53fa-423b-3a0b3bba0888', N'EmployeeManagement_BlazorServerTiered', N'AQAAAAEAACcQAAAAEDYF7qETqJN74OnncSuFArknoxEjdjUGu4HZGlvQlrNZQnG9L0hDr9LQwKvhv/tiFA==', N'implicit', N'Blazor Server Application', NULL, N'["rst:code id_token","ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","gt:implicit","rst:id_token","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:EmployeeManagement"]', N'["https://localhost:44367/signout-callback-oidc"]', NULL, N'["https://localhost:44367/signin-oidc"]', NULL, N'confidential', N'https://localhost:44367/', NULL, N'{}', N'8b5afb26d5d845e280380e22797b33f6', CAST(N'2023-05-17T17:21:38.8989343' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[OpenIddictApplications] ([Id], [ClientId], [ClientSecret], [ConsentType], [DisplayName], [DisplayNames], [Permissions], [PostLogoutRedirectUris], [Properties], [RedirectUris], [Requirements], [Type], [ClientUri], [LogoUri], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'33496760-c520-9cc8-4688-3a0b3bba0897', N'EmployeeManagement_Swagger', NULL, N'implicit', N'Swagger Application', NULL, N'["ept:logout","gt:authorization_code","rst:code","ept:authorization","ept:token","ept:revocation","ept:introspection","scp:address","scp:email","scp:phone","scp:profile","scp:roles","scp:EmployeeManagement"]', NULL, NULL, N'["https://localhost:44366/swagger/oauth2-redirect.html"]', NULL, N'public', N'https://localhost:44366', NULL, N'{}', N'4077834e909d48cea3171a5797d2e39c', CAST(N'2023-05-17T17:21:38.9049646' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
INSERT [dbo].[OpenIddictScopes] ([Id], [Description], [Descriptions], [DisplayName], [DisplayNames], [Name], [Properties], [Resources], [ExtraProperties], [ConcurrencyStamp], [CreationTime], [CreatorId], [LastModificationTime], [LastModifierId], [IsDeleted], [DeleterId], [DeletionTime]) VALUES (N'eb711d20-0272-3da3-abfc-3a0b3bba076e', NULL, NULL, N'EmployeeManagement API', NULL, N'EmployeeManagement', NULL, N'["EmployeeManagement"]', N'{}', N'ec7b8fb77066445d86f0b320f2dda390', CAST(N'2023-05-17T17:21:38.6611982' AS DateTime2), NULL, NULL, NULL, 0, NULL, NULL)
GO
/****** Object:  Index [IX_AbpAuditLogActions_AuditLogId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_AuditLogId] ON [dbo].[AbpAuditLogActions]
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpAuditLogActions_TenantId_ServiceName_MethodName_ExecutionTime]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogActions_TenantId_ServiceName_MethodName_ExecutionTime] ON [dbo].[AbpAuditLogActions]
(
	[TenantId] ASC,
	[ServiceName] ASC,
	[MethodName] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_ExecutionTime]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpAuditLogs_TenantId_UserId_ExecutionTime]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpAuditLogs_TenantId_UserId_ExecutionTime] ON [dbo].[AbpAuditLogs]
(
	[TenantId] ASC,
	[UserId] ASC,
	[ExecutionTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpBackgroundJobs_IsAbandoned_NextTryTime] ON [dbo].[AbpBackgroundJobs]
(
	[IsAbandoned] ASC,
	[NextTryTime] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityChanges_AuditLogId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_AuditLogId] ON [dbo].[AbpEntityChanges]
(
	[AuditLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpEntityChanges_TenantId_EntityTypeFullName_EntityId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityChanges_TenantId_EntityTypeFullName_EntityId] ON [dbo].[AbpEntityChanges]
(
	[TenantId] ASC,
	[EntityTypeFullName] ASC,
	[EntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpEntityPropertyChanges_EntityChangeId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpEntityPropertyChanges_EntityChangeId] ON [dbo].[AbpEntityPropertyChanges]
(
	[EntityChangeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatureGroups_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatureGroups_Name] ON [dbo].[AbpFeatureGroups]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_GroupName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpFeatures_GroupName] ON [dbo].[AbpFeatures]
(
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatures_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatures_Name] ON [dbo].[AbpFeatures]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpFeatureValues_Name_ProviderName_ProviderKey]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpFeatureValues_Name_ProviderName_ProviderKey] ON [dbo].[AbpFeatureValues]
(
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([ProviderName] IS NOT NULL AND [ProviderKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpLinkUsers_SourceUserId_SourceTenantId_TargetUserId_TargetTenantId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpLinkUsers_SourceUserId_SourceTenantId_TargetUserId_TargetTenantId] ON [dbo].[AbpLinkUsers]
(
	[SourceUserId] ASC,
	[SourceTenantId] ASC,
	[TargetUserId] ASC,
	[TargetTenantId] ASC
)
WHERE ([SourceTenantId] IS NOT NULL AND [TargetTenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnitRoles_RoleId_OrganizationUnitId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnitRoles_RoleId_OrganizationUnitId] ON [dbo].[AbpOrganizationUnitRoles]
(
	[RoleId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpOrganizationUnits_Code]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_Code] ON [dbo].[AbpOrganizationUnits]
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpOrganizationUnits_ParentId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpOrganizationUnits_ParentId] ON [dbo].[AbpOrganizationUnits]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissionGrants_TenantId_Name_ProviderName_ProviderKey]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissionGrants_TenantId_Name_ProviderName_ProviderKey] ON [dbo].[AbpPermissionGrants]
(
	[TenantId] ASC,
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([TenantId] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissionGroups_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissionGroups_Name] ON [dbo].[AbpPermissionGroups]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_GroupName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpPermissions_GroupName] ON [dbo].[AbpPermissions]
(
	[GroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpPermissions_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpPermissions_Name] ON [dbo].[AbpPermissions]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpRoleClaims_RoleId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoleClaims_RoleId] ON [dbo].[AbpRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpRoles_NormalizedName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpRoles_NormalizedName] ON [dbo].[AbpRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_Action]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_Action] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[Action] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_ApplicationName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_ApplicationName] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_Identity]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_Identity] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[Identity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpSecurityLogs_TenantId_UserId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpSecurityLogs_TenantId_UserId] ON [dbo].[AbpSecurityLogs]
(
	[TenantId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpSettings_Name_ProviderName_ProviderKey]    Script Date: 19-05-2023 15:09:36 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_AbpSettings_Name_ProviderName_ProviderKey] ON [dbo].[AbpSettings]
(
	[Name] ASC,
	[ProviderName] ASC,
	[ProviderKey] ASC
)
WHERE ([ProviderName] IS NOT NULL AND [ProviderKey] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpTenants_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpTenants_Name] ON [dbo].[AbpTenants]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserClaims_UserId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserClaims_UserId] ON [dbo].[AbpUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUserLogins_LoginProvider_ProviderKey]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserLogins_LoginProvider_ProviderKey] ON [dbo].[AbpUserLogins]
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserOrganizationUnits_UserId_OrganizationUnitId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserOrganizationUnits_UserId_OrganizationUnitId] ON [dbo].[AbpUserOrganizationUnits]
(
	[UserId] ASC,
	[OrganizationUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AbpUserRoles_RoleId_UserId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUserRoles_RoleId_UserId] ON [dbo].[AbpUserRoles]
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_Email]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_Email] ON [dbo].[AbpUsers]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_NormalizedEmail]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedEmail] ON [dbo].[AbpUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_NormalizedUserName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_NormalizedUserName] ON [dbo].[AbpUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AbpUsers_UserName]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_AbpUsers_UserName] ON [dbo].[AbpUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictApplications_ClientId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictApplications_ClientId] ON [dbo].[OpenIddictApplications]
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictAuthorizations_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictAuthorizations]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictScopes_Name]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictScopes_Name] ON [dbo].[OpenIddictScopes]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_ApplicationId_Status_Subject_Type] ON [dbo].[OpenIddictTokens]
(
	[ApplicationId] ASC,
	[Status] ASC,
	[Subject] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OpenIddictTokens_AuthorizationId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_AuthorizationId] ON [dbo].[OpenIddictTokens]
(
	[AuthorizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_OpenIddictTokens_ReferenceId]    Script Date: 19-05-2023 15:09:36 ******/
CREATE NONCLUSTERED INDEX [IX_OpenIddictTokens_ReferenceId] ON [dbo].[OpenIddictTokens]
(
	[ReferenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([smallint],(0))) FOR [TryCount]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsAbandoned]
GO
ALTER TABLE [dbo].[AbpBackgroundJobs] ADD  DEFAULT (CONVERT([tinyint],(15))) FOR [Priority]
GO
ALTER TABLE [dbo].[AbpDepartments] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [CreationTime]
GO
ALTER TABLE [dbo].[AbpDepartments] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpEmployees] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpTenants] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [EmailConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsExternal]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [PhoneNumberConfirmed]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [TwoFactorEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [LockoutEnabled]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT ((0)) FOR [AccessFailedCount]
GO
ALTER TABLE [dbo].[AbpUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictApplications] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictScopes] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OpenIddictTokens] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[AbpAuditLogActions]  WITH CHECK ADD  CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpAuditLogActions] CHECK CONSTRAINT [FK_AbpAuditLogActions_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId] FOREIGN KEY([AuditLogId])
REFERENCES [dbo].[AbpAuditLogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityChanges] CHECK CONSTRAINT [FK_AbpEntityChanges_AbpAuditLogs_AuditLogId]
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges]  WITH CHECK ADD  CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId] FOREIGN KEY([EntityChangeId])
REFERENCES [dbo].[AbpEntityChanges] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpEntityPropertyChanges] CHECK CONSTRAINT [FK_AbpEntityPropertyChanges_AbpEntityChanges_EntityChangeId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpOrganizationUnitRoles] CHECK CONSTRAINT [FK_AbpOrganizationUnitRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
GO
ALTER TABLE [dbo].[AbpOrganizationUnits] CHECK CONSTRAINT [FK_AbpOrganizationUnits_AbpOrganizationUnits_ParentId]
GO
ALTER TABLE [dbo].[AbpRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpRoleClaims] CHECK CONSTRAINT [FK_AbpRoleClaims_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings]  WITH CHECK ADD  CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId] FOREIGN KEY([TenantId])
REFERENCES [dbo].[AbpTenants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpTenantConnectionStrings] CHECK CONSTRAINT [FK_AbpTenantConnectionStrings_AbpTenants_TenantId]
GO
ALTER TABLE [dbo].[AbpUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserClaims] CHECK CONSTRAINT [FK_AbpUserClaims_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserLogins] CHECK CONSTRAINT [FK_AbpUserLogins_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId] FOREIGN KEY([OrganizationUnitId])
REFERENCES [dbo].[AbpOrganizationUnits] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpOrganizationUnits_OrganizationUnitId]
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserOrganizationUnits] CHECK CONSTRAINT [FK_AbpUserOrganizationUnits_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AbpRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpRoles_RoleId]
GO
ALTER TABLE [dbo].[AbpUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserRoles] CHECK CONSTRAINT [FK_AbpUserRoles_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[AbpUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AbpUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AbpUserTokens] CHECK CONSTRAINT [FK_AbpUserTokens_AbpUsers_UserId]
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictAuthorizations] CHECK CONSTRAINT [FK_OpenIddictAuthorizations_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[OpenIddictApplications] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictApplications_ApplicationId]
GO
ALTER TABLE [dbo].[OpenIddictTokens]  WITH CHECK ADD  CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId] FOREIGN KEY([AuthorizationId])
REFERENCES [dbo].[OpenIddictAuthorizations] ([Id])
GO
ALTER TABLE [dbo].[OpenIddictTokens] CHECK CONSTRAINT [FK_OpenIddictTokens_OpenIddictAuthorizations_AuthorizationId]
GO
USE [master]
GO
ALTER DATABASE [EmployeeManagement] SET  READ_WRITE 
GO
