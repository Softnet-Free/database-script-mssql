/*
*   Copyright 2023 Robert Koifman
*   
*   Licensed under the Apache License, Version 2.0 (the "License");
*   you may not use this file except in compliance with the License.
*   You may obtain a copy of the License at
*
*   http://www.apache.org/licenses/LICENSE-2.0
*
*   Unless required by applicable law or agreed to in writing, software
*   distributed under the License is distributed on an "AS IS" BASIS,
*   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*   See the License for the specific language governing permissions and
*   limitations under the License.
*/

USE [master]
GO

CREATE DATABASE [Softnet] ON  PRIMARY 
( NAME = N'Softnet', FILENAME = N'C:\Softnet.Database\Softnet.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Softnet_log', FILENAME = N'C:\Softnet.Database\Softnet_log.ldf' , SIZE = 84416KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Softnet] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Softnet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Softnet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Softnet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Softnet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Softnet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Softnet] SET ARITHABORT OFF 
GO
ALTER DATABASE [Softnet] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Softnet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Softnet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Softnet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Softnet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Softnet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Softnet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Softnet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Softnet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Softnet] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Softnet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Softnet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Softnet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Softnet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Softnet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Softnet] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Softnet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Softnet] SET RECOVERY FULL 
GO
ALTER DATABASE [Softnet] SET  MULTI_USER 
GO
ALTER DATABASE [Softnet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Softnet] SET DB_CHAINING OFF 
GO

USE [Softnet]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]      ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]      ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]      ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]      ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]      ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]      ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]      ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]      ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]      ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]      ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]      ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]      ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]      ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Membership_ReportingAccess', @membername = N'aspnet_Membership_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Membership_BasicAccess', @membername = N'aspnet_Membership_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Personalization_ReportingAccess', @membername = N'aspnet_Personalization_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Personalization_BasicAccess', @membername = N'aspnet_Personalization_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Profile_ReportingAccess', @membername = N'aspnet_Profile_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Profile_BasicAccess', @membername = N'aspnet_Profile_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Roles_ReportingAccess', @membername = N'aspnet_Roles_FullAccess'
GO
EXEC sys.sp_addrolemember @rolename = N'aspnet_Roles_BasicAccess', @membername = N'aspnet_Roles_FullAccess'
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]     ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]     ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]     ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]     ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]     ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]     ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]     ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]     ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]     ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]     ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]     ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]     ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]     ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  Table [dbo].[aspnet_Applications]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Paths]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
 CONSTRAINT [PK__aspnet_U__1788CC4D0BC6C43E] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_AcknowledgedEvents]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_AcknowledgedEvents](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceId] [bigint] NOT NULL,
	[EventName] [nvarchar](256) NOT NULL,
	[InstanceUid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Softnet_LastServiceEvents] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Clients]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Clients](
	[ClientId] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientKey] [varchar](32) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[ServiceType] [nvarchar](256) NULL,
	[ContractAuthor] [nvarchar](256) NULL,
	[ClientDescription] [nvarchar](256) NULL,
	[PingPeriod] [int] NOT NULL,
	[SaltedPassword] [varchar](64) NULL,
	[Salt] [varchar](64) NULL,
 CONSTRAINT [PK_ClientId] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Clock]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Clock](
	[TickId] [bigint] IDENTITY(1,1) NOT NULL,
	[TickDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_ContactInvitations]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_ContactInvitations](
	[OwnerId] [bigint] NOT NULL,
	[TargetId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Contacts]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Contacts](
	[ContactId] [bigint] IDENTITY(1,1) NOT NULL,
	[OwnerId] [bigint] NOT NULL,
	[ConsumerId] [bigint] NULL,
	[ContactName] [nvarchar](256) NOT NULL,
	[UserDefaultName] [nvarchar](256) NOT NULL,
	[LastUsedDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Softnet_Consumers] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Domains]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Domains](
	[DomainId] [bigint] IDENTITY(1,1) NOT NULL,
	[OwnerId] [bigint] NOT NULL,
	[DomainName] [nvarchar](256) NOT NULL,
	[LastUsedDate] [datetime] NOT NULL,
	[SiteCounter] [int] NOT NULL,
 CONSTRAINT [PK_Workspaces] PRIMARY KEY CLUSTERED 
(
	[DomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_EventRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_EventRoles](
	[EventId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Events]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Events](
	[EventId] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[EventName] [nvarchar](256) NOT NULL,
	[EventKind] [int] NOT NULL,
	[LifeTicks] [int] NOT NULL,
	[QueueSize] [int] NOT NULL,
	[GuestAccess] [int] NOT NULL,
 CONSTRAINT [PK_Softnet_Events] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_EventSubscriptions]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_EventSubscriptions](
	[ClientId] [bigint] NOT NULL,
	[EventId] [bigint] NOT NULL,
	[InstanceId] [bigint] NOT NULL,
	[Actual] [bit] NOT NULL,
 CONSTRAINT [PK_EventSubscription] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC,
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_GuestCreators]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_GuestCreators](
	[ClientId] [bigint] NOT NULL,
	[CreatorId] [bigint] NOT NULL,
 CONSTRAINT [PK_Softnet_GuestCreators] PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_GuestParams]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_GuestParams](
	[ClientId] [bigint] NOT NULL,
	[EMail] [nvarchar](256) NOT NULL,
	[CreationKey] [varchar](64) NOT NULL,
	[AccessKey] [varchar](64) NULL,
	[KeyCreatedTime] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_HostingPlans]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_HostingPlans](
	[PlanId] [int] NOT NULL,
	[PlanName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_Softnet_HostingPlans] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_HPlanParamIndexes]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_HPlanParamIndexes](
	[ParamIndex] [int] NOT NULL,
	[DefaultValue] [int] NOT NULL,
	[ParamName] [nvarchar](512) NOT NULL,
 CONSTRAINT [PK_Softnet_HostingPlanIndexes] PRIMARY KEY CLUSTERED 
(
	[ParamIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_HPlanParams]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_HPlanParams](
	[PlanId] [int] NOT NULL,
	[ParamIndex] [int] NOT NULL,
	[ParamValue] [int] NOT NULL,
 CONSTRAINT [PK_Softnet_HostingParams] PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC,
	[ParamIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Invitations]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Invitations](
	[InvitationId] [bigint] IDENTITY(1,1) NOT NULL,
	[OwnerId] [bigint] NOT NULL,
	[IKey] [varchar](64) NOT NULL,
	[EMail] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](1024) NOT NULL,
	[Status] [int] NOT NULL,
	[AssignProviderRole] [bit] NOT NULL,
	[CreatedTime] [bigint] NOT NULL,
	[NewUserId] [bigint] NULL,
 CONSTRAINT [PK_Softnet_Invitations] PRIMARY KEY CLUSTERED 
(
	[InvitationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Owners]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Owners](
	[OwnerId] [bigint] IDENTITY(1,1) NOT NULL,
	[ANUserId] [uniqueidentifier] NOT NULL,
	[Authority] [int] NOT NULL,
	[Enabled] [bit] NULL,
	[FullName] [nvarchar](256) NOT NULL,
	[TransactionKey] [varchar](64) NULL,
	[KeyCreatedTime] [bigint] NOT NULL,
	[DomainCounter] [int] NOT NULL,
	[PlanId] [int] NULL,
 CONSTRAINT [PK_Softnet_Owners] PRIMARY KEY CLUSTERED 
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_PEventInstances]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_PEventInstances](
	[InstanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventId] [bigint] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
	[ClientId] [bigint] NOT NULL,
	[CreatedTimeTicks] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Arguments] [varbinary](4096) NULL,
 CONSTRAINT [PK_Softnet_PEventInstances] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_QEventInstances]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_QEventInstances](
	[InstanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventId] [bigint] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
	[CreatedTimeTicks] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Arguments] [varbinary](4096) NULL,
 CONSTRAINT [PK_QEventInstances] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_REventInstances]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_REventInstances](
	[InstanceId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventId] [bigint] NOT NULL,
	[ServiceId] [bigint] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedTimeTicks] [bigint] NOT NULL,
	[IsNullEvent] [bit] NOT NULL,
	[Arguments] [varbinary](4096) NULL,
 CONSTRAINT [PK_REventInstances] PRIMARY KEY CLUSTERED 
(
	[InstanceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Roles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Roles](
	[RoleId] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[Idx] [int] NOT NULL,
 CONSTRAINT [PK_GroupRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_UniqueGroupRoles] UNIQUE NONCLUSTERED 
(
	[SiteId] ASC,
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Services]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Services](
	[ServiceId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceUid] [uniqueidentifier] NOT NULL,
	[SiteId] [bigint] NOT NULL,
	[ServiceType] [nvarchar](256) NULL,
	[ContractAuthor] [nvarchar](256) NULL,
	[Version] [nvarchar](64) NOT NULL,
	[SSHash] [varchar](64) NULL,
	[SSXml] [nvarchar](4000) NULL,
	[Salt] [varchar](64) NULL,
	[SaltedPassword] [varchar](64) NULL,
	[HostName] [nvarchar](256) NOT NULL,
	[StorageUid] [uniqueidentifier] NULL,
	[PingPeriod] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Services_ServiceId] PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Settings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Settings](
	[ParamName] [nvarchar](256) NOT NULL,
	[ParamValue] [nvarchar](1024) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Sites]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Sites](
	[SiteId] [bigint] IDENTITY(1,1) NOT NULL,
	[DomainId] [bigint] NOT NULL,
	[SiteUid] [uniqueidentifier] NOT NULL,
	[SiteKind] [int] NOT NULL,
	[ServiceType] [nvarchar](256) NULL,
	[ContractAuthor] [nvarchar](256) NULL,
	[GuestSupported] [bit] NOT NULL,
	[GuestAllowed] [bit] NOT NULL,
	[StatelessGuestSupported] [bit] NOT NULL,
	[SiteKey] [varchar](32) NOT NULL,
	[RolesSupported] [bit] NOT NULL,
	[DefaultRoleId] [bigint] NULL,
	[ImplicitUsersAllowed] [bit] NOT NULL,
	[EventsSupported] [bit] NOT NULL,
	[SSHash] [varchar](64) NULL,
	[Structured] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[ServiceCounter] [int] NOT NULL,
 CONSTRAINT [PK_ServiceGroups] PRIMARY KEY CLUSTERED 
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_SiteUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_SiteUsers](
	[UserId] [bigint] NOT NULL,
	[SiteId] [bigint] NOT NULL,
 CONSTRAINT [IX_Softnet_UsersInGroups] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_Users]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_Users](
	[UserId] [bigint] IDENTITY(1,1) NOT NULL,
	[ContactId] [bigint] NULL,
	[DomainId] [bigint] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[UserKind] [int] NOT NULL,
	[Dedicated] [bit] NOT NULL,
	[Enabled] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softnet_UsersInRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softnet_UsersInRoles](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [IX_Softnet_UsersInRoles] UNIQUE NONCLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__UserI__0EA330E9]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__Mobil__0F975522]  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  CONSTRAINT [DF__aspnet_Us__IsAno__108B795B]  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Softnet_Clients] ADD  CONSTRAINT [DF_Softnet_Clients_PingPeriod]  DEFAULT ((0)) FOR [PingPeriod]
GO
ALTER TABLE [dbo].[Softnet_Domains] ADD  CONSTRAINT [DF_Softnet_Domains_SiteCounter]  DEFAULT ((0)) FOR [SiteCounter]
GO
ALTER TABLE [dbo].[Softnet_Owners] ADD  CONSTRAINT [DF_Softnet_Owners_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[Softnet_Owners] ADD  CONSTRAINT [DF_Softnet_Owners_ResetKey]  DEFAULT (NULL) FOR [TransactionKey]
GO
ALTER TABLE [dbo].[Softnet_Owners] ADD  CONSTRAINT [DF_Softnet_Owners_RKeyCreatedTime]  DEFAULT ((0)) FOR [KeyCreatedTime]
GO
ALTER TABLE [dbo].[Softnet_Owners] ADD  CONSTRAINT [DF_Softnet_Owners_DomainCounter]  DEFAULT ((0)) FOR [DomainCounter]
GO
ALTER TABLE [dbo].[Softnet_Services] ADD  CONSTRAINT [DF_Softnet_Services_Version]  DEFAULT ('') FOR [Version]
GO
ALTER TABLE [dbo].[Softnet_Services] ADD  CONSTRAINT [DF_Softnet_Services_HostName]  DEFAULT ('') FOR [HostName]
GO
ALTER TABLE [dbo].[Softnet_Services] ADD  CONSTRAINT [DF_Softnet_Services_PingPeriod]  DEFAULT ((0)) FOR [PingPeriod]
GO
ALTER TABLE [dbo].[Softnet_Services] ADD  CONSTRAINT [DF_Softnet_Services_Enabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_ServiceGroups_IsUnderUpgrade]  DEFAULT ((0)) FOR [GuestSupported]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_GuestAllowed]  DEFAULT ((0)) FOR [GuestAllowed]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_SharedClientSupported]  DEFAULT ((0)) FOR [StatelessGuestSupported]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_RolesSupported]  DEFAULT ((0)) FOR [RolesSupported]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_ServiceGroups_DefaultRoleId]  DEFAULT (NULL) FOR [DefaultRoleId]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_DomainUsersAllowed]  DEFAULT ((0)) FOR [ImplicitUsersAllowed]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_EventsSupported]  DEFAULT ((0)) FOR [EventsSupported]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_Constructed]  DEFAULT ((0)) FOR [Structured]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_ServiceGroups_IsEnabled]  DEFAULT ((1)) FOR [Enabled]
GO
ALTER TABLE [dbo].[Softnet_Sites] ADD  CONSTRAINT [DF_Softnet_Sites_ServiceCounter]  DEFAULT ((0)) FOR [ServiceCounter]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Me__UserI__22AA2996] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Membership] CHECK CONSTRAINT [FK__aspnet_Me__UserI__22AA2996]
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pe__UserI__693CA210] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] CHECK CONSTRAINT [FK__aspnet_Pe__UserI__693CA210]
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile] CHECK CONSTRAINT [FK__aspnet_Pr__UserI__38996AB5]
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users] CHECK CONSTRAINT [FK__aspnet_Us__Appli__0DAF0CB0]
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles] CHECK CONSTRAINT [FK__aspnet_Us__UserI__49C3F6B7]
GO
ALTER TABLE [dbo].[Softnet_AcknowledgedEvents]  WITH CHECK ADD  CONSTRAINT [FK_AcknowledgedEvents_Services] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Softnet_Services] ([ServiceId])
GO
ALTER TABLE [dbo].[Softnet_AcknowledgedEvents] CHECK CONSTRAINT [FK_AcknowledgedEvents_Services]
GO
ALTER TABLE [dbo].[Softnet_Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Sites] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Softnet_Sites] ([SiteId])
GO
ALTER TABLE [dbo].[Softnet_Clients] CHECK CONSTRAINT [FK_Clients_Sites]
GO
ALTER TABLE [dbo].[Softnet_Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Softnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Softnet_Clients] CHECK CONSTRAINT [FK_Clients_Users]
GO
ALTER TABLE [dbo].[Softnet_ContactInvitations]  WITH CHECK ADD  CONSTRAINT [FK_ContactRequests_Owners] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Softnet_Owners] ([OwnerId])
GO
ALTER TABLE [dbo].[Softnet_ContactInvitations] CHECK CONSTRAINT [FK_ContactRequests_Owners]
GO
ALTER TABLE [dbo].[Softnet_Contacts]  WITH CHECK ADD  CONSTRAINT [FK_Contacts_Owners] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Softnet_Owners] ([OwnerId])
GO
ALTER TABLE [dbo].[Softnet_Contacts] CHECK CONSTRAINT [FK_Contacts_Owners]
GO
ALTER TABLE [dbo].[Softnet_Domains]  WITH CHECK ADD  CONSTRAINT [FK_Domains_Owners] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[Softnet_Owners] ([OwnerId])
GO
ALTER TABLE [dbo].[Softnet_Domains] CHECK CONSTRAINT [FK_Domains_Owners]
GO
ALTER TABLE [dbo].[Softnet_EventRoles]  WITH CHECK ADD  CONSTRAINT [FK_EventRoles_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Softnet_Events] ([EventId])
GO
ALTER TABLE [dbo].[Softnet_EventRoles] CHECK CONSTRAINT [FK_EventRoles_Events]
GO
ALTER TABLE [dbo].[Softnet_EventRoles]  WITH CHECK ADD  CONSTRAINT [FK_EventRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Softnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Softnet_EventRoles] CHECK CONSTRAINT [FK_EventRoles_Roles]
GO
ALTER TABLE [dbo].[Softnet_Events]  WITH CHECK ADD  CONSTRAINT [FK_Events_Sites] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Softnet_Sites] ([SiteId])
GO
ALTER TABLE [dbo].[Softnet_Events] CHECK CONSTRAINT [FK_Events_Sites]
GO
ALTER TABLE [dbo].[Softnet_EventSubscriptions]  WITH CHECK ADD  CONSTRAINT [FK_EventSubscriptions_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Softnet_Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Softnet_EventSubscriptions] CHECK CONSTRAINT [FK_EventSubscriptions_Clients]
GO
ALTER TABLE [dbo].[Softnet_EventSubscriptions]  WITH CHECK ADD  CONSTRAINT [FK_EventSubscriptions_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Softnet_Events] ([EventId])
GO
ALTER TABLE [dbo].[Softnet_EventSubscriptions] CHECK CONSTRAINT [FK_EventSubscriptions_Events]
GO
ALTER TABLE [dbo].[Softnet_GuestCreators]  WITH CHECK ADD  CONSTRAINT [FK_GuestCreators_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Softnet_Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Softnet_GuestCreators] CHECK CONSTRAINT [FK_GuestCreators_Clients]
GO
ALTER TABLE [dbo].[Softnet_GuestParams]  WITH CHECK ADD  CONSTRAINT [FK_GuestParams_Clients] FOREIGN KEY([ClientId])
REFERENCES [dbo].[Softnet_Clients] ([ClientId])
GO
ALTER TABLE [dbo].[Softnet_GuestParams] CHECK CONSTRAINT [FK_GuestParams_Clients]
GO
ALTER TABLE [dbo].[Softnet_HPlanParams]  WITH CHECK ADD  CONSTRAINT [FK_HostingParams_HostingPlans] FOREIGN KEY([PlanId])
REFERENCES [dbo].[Softnet_HostingPlans] ([PlanId])
GO
ALTER TABLE [dbo].[Softnet_HPlanParams] CHECK CONSTRAINT [FK_HostingParams_HostingPlans]
GO
ALTER TABLE [dbo].[Softnet_Owners]  WITH CHECK ADD  CONSTRAINT [FK_Owners_ANUsers] FOREIGN KEY([ANUserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Softnet_Owners] CHECK CONSTRAINT [FK_Owners_ANUsers]
GO
ALTER TABLE [dbo].[Softnet_QEventInstances]  WITH CHECK ADD  CONSTRAINT [FK_QEventInstances_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Softnet_Events] ([EventId])
GO
ALTER TABLE [dbo].[Softnet_QEventInstances] CHECK CONSTRAINT [FK_QEventInstances_Events]
GO
ALTER TABLE [dbo].[Softnet_REventInstances]  WITH CHECK ADD  CONSTRAINT [FK_REventInstances_Events] FOREIGN KEY([EventId])
REFERENCES [dbo].[Softnet_Events] ([EventId])
GO
ALTER TABLE [dbo].[Softnet_REventInstances] CHECK CONSTRAINT [FK_REventInstances_Events]
GO
ALTER TABLE [dbo].[Softnet_Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Sites] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Softnet_Sites] ([SiteId])
GO
ALTER TABLE [dbo].[Softnet_Roles] CHECK CONSTRAINT [FK_Roles_Sites]
GO
ALTER TABLE [dbo].[Softnet_Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Sites] FOREIGN KEY([SiteId])
REFERENCES [dbo].[Softnet_Sites] ([SiteId])
GO
ALTER TABLE [dbo].[Softnet_Services] CHECK CONSTRAINT [FK_Services_Sites]
GO
ALTER TABLE [dbo].[Softnet_Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_Domains] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Softnet_Domains] ([DomainId])
GO
ALTER TABLE [dbo].[Softnet_Sites] CHECK CONSTRAINT [FK_Sites_Domains]
GO
ALTER TABLE [dbo].[Softnet_SiteUsers]  WITH CHECK ADD  CONSTRAINT [FK_SiteUsers_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Softnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Softnet_SiteUsers] CHECK CONSTRAINT [FK_SiteUsers_Users]
GO
ALTER TABLE [dbo].[Softnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Contacts] FOREIGN KEY([ContactId])
REFERENCES [dbo].[Softnet_Contacts] ([ContactId])
GO
ALTER TABLE [dbo].[Softnet_Users] CHECK CONSTRAINT [FK_Users_Contacts]
GO
ALTER TABLE [dbo].[Softnet_Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Domains] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Softnet_Domains] ([DomainId])
GO
ALTER TABLE [dbo].[Softnet_Users] CHECK CONSTRAINT [FK_Users_Domains]
GO
ALTER TABLE [dbo].[Softnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersInRoles_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Softnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[Softnet_UsersInRoles] CHECK CONSTRAINT [FK_UsersInRoles_Roles]
GO
ALTER TABLE [dbo].[Softnet_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsersInRoles_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Softnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Softnet_UsersInRoles] CHECK CONSTRAINT [FK_UsersInRoles_Users]
GO
ALTER TABLE [dbo].[Softnet_Clients]  WITH CHECK ADD  CONSTRAINT [CK_Clients_PingPeriod] CHECK  (([PingPeriod]=(0) OR (10)<=[PingPeriod] AND [PingPeriod]<=(300)))
GO
ALTER TABLE [dbo].[Softnet_Clients] CHECK CONSTRAINT [CK_Clients_PingPeriod]
GO
ALTER TABLE [dbo].[Softnet_Events]  WITH CHECK ADD  CONSTRAINT [CK_Events_EventKind] CHECK  (((1)<=[EventKind] AND [EventKind]<=(4)))
GO
ALTER TABLE [dbo].[Softnet_Events] CHECK CONSTRAINT [CK_Events_EventKind]
GO
ALTER TABLE [dbo].[Softnet_Events]  WITH CHECK ADD  CONSTRAINT [CK_Events_GuestAccess] CHECK  (([GuestAccess]=(0) OR [GuestAccess]=(1) OR [GuestAccess]=(2)))
GO
ALTER TABLE [dbo].[Softnet_Events] CHECK CONSTRAINT [CK_Events_GuestAccess]
GO
ALTER TABLE [dbo].[Softnet_Events]  WITH CHECK ADD  CONSTRAINT [CK_Events_LifeTicks] CHECK  (((6)<=[LifeTicks] AND [LifeTicks]<=(2592000)))
GO
ALTER TABLE [dbo].[Softnet_Events] CHECK CONSTRAINT [CK_Events_LifeTicks]
GO
ALTER TABLE [dbo].[Softnet_Events]  WITH CHECK ADD  CONSTRAINT [CK_Events_QueueSize] CHECK  (((1)<=[QueueSize] AND [QueueSize]<=(1000)))
GO
ALTER TABLE [dbo].[Softnet_Events] CHECK CONSTRAINT [CK_Events_QueueSize]
GO
ALTER TABLE [dbo].[Softnet_Owners]  WITH CHECK ADD  CONSTRAINT [CK_Owners_Authority] CHECK  (((0)<=[Authority] AND [Authority]<=(2)))
GO
ALTER TABLE [dbo].[Softnet_Owners] CHECK CONSTRAINT [CK_Owners_Authority]
GO
ALTER TABLE [dbo].[Softnet_Services]  WITH CHECK ADD  CONSTRAINT [CK_Services_PingPeriod] CHECK  (([PingPeriod]=(0) OR (10)<=[PingPeriod] AND [PingPeriod]<=(300)))
GO
ALTER TABLE [dbo].[Softnet_Services] CHECK CONSTRAINT [CK_Services_PingPeriod]
GO
ALTER TABLE [dbo].[Softnet_Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_SiteKind] CHECK  (([SiteKind]=(1) OR [SiteKind]=(2)))
GO
ALTER TABLE [dbo].[Softnet_Sites] CHECK CONSTRAINT [CK_Sites_SiteKind]
GO
ALTER TABLE [dbo].[Softnet_Users]  WITH CHECK ADD  CONSTRAINT [CK_UserKind] CHECK  (((1)<=[UserKind] AND [UserKind]<=(4)))
GO
ALTER TABLE [dbo].[Softnet_Users] CHECK CONSTRAINT [CK_UserKind]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_AddToAdmins]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_AddToAdmins]
	@OwnerId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ApplicationId uniqueidentifier, @UserId uniqueidentifier, @RoleId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return -1
		
	SELECT @UserId = UserId FROM Softnet_Owners O INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return 1
	
	SELECT @RoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return -1
	
	if NOT EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
	begin
		INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
		VALUES(@UserId, @RoleId)		
	end	
	UPDATE Softnet_Owners SET Authority = 2 WHERE OwnerId = @OwnerId	
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_ChangePassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_ChangePassword]
	@OwnerId		BIGINT,
	@SaltedPassword	NVARCHAR(128),
	@Salt			NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId uniqueidentifier
		
	SELECT @UserId = UserId FROM Softnet_Owners O INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return 1
	
	UPDATE aspnet_Membership SET [Password] = @SaltedPassword, PasswordSalt = @Salt	WHERE UserId = @UserId
	if @@ROWCOUNT = 0	
		return 1	
		
	return 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_CreateAdminAccount]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_CreateAdminAccount]
	@AccountName		NVARCHAR(256),
	@UserFullName		NVARCHAR(256),
	@SaltedPassword		NVARCHAR(128),
	@Salt				NVARCHAR(128),
	@Email				NVARCHAR(256),
	@LoweredEmail		NVARCHAR(256)	
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ApplicationId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LoweredApplicationName = N'softnet'
	if @@ROWCOUNT = 0
		return -1;
	
	if EXISTS(SELECT 1 FROM aspnet_Users WHERE ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@AccountName))
		return 1;

	if EXISTS(SELECT 1 FROM aspnet_Membership WHERE LoweredEmail = @LoweredEmail AND ApplicationId = @ApplicationId)
		return 2

	DECLARE @AdministratorRoleId uniqueidentifier, @ProviderRoleId uniqueidentifier

	SELECT @AdministratorRoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return -1;			
	
	SELECT @ProviderRoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider'
	if @@ROWCOUNT = 0
		return -1;			

	DECLARE @UserId uniqueidentifier, @NullDate  datetime

	SET @UserId = NEWID()
	SET @NullDate = CONVERT( datetime, '17540101', 112 )
	
	BEGIN TRY
		BEGIN TRANSACTION			
		
		INSERT INTO aspnet_Users(ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)			
		VALUES(@ApplicationId, @UserId, @AccountName, LOWER(@AccountName), 0, GETDATE())

		INSERT INTO aspnet_Membership(
			ApplicationId, 
			UserId, 
			[Password], 
			PasswordFormat, 
			PasswordSalt, 
			Email, 
			LoweredEmail, 
			IsApproved, 
			IsLockedOut, 
			CreateDate, 
			LastLoginDate, 
			LastPasswordChangedDate, 
			LastLockoutDate, 
			FailedPasswordAttemptCount, 
			FailedPasswordAttemptWindowStart, 
			FailedPasswordAnswerAttemptCount, 
			FailedPasswordAnswerAttemptWindowStart)
		VALUES(
			@ApplicationId, 
			@UserId, 
			@SaltedPassword, 
			1, 
			@Salt, 
			@Email, 
			@LoweredEmail,
			1, 
			0, 
			GETDATE(), 
			GETDATE(), 
			GETDATE(), 
			@NullDate,
			0,
			@NullDate,
			0,
			@NullDate)
		
		INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
		VALUES(@UserId, @AdministratorRoleId)
		
		INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
		VALUES(@UserId, @ProviderRoleId)	
		
		INSERT INTO Softnet_Owners(ANUserId, Authority, FullName)
		VALUES(@UserId, 2, @UserFullName)
			
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_FindNextUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_FindNextUsers]
	@Filter		NVARCHAR(256),
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ApplicationId uniqueidentifier
	
	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return
	
	SELECT TOP 7 OwnerId, FullName, UserName 
	FROM Softnet_Owners O
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId	
	WHERE OwnerId > @OwnerId AND U.ApplicationId = @ApplicationId AND FullName like @Filter 
		AND OwnerId NOT IN (SELECT OwnerId FROM Softnet_Owners O2
		INNER JOIN aspnet_Users U2 ON O2.ANUserId = U2.UserId
		INNER JOIN aspnet_UsersInRoles UR2 ON U2.UserId = UR2.UserId 
		INNER JOIN aspnet_Roles R2 ON UR2.RoleId = R2.RoleId
		WHERE U2.ApplicationId = @ApplicationId AND R2.RoleName = N'Administrator')
	ORDER BY OwnerId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_FindPrevUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_FindPrevUsers]
	@Filter		NVARCHAR(256),
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ApplicationId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return
	
	SELECT TOP 7 OwnerId, FullName, UserName 
	FROM Softnet_Owners O
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId	
	WHERE OwnerId < @OwnerId AND U.ApplicationId = @ApplicationId AND FullName like @Filter 
		AND OwnerId NOT IN (SELECT OwnerId FROM Softnet_Owners O2
		INNER JOIN aspnet_Users U2 ON O2.ANUserId = U2.UserId
		INNER JOIN aspnet_UsersInRoles UR2 ON U2.UserId = UR2.UserId 
		INNER JOIN aspnet_Roles R2 ON UR2.RoleId = R2.RoleId
		WHERE U2.ApplicationId = @ApplicationId AND R2.RoleName = N'Administrator')
	ORDER BY OwnerId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_FindUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_FindUsers]
	@Filter		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @ApplicationId uniqueidentifier
	
	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return
	
	SELECT TOP 7 OwnerId, FullName, UserName 
	FROM Softnet_Owners O
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId	
	WHERE U.ApplicationId = @ApplicationId AND FullName like @Filter 
		AND OwnerId NOT IN (SELECT OwnerId FROM Softnet_Owners O2
		INNER JOIN aspnet_Users U2 ON O2.ANUserId = U2.UserId
		INNER JOIN aspnet_UsersInRoles UR2 ON U2.UserId = UR2.UserId 
		INNER JOIN aspnet_Roles R2 ON UR2.RoleId = R2.RoleId
		WHERE U2.ApplicationId = @ApplicationId AND R2.RoleName = N'Administrator')
	ORDER BY OwnerId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_GetAccountProps]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_GetAccountProps]
	@OwnerId		BIGINT,
	@AccountName	NVARCHAR(256) OUTPUT,
	@UserFullName	NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT @AccountName = UserName, @UserFullName = FullName 
	FROM Softnet_Owners O INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return 1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_GetAdminAccounts]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_GetAdminAccounts]
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ApplicationId uniqueidentifier
	
	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return -1	

	SELECT OwnerId, FullName, UserName FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	INNER JOIN aspnet_UsersInRoles UR ON U.UserId = UR.UserId
	INNER JOIN aspnet_Roles R ON UR.RoleId = R.RoleId
	WHERE U.ApplicationId = @ApplicationId AND R.ApplicationId = @ApplicationId AND R.RoleName = N'Administrator'
	ORDER BY FullName ASC

END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_InspectMembership]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_InspectMembership] 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ApplicationId uniqueidentifier
	
	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return -1			
	if NOT EXISTS(SELECT * FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator')
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider')
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'common' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'health monitoring' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'membership' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'personalization' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'profile' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1
	if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'role manager' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
		return -1

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_RemoveFromAdmins]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_RemoveFromAdmins]
	@OwnerId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId uniqueidentifier, @RoleId uniqueidentifier
	
	SELECT @UserId = UserId FROM Softnet_Owners O INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return
	
	SELECT @RoleId = RoleId FROM aspnet_Roles R INNER JOIN aspnet_Applications A ON R.ApplicationId = A.ApplicationId
	WHERE A.ApplicationName = N'Softnet' AND R.RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return

	DELETE aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId	
	
	SELECT @RoleId = RoleId FROM aspnet_Roles R INNER JOIN aspnet_Applications A ON R.ApplicationId = A.ApplicationId
	WHERE A.ApplicationName = N'Softnet' AND R.RoleName = N'Provider'
	if @@ROWCOUNT = 1
	begin
		if EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
			UPDATE Softnet_Owners SET Authority = 1 WHERE OwnerId = @OwnerId
		else
			UPDATE Softnet_Owners SET Authority = 0 WHERE OwnerId = @OwnerId		
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_SetupMembership]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_SetupMembership] 
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ApplicationId uniqueidentifier
	DECLARE 
		@ErrorMessage  NVARCHAR(4000), 
		@ErrorSeverity INT, 
		@ErrorState    INT;

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
	begin
		SET @ApplicationId = NEWID()
		
		BEGIN TRY
			BEGIN TRANSACTION
				INSERT INTO aspnet_Applications(ApplicationName, LoweredApplicationName, ApplicationId)
				VALUES(N'Softnet', N'softnet', @ApplicationId)		
				
				INSERT INTO aspnet_Roles(ApplicationId, RoleId, RoleName, LoweredRoleName)
				VALUES(@ApplicationId, NEWID(), N'Administrator', N'administrator')
				
				INSERT INTO aspnet_Roles(ApplicationId, RoleId, RoleName, LoweredRoleName)
				VALUES(@ApplicationId, NEWID(), N'Provider', N'provider')
				
				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'common' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'common', N'1', 1)

				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'health monitoring' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'health monitoring', N'1', 1)
					
				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'membership' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'membership', N'1', 1)

				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'personalization' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'personalization', N'1', 1)

				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'profile' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'profile', N'1', 1)

				if NOT EXISTS(SELECT * FROM aspnet_SchemaVersions WHERE Feature = N'role manager' AND CompatibleSchemaVersion = N'1' AND IsCurrentVersion = 1)
					INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
					VALUES(N'role manager', N'1', 1)
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			if @@TRANCOUNT > 0
				ROLLBACK TRANSACTION
			SELECT
				@ErrorMessage = ERROR_MESSAGE(), 
				@ErrorSeverity = ERROR_SEVERITY(), 
				@ErrorState = ERROR_STATE();
			RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH				
	end else
	begin
		BEGIN TRY
			BEGIN TRANSACTION
				if NOT EXISTS(SELECT * FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator')
				begin			
					INSERT INTO aspnet_Roles(ApplicationId, RoleId, RoleName, LoweredRoleName)
					VALUES(@ApplicationId, NEWID(), N'Administrator', N'administrator')
				end

				if NOT EXISTS(SELECT * FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider')
				begin			
					INSERT INTO aspnet_Roles(ApplicationId, RoleId, RoleName, LoweredRoleName)
					VALUES(@ApplicationId, NEWID(), N'Provider', N'provider')
				end
			COMMIT TRANSACTION
		END TRY
		BEGIN CATCH
			if @@TRANCOUNT > 0
				ROLLBACK TRANSACTION
			SELECT
				@ErrorMessage = ERROR_MESSAGE(), 
				@ErrorSeverity = ERROR_SEVERITY(), 
				@ErrorState = ERROR_STATE();
			RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
		END CATCH			
	end	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_AdminTool_ValidateDatabase]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_AdminTool_ValidateDatabase] 
AS
BEGIN
	SET NOCOUNT ON;
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Owners')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Domains')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Sites')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Services')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Users')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'Softnet_Clients')
		return -1

	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'aspnet_Applications')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'aspnet_Membership')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'aspnet_Users')
		return -1
	if NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = N'aspnet_Roles')
		return -1
	return 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_AddSubscription]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_AddSubscription]
	@ClientId	BIGINT,
	@SiteId		BIGINT,
	@EventKind	INT,
	@EventName	NVARCHAR(256),
	@EventId	BIGINT OUTPUT,
	@InstanceId	BIGINT OUTPUT
AS
BEGIN
	SELECT @EventId = EventId FROM Softnet_Events WHERE SiteId = @SiteId AND @EventKind = EventKind AND EventName = @EventName
	if @@Rowcount = 0
		return -1
		
	SELECT @InstanceId = InstanceId FROM Softnet_EventSubscriptions WHERE ClientId = @ClientId AND EventId = @EventId
	if @@Rowcount = 0
	begin	
		INSERT INTO Softnet_EventSubscriptions(ClientId, EventId, InstanceId, Actual)
		VALUES(@ClientId, @EventId, 0, 1)
		set @InstanceId = 0
	end else
	begin
		UPDATE Softnet_EventSubscriptions SET Actual = 1 WHERE ClientId = @ClientId AND EventId = @EventId
	end
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetIData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetIData] 	
	@ClientKey			VARCHAR(32),
	@ClientId			BIGINT OUTPUT,
	@SiteId				BIGINT OUTPUT,
	@UserId				BIGINT OUTPUT,
	@UserKind			INT OUTPUT,
	@SiteKind			INT OUTPUT,
	@ServiceType		NVARCHAR(256) OUTPUT,
	@ContractAuthor		NVARCHAR(256) OUTPUT,
	@ClientDescription	NVARCHAR(256) OUTPUT,
	@Salt				VARCHAR(64) OUTPUT,
	@SaltedPassword		VARCHAR(64) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	

	SELECT
		@SiteId				= S.SiteId,
		@SiteKind			= S.SiteKind,
		@UserId				= U.UserId,
		@UserKind			= U.UserKind,		
		@ClientId			= C.ClientId,
		@ServiceType		= C.ServiceType,
		@ContractAuthor		= C.ContractAuthor,
		@ClientDescription	= C.ClientDescription,
		@SaltedPassword		= C.SaltedPassword,
		@Salt				= C.Salt
	FROM Softnet_Clients C
		JOIN Softnet_Sites S ON C.SiteId = S.SiteId
		JOIN Softnet_Users U ON C.UserId = U.UserId 
	WHERE ClientKey = @ClientKey	
	if @@Rowcount = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetPEventArguments]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetPEventArguments]
	@InstanceId		BIGINT,
	@Arguments		VARBINARY(4096) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @Arguments = Arguments FROM Softnet_PEventInstances WHERE InstanceId = @InstanceId
	if @@Rowcount = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetQEventArguments]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetQEventArguments]
	@InstanceId		BIGINT,
	@Arguments		VARBINARY(4096) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @Arguments = Arguments FROM Softnet_QEventInstances WHERE InstanceId = @InstanceId
	if @@Rowcount = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetREventArguments]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetREventArguments]
	@InstanceId		BIGINT,
	@Arguments		VARBINARY(4096) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @Arguments = Arguments FROM Softnet_REventInstances WHERE InstanceId = @InstanceId
	if @@Rowcount = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetStatelessClientIData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetStatelessClientIData]
	@ClientKey			VARCHAR(32),
	@SiteId				BIGINT OUTPUT,
	@SiteKind			INT OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT @SiteId = SiteId, @SiteKind = SiteKind FROM Softnet_Sites WHERE SiteKey = @ClientKey
	if @@Rowcount = 0
		return -1			
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_GetSubscriptions]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_GetSubscriptions]
	@ClientId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ES.EventId, E.EventKind, E.EventName, ES.InstanceId
	FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId
	WHERE ES.ClientId = @ClientId AND ES.Actual = 1	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_RemoveSubscription]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_RemoveSubscription]
	@ClientId	BIGINT,
	@EventId	BIGINT
AS
BEGIN
	UPDATE Softnet_EventSubscriptions SET Actual = 0 WHERE ClientId = @ClientId AND EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_SaveEventAcknowledgment]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_SaveEventAcknowledgment]
	@ClientId		BIGINT,
	@EventId		BIGINT,
	@InstanceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_EventSubscriptions SET InstanceId = @InstanceId WHERE ClientId = @ClientId AND EventId = @EventId AND InstanceId < @InstanceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Client_SaveSoftwareProps]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Client_SaveSoftwareProps]
	@ClientId			BIGINT,
	@ServiceType		NVARCHAR(256),
	@ContractAuthor		NVARCHAR(256),
	@ClientDescription	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Clients SET
		ServiceType = @ServiceType,
		ContractAuthor = @ContractAuthor,
		ClientDescription = @ClientDescription
	WHERE ClientId = @ClientId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ClientParams_GetData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ClientParams_GetData]
	@ClientId			BIGINT,
	@PingPeriod			INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	
	
	SELECT @PingPeriod = PingPeriod
	FROM Softnet_Clients		 
	WHERE ClientId = @ClientId	
	if @@Rowcount = 0
		return -1
	return 0    
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ClientParams_GetPingPeriod]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ClientParams_GetPingPeriod]
	@ClientId		BIGINT,
	@PingPeriod		INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @PingPeriod = PingPeriod FROM Softnet_Clients WHERE ClientId = @ClientId
	IF @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ClientParams_SetPingPeriod]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ClientParams_SetPingPeriod]
	@ClientId		BIGINT,
	@PingPeriod		INT
AS
BEGIN
	UPDATE Softnet_Clients SET PingPeriod = @PingPeriod WHERE ClientId = @ClientId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Clock_AddTick]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Clock_AddTick] 	
	@Ticks		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;		
	
	INSERT INTO Softnet_Clock(TickDate)
	VALUES(GETDATE())
	
	SET @Ticks = SCOPE_IDENTITY()
	
	DELETE Softnet_Clock WHERE TickId <> @Ticks
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Clock_GetTicks]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Clock_GetTicks]
	@Ticks		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 1 @Ticks = TickId FROM Softnet_Clock ORDER BY TickId DESC
	if @@ROWCOUNT = 0
	begin		
		INSERT INTO Softnet_Clock(TickDate)
		VALUES(GETDATE())	
		SET @Ticks = SCOPE_IDENTITY()
	end
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Controller_CleanExpiredEvents]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Controller_CleanExpiredEvents] 
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @CurrentTicks BIGINT
	
	EXEC Softnet_Clock_GetTicks @CurrentTicks OUTPUT	
	SET @CurrentTicks = @CurrentTicks - 180
	
	DELETE QE FROM Softnet_QEventInstances QE INNER JOIN Softnet_Events E ON QE.EventId = E.EventId
	WHERE @CurrentTicks >= (QE.CreatedTimeTicks + E.LifeTicks)

	DELETE PE FROM Softnet_PEventInstances PE INNER JOIN Softnet_Events E ON PE.EventId = E.EventId
	WHERE @CurrentTicks >= (PE.CreatedTimeTicks + E.LifeTicks)	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_DeletePEventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_DeletePEventInstance]
	@InstanceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_PEventInstances WHERE InstanceId = @InstanceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_DeleteQEventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_DeleteQEventInstance]
	@InstanceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_QEventInstances WHERE InstanceId = @InstanceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_DeleteREventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_DeleteREventInstance]
	@InstanceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_REventInstances WHERE InstanceId = @InstanceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SavePEventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SavePEventInstance] 
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@ClientId			BIGINT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
	SET @CreatedDate = GETDATE()
	
	INSERT INTO Softnet_PEventInstances(EventId, ServiceId, ClientId, CreatedTimeTicks, CreatedDate, Arguments)
	VALUES(@EventId, @ServiceId, @ClientId, @CreatedTimeTicks, @CreatedDate, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SavePEventInstance2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SavePEventInstance2]
	@InvalidInstanceId	BIGINT,
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@ClientId			BIGINT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_PEventInstances WHERE InstanceId = @InvalidInstanceId
	
	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
	SET @CreatedDate = GETDATE()
	
	INSERT INTO Softnet_PEventInstances(EventId, ServiceId, ClientId, CreatedTimeTicks, CreatedDate, Arguments)
	VALUES(@EventId, @ServiceId, @ClientId, @CreatedTimeTicks, @CreatedDate, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SaveQEventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SaveQEventInstance]
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
	SET @CreatedDate = GETDATE()

	INSERT INTO Softnet_QEventInstances(EventId, ServiceId, CreatedTimeTicks, CreatedDate, Arguments)
	VALUES(@EventId, @ServiceId, @CreatedTimeTicks, @CreatedDate, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SaveQEventInstance2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SaveQEventInstance2]
	@InvalidInstanceId	BIGINT,
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_QEventInstances WHERE InstanceId = @InvalidInstanceId
	
	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
	SET @CreatedDate = GETDATE()

	INSERT INTO Softnet_QEventInstances(EventId, ServiceId, CreatedTimeTicks, CreatedDate, Arguments)
	VALUES(@EventId, @ServiceId, @CreatedTimeTicks, @CreatedDate, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SaveREventInstance]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SaveREventInstance]
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@IsNull				BIT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;

	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
    SET @CreatedDate = GETDATE()
	
	INSERT INTO Softnet_REventInstances(EventId, ServiceId, CreatedTimeTicks, CreatedDate, IsNullEvent, Arguments)
	VALUES(@EventId, @ServiceId, @CreatedTimeTicks, @CreatedDate, @IsNull, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_EventController_SaveREventInstance2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_EventController_SaveREventInstance2]
	@InvalidInstanceId	BIGINT,
	@EventId			BIGINT,
	@ServiceId			BIGINT,
	@IsNull				BIT,
	@Arguments			VARBINARY(4096) = NULL,
	@InstanceId			BIGINT OUTPUT,
	@CreatedTimeTicks	BIGINT OUTPUT,
	@CreatedDate		DATETIME OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;
	DELETE Softnet_REventInstances WHERE InstanceId = @InvalidInstanceId
	
	EXEC Softnet_Clock_GetTicks @CreatedTimeTicks OUTPUT 
	SET @CreatedDate = GETDATE()
	
	INSERT INTO Softnet_REventInstances(EventId, ServiceId, CreatedTimeTicks, CreatedDate, IsNullEvent, Arguments)
	VALUES(@EventId, @ServiceId, @CreatedTimeTicks, @CreatedDate, @IsNull, @Arguments)

	SET @InstanceId = SCOPE_IDENTITY()	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_FS_ResolveClientKey]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Return Codes ---------------
-- BAD_REFERENCE: -1
-- INVALID CLIENT KIND: -2

CREATE PROCEDURE [dbo].[Softnet_FS_ResolveClientKey]
	@ClientCategory			INT,
	@ClientKey				VARCHAR(32),
	@SiteId					BIGINT OUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @SiteKind INT
	
	if @ClientCategory = 1 OR @ClientCategory = 2
	begin
		DECLARE @UserId BIGINT
		SELECT @SiteId = SiteId, @UserId = UserId FROM Softnet_Clients WHERE ClientKey = @ClientKey
		if @@Rowcount = 0
			return -1

		SELECT @SiteKind = SiteKind FROM Softnet_Sites WHERE SiteId = @SiteId
		if @@Rowcount = 0
			return -1			
		
		if @ClientCategory <> @SiteKind
			return -2
	end else
	begin		
		SELECT @SiteId = SiteId, @SiteKind = SiteKind FROM Softnet_Sites WHERE SiteKey = @ClientKey
		if @@Rowcount = 0
			return -1	
		
		if (@ClientCategory - 2) <> @SiteKind
			return -2
	end
		
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_FS_ResolveServiceUid]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

------------------------------------------------
-- Return Codes ---------------
-- SERVICE NOT REGISTERED: -1

CREATE PROCEDURE [dbo].[Softnet_FS_ResolveServiceUid] 
	@ServiceUid		UNIQUEIDENTIFIER,
	@SiteId			BIGINT OUT
AS
BEGIN
	SET NOCOUNT ON;	
	SELECT @SiteId = SiteId FROM Softnet_Services WHERE ServiceUid = @ServiceUid
	if @@Rowcount = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AcceptInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AcceptInvitation]
	@AccountName		NVARCHAR(256),
	@InvitingUserId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @OwnerName NVARCHAR(256)
	
	SELECT @OwnerId = O.OwnerId, @OwnerName = O.FullName
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2

	DECLARE @InvitingUserName NVARCHAR(256)	
	SELECT @InvitingUserName = FullName FROM Softnet_Owners WHERE OwnerId = @InvitingUserId
	if @@ROWCOUNT = 0
		return -1;	
		
	BEGIN TRY		
		if EXISTS(SELECT 1 FROM Softnet_ContactInvitations WHERE OwnerId = @InvitingUserId AND TargetId = @OwnerId)
		begin
			BEGIN TRANSACTION

			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @OwnerId AND ConsumerId = @InvitingUserId)
			begin
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@OwnerId, @InvitingUserId, @InvitingUserName, '', GETDATE(), 0)
			end else
			begin
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @OwnerId AND ConsumerId = @InvitingUserId
			end
			
			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @InvitingUserId AND ConsumerId = @OwnerId)
			begin
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@InvitingUserId, @OwnerId, @OwnerName, '', GETDATE(), 0)		
			end else
			begin
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @InvitingUserId AND ConsumerId = @OwnerId
			end

			DELETE Softnet_ContactInvitations WHERE OwnerId = @OwnerId AND TargetId = @InvitingUserId
			DELETE Softnet_ContactInvitations WHERE OwnerId = @InvitingUserId AND TargetId = @OwnerId
		
			COMMIT TRANSACTION			
		end				
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AddService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AddService]
	@SiteId			BIGINT,
	@CreatedDate	DATETIME,
	@Hostname		NVARCHAR(256) OUTPUT,
	@ServiceId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @OwnerID BIGINT

	SELECT @OwnerID = OwnerID FROM Softnet_Domains D
	INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
	WHERE SiteID = @SiteId AND SiteKind = 2
	if @@ROWCOUNT = 0
		return -2

	DECLARE @ServicesTotal INT, @MaxNumberOfServices INT
	
	SELECT @ServicesTotal = COUNT(*) FROM Softnet_Services SR
	INNER JOIN Softnet_Sites S ON SR.SiteId = S.SiteId
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId
	
	SELECT @MaxNumberOfServices = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 3
	
	if @@ROWCOUNT = 1
	begin
		if @ServicesTotal >= @MaxNumberOfServices return 5
	end else
	begin
		SELECT @MaxNumberOfServices = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 3	
		if @@ROWCOUNT = 1
		begin
			if @ServicesTotal >= @MaxNumberOfServices return 5
		end else
		begin
			if @ServicesTotal >= 500 return 5
		end
	end
	
	SELECT @ServicesTotal = COUNT(*) FROM Softnet_Services WHERE SiteId = @SiteId
	
	SELECT @MaxNumberOfServices = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 4
	
	if @@ROWCOUNT = 1
	begin
		if @ServicesTotal >= @MaxNumberOfServices return 6
	end else
	begin
		SELECT @MaxNumberOfServices = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 4	
		if @@ROWCOUNT = 1
		begin
			if @ServicesTotal >= @MaxNumberOfServices return 6
		end else
		begin
			if @ServicesTotal >= 50 return 6
		end
	end
	
	UPDATE Softnet_Sites SET ServiceCounter = ServiceCounter + 1 WHERE SiteId = @SiteId
	
	if DATALENGTH(@Hostname) = 0
	begin
		SELECT @Hostname = 'Service' + LTRIM(STR(ServiceCounter)) FROM Softnet_Sites WHERE SiteId = @SiteId
		if @@ROWCOUNT = 0
			return -2
	end

	INSERT INTO Softnet_Services(SiteId, ServiceUid, HostName, Salt, SaltedPassword, CreatedDate)
	VALUES(@SiteId, NEWID(), @Hostname, NULL, NULL, @CreatedDate)
	SET @ServiceId = SCOPE_IDENTITY()		
		
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AddSiteUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AddSiteUser]
	@SiteId		BIGINT,
	@UserId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @SiteDomainId BIGINT, @UserDomainId BIGINT
	
	SELECT @SiteDomainId = DomainId FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return
	
	SELECT @UserDomainId = DomainId FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return
	
	if @SiteDomainId <> @UserDomainId
		return
	
	INSERT INTO Softnet_SiteUsers(SiteId, UserId)
	VALUES(@SiteId, @UserId)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AddUserRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AddUserRole]
	@UserId		BIGINT,
	@RoleId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Softnet_UsersInRoles(UserId, RoleId)
	VALUES(@UserId, @RoleId)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AllowGuest]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AllowGuest]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET GuestAllowed = 1 WHERE SiteId = @SiteId AND GuestSupported = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_AllowImplicitUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_AllowImplicitUsers]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET ImplicitUsersAllowed = 1 WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_ChangeDomainName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_ChangeDomainName]
	@DomainId		BIGINT,
	@DomainName		NVARCHAR(256)
AS
BEGIN	
	SET NOCOUNT ON;
	UPDATE Softnet_Domains SET DomainName = @DomainName WHERE DomainId = @DomainId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_ChangeHostname]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_ChangeHostname] 
	@ServiceId		BIGINT,
	@Hostname		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Services SET HostName = @Hostname WHERE ServiceId = @ServiceId
	if @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_ChangeSiteDescription]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_ChangeSiteDescription]
	@SiteId			BIGINT,
	@Description	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET [Description] = @Description WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_ClearUserRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_ClearUserRoles]
	@UserId		BIGINT,
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE UR FROM Softnet_UsersInRoles UR
	INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId
	WHERE UR.UserId = @UserId AND R.SiteId = @SiteId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_ClientKeyExists]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_ClientKeyExists]
	@ClientKey	VARCHAR(32)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Clients WHERE ClientKey = @ClientKey)
		return 1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateClient]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateClient]
	@OwnerId		BIGINT,
	@UserId			BIGINT,
	@SiteId			BIGINT,
	@ClientKey		VARCHAR(32),
	@ClientId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @UserKind INT
	
	SELECT @UserKind FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -2

	if (@UserKind <> 1 AND @UserKind <> 2)
		return -3

	DECLARE @PrivateClientsTotal INT, @MaxNumberOfClients INT
	
	SELECT @PrivateClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId AND (U.UserKind = 1 OR U.UserKind = 2)
	
	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 7
	
	if @@ROWCOUNT = 1
	begin
		if @PrivateClientsTotal >= @MaxNumberOfClients return 5
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 7	
		if @@ROWCOUNT = 1
		begin
			if @PrivateClientsTotal >= @MaxNumberOfClients return 5
		end else
		begin
			if @PrivateClientsTotal >= 2000 return 5
		end		
	end

	DECLARE @GuestClientsTotal INT, @ContactClientsTotal INT
	
	SELECT @ContactClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Contacts CN ON U.ContactId = CN.ContactId
	WHERE CN.ConsumerId = @OwnerId AND U.UserKind = 3
	
	SELECT @GuestClientsTotal = COUNT(*) FROM Softnet_GuestCreators
	WHERE CreatorId = @OwnerId

	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 10

	if @@ROWCOUNT = 1
	begin
		if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 10	
		if @@ROWCOUNT = 1
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
		end else
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= 4000 return 6
		end		
	end

	INSERT INTO Softnet_Clients(ClientKey, SiteId, UserId)
	VALUES(@ClientKey, @SiteId, @UserId)
	SET @ClientId = SCOPE_IDENTITY()	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateContactClient]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateContactClient]
	@ConsumerId		BIGINT,
	@UserId			BIGINT,
	@SiteId			BIGINT,
	@ClientKey		VARCHAR(32),
	@ClientId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ServiceOwnerId BIGINT, @UserKind INT
	
	SELECT @ServiceOwnerId = D.OwnerId FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE S.SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -2

	SELECT @UserKind FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -2

	if @UserKind <> 3
		return -3

	DECLARE @ContactClientsTotal INT, @MaxNumberOfClients INT
	
	SELECT @ContactClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	WHERE D.OwnerId = @ServiceOwnerId AND U.UserKind = 3
	
	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @ServiceOwnerId AND HP.ParamIndex = 8
	
	if @@ROWCOUNT = 1
	begin
		if @ContactClientsTotal >= @MaxNumberOfClients return 5
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 8	
		if @@ROWCOUNT = 1
		begin
			if @ContactClientsTotal >= @MaxNumberOfClients return 5
		end else
		begin
			if @ContactClientsTotal >= 2000 return 5
		end		
	end

	DECLARE @GuestClientsTotal INT, @PrivateClientsTotal INT
	
	SELECT @PrivateClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @ConsumerId AND (U.UserKind = 1 OR U.UserKind = 2)

	SELECT @ContactClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Contacts CN ON U.ContactId = CN.ContactId
	WHERE CN.ConsumerId = @ConsumerId AND U.UserKind = 3
	
	SELECT @GuestClientsTotal = COUNT(*) FROM Softnet_GuestCreators
	WHERE CreatorId = @ConsumerId

	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @ConsumerId AND HP.ParamIndex = 10

	if @@ROWCOUNT = 1
	begin
		if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 10	
		if @@ROWCOUNT = 1
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
		end else
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= 4000 return 6
		end		
	end

	INSERT INTO Softnet_Clients(ClientKey, SiteId, UserId)
	VALUES(@ClientKey, @SiteId, @UserId)
	SET @ClientId = SCOPE_IDENTITY()	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateContactUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateContactUser] 
	@DomainId			BIGINT,
	@ContactId			BIGINT,
	@UserName			NVARCHAR(256),
	@DedicatedStatus	BIT,
	@EnabledStatus		BIT,
	@UserId				BIGINT OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;

	DECLARE @OwnerID BIGINT

	SELECT @OwnerID = OwnerID FROM Softnet_Domains WHERE DomainID = @DomainId
	if @@ROWCOUNT = 0
		return -2

	IF NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @OwnerID AND ContactId = @ContactId)
		return -2

	DECLARE @UsersTotal INT, @MaxNumberOfUsers INT
	
	SELECT @UsersTotal = COUNT(*) FROM Softnet_Users U
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId AND U.UserKind != 4
	
	SELECT @MaxNumberOfUsers = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 5
	
	if @@ROWCOUNT = 1
	begin
		if @UsersTotal >= @MaxNumberOfUsers return 5
	end else
	begin
		SELECT @MaxNumberOfUsers = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 5	
		if @@ROWCOUNT = 1
		begin
			if @UsersTotal >= @MaxNumberOfUsers return 5
		end else
		begin
			if @UsersTotal >= 1000 return 5
		end		
	end

	SELECT @UsersTotal = COUNT(*) FROM Softnet_Users	
	WHERE DomainId = @DomainId AND UserKind != 4
	
	SELECT @MaxNumberOfUsers = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 6
	
	if @@ROWCOUNT = 1
	begin
		if @UsersTotal >= @MaxNumberOfUsers return 6
	end else
	begin
		SELECT @MaxNumberOfUsers = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 6	
		if @@ROWCOUNT = 1
		begin
			if @UsersTotal >= @MaxNumberOfUsers return 6
		end else
		begin
			if @UsersTotal >= 100 return 6
		end		
	end

	INSERT INTO Softnet_Users(DomainId, ContactId, UserName, UserKind, Dedicated, [Enabled])
	VALUES(@DomainId, @ContactId, @UserName, 3, @DedicatedStatus, @EnabledStatus)	

	SET @UserId = SCOPE_IDENTITY()	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateDomain]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateDomain]
	@AccountName	NVARCHAR(256),
	@DomainName		NVARCHAR(256),
	@DomainId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
	
	DECLARE @DomainsCount INT, @MaxNumberOfDomains INT
	
	SELECT @DomainsCount = COUNT(*) FROM Softnet_Domains WHERE OwnerId = @OwnerId
	
	SELECT @MaxNumberOfDomains = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 1
	
	if @@Rowcount = 1
	begin
		if @DomainsCount >= @MaxNumberOfDomains return 5
	end else
	begin
		SELECT @MaxNumberOfDomains = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 1	
		if @@ROWCOUNT = 1
		begin
			if @DomainsCount >= @MaxNumberOfDomains return 5
		end else
		begin
			if @DomainsCount >= 100 return 5
		end		
	end

	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE Softnet_Owners SET DomainCounter = DomainCounter + 1 WHERE OwnerId = @OwnerId
						
			if DATALENGTH(@DomainName) = 0
				SELECT @DomainName = 'DMN_' + LTRIM(STR(DomainCounter)) FROM Softnet_Owners WHERE OwnerId = @OwnerId
		
			INSERT INTO Softnet_Domains(OwnerId, DomainName, LastUsedDate)
			VALUES(@OwnerId, @DomainName, GETDATE())	
			
			SET @DomainId = SCOPE_IDENTITY()
			
			INSERT INTO Softnet_Users(DomainId, UserKind, UserName, Dedicated, [Enabled])
			VALUES(@DomainId, 1, 'Owner', 0, 1)

			INSERT INTO Softnet_Users(DomainId, UserKind, UserName, Dedicated, [Enabled])
			VALUES(@DomainId, 4, 'Guest', 0, 1)
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH				
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateGuestClient]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateGuestClient]
	@CreatorId		BIGINT,
	@UserId			BIGINT,
	@SiteId			BIGINT,
	@ClientKey		VARCHAR(32),
	@ClientId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @ServiceOwnerId BIGINT, @UserKind INT
	
	SELECT @ServiceOwnerId = D.OwnerId FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE S.SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -2

	SELECT @UserKind FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -2

	if @UserKind <> 4
		return -3

	DECLARE @GuestClientsTotal INT, @MaxNumberOfClients INT
	
	SELECT @GuestClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @ServiceOwnerId AND U.UserKind = 4
	
	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @ServiceOwnerId AND HP.ParamIndex = 9
	
	if @@ROWCOUNT = 1
	begin
		if @GuestClientsTotal >= @MaxNumberOfClients return 5
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 9	
		if @@ROWCOUNT = 1
		begin
			if @GuestClientsTotal >= @MaxNumberOfClients return 5
		end else
		begin
			if @GuestClientsTotal >= 3000 return 5
		end		
	end

	DECLARE @PrivateClientsTotal INT, @ContactClientsTotal INT
	
	SELECT @PrivateClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @CreatorId AND (U.UserKind = 1 OR U.UserKind = 2)

	SELECT @ContactClientsTotal = COUNT(*) FROM Softnet_Clients C
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Contacts CN ON U.ContactId = CN.ContactId
	WHERE CN.ConsumerId = @CreatorId AND U.UserKind = 3
	
	SELECT @GuestClientsTotal = COUNT(*) FROM Softnet_GuestCreators
	WHERE CreatorId = @CreatorId

	SELECT @MaxNumberOfClients = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @CreatorId AND HP.ParamIndex = 10

	IF @@ROWCOUNT = 1
	begin
		IF (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
	end else
	begin
		SELECT @MaxNumberOfClients = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 10	
		if @@ROWCOUNT = 1
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= @MaxNumberOfClients return 6
		end else
		begin
			if (@PrivateClientsTotal + @ContactClientsTotal + @GuestClientsTotal) >= 4000 return 6
		end		
	end

	INSERT INTO Softnet_Clients(ClientKey, SiteId, UserId)
	VALUES(@ClientKey, @SiteId, @UserId)
	SET @ClientId = SCOPE_IDENTITY()	
	
	INSERT INTO Softnet_GuestCreators(ClientId, CreatorId)
	VALUES(@ClientId, @CreatorId)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreatePrivateUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreatePrivateUser] 
	@DomainId			BIGINT,
	@UserName			NVARCHAR(256),
	@DedicatedStatus	BIT,
	@UserId				BIGINT OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;

	DECLARE @OwnerID BIGINT

	SELECT @OwnerID = OwnerID FROM Softnet_Domains WHERE DomainID = @DomainId
	if @@ROWCOUNT = 0
		return -2

	DECLARE @UsersTotal INT, @MaxNumberOfUsers INT
	
	SELECT @UsersTotal = COUNT(*) FROM Softnet_Users U
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId AND U.UserKind != 4
	
	SELECT @MaxNumberOfUsers = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 5
	
	if @@ROWCOUNT = 1
	begin
		if @UsersTotal >= @MaxNumberOfUsers return 5
	end else
	begin
		SELECT @MaxNumberOfUsers = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 5	
		if @@ROWCOUNT = 1
		begin
			if @UsersTotal >= @MaxNumberOfUsers return 5
		end else
		begin
			if @UsersTotal >= 1000 return 5
		end		
	end

	SELECT @UsersTotal = COUNT(*) FROM Softnet_Users	
	WHERE DomainId = @DomainId AND UserKind != 4
	
	SELECT @MaxNumberOfUsers = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 6
	
	if @@ROWCOUNT = 1
	begin
		if @UsersTotal >= @MaxNumberOfUsers return 6
	end else
	begin
		SELECT @MaxNumberOfUsers = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 6	
		if @@ROWCOUNT = 1
		begin
			if @UsersTotal >= @MaxNumberOfUsers return 5
		end else
		begin
			if @UsersTotal >= 100 return 5
		end		
	end

	INSERT INTO Softnet_Users(DomainId, ContactId, UserName, UserKind, Dedicated, [Enabled])
	VALUES(@DomainId, NULL, @UserName, 2, @DedicatedStatus, 1)	

	SET @UserId = SCOPE_IDENTITY()	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_CreateSite]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_CreateSite]
	@DomainId		BIGINT,
	@SiteKey		VARCHAR(32),
	@Description	NVARCHAR(256),
	@SiteId			BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerID = OwnerID FROM Softnet_Domains WHERE DomainID = @DomainId
	if @@ROWCOUNT = 0
		return -2

	DECLARE @SitesCount INT, @MaxNumberOfSites INT
	
	SELECT @SitesCount = COUNT(*) FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId
	
	SELECT @MaxNumberOfSites = ParamValue FROM Softnet_HPlanParams HP
	INNER JOIN Softnet_Owners O ON HP.PlanId = O.PlanId
	WHERE O.OwnerId = @OwnerId AND HP.ParamIndex = 2
	
	if @@Rowcount = 1
	begin
		if @SitesCount >= @MaxNumberOfSites return 5
	end else
	begin
		SELECT @MaxNumberOfSites = DefaultValue FROM Softnet_HPlanParamIndexes WHERE ParamIndex = 2	
		if @@ROWCOUNT = 1
		begin
			if @SitesCount >= @MaxNumberOfSites return 5
		end else
		begin
			if @SitesCount >= 200 return 5
		end		
	end

	UPDATE Softnet_Domains SET SiteCounter = SiteCounter + 1 WHERE OwnerId = @OwnerId AND DomainId = @DomainId
	if @@ROWCOUNT = 0
		return -2
						
	if DATALENGTH(@Description) = 0
	begin
		SELECT @Description = 'SITE_' + LTRIM(STR(SiteCounter)) FROM Softnet_Domains WHERE DomainId = @DomainId
		if @@ROWCOUNT = 0
			return -2
	end

	DECLARE @ServiceId	BIGINT

	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO Softnet_Sites(SiteUid, DomainId, SiteKind, SiteKey, [Description], ServiceCounter)
			VALUES(NEWID(), @DomainId, 1, @SiteKey, @Description, 1)	
			SET @SiteId = SCOPE_IDENTITY()			
				
			INSERT INTO Softnet_Services(ServiceUid, SiteId, HostName, Salt, SaltedPassword, CreatedDate)
			VALUES(NEWID(), @SiteId, 'Service1', NULL, NULL, GETDATE())
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH				
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteClient]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteClient]
	@ClientId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
		DELETE Softnet_EventSubscriptions WHERE ClientId = @ClientId
		DELETE Softnet_PEventInstances WHERE ClientId = @ClientId
		DELETE Softnet_GuestParams WHERE ClientId = @ClientId
		DELETE Softnet_GuestCreators WHERE ClientId = @ClientId
		DELETE Softnet_Clients WHERE ClientId = @ClientId
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteContact]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteContact]
	@ContactId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION		
		DELETE EI FROM Softnet_PEventInstances EI 
		INNER JOIN Softnet_Clients C ON EI.ClientId = C.ClientId 
		INNER JOIN Softnet_Users U ON C.UserId = U.UserId
		WHERE U.ContactId = @ContactId
			
		DELETE ES FROM Softnet_EventSubscriptions ES 
		INNER JOIN Softnet_Clients C ON ES.ClientId = C.ClientId 
		INNER JOIN Softnet_Users U ON C.UserId = U.UserId
		WHERE U.ContactId = @ContactId
		
		DELETE C FROM Softnet_Clients C 
		INNER JOIN Softnet_Users U ON C.UserId = U.UserId
		WHERE U.ContactId = @ContactId
		
		DELETE UR FROM Softnet_UsersInRoles UR
		INNER JOIN Softnet_Users U ON UR.UserId = U.UserId
		WHERE U.ContactId = @ContactId

		DELETE SU FROM Softnet_SiteUsers SU
		INNER JOIN Softnet_Users U ON SU.UserId = U.UserId
		WHERE U.ContactId = @ContactId		
		
		DELETE Softnet_Users WHERE ContactId = @ContactId
		
		DECLARE @OwnerId BIGINT, @PartnerId BIGINT
		SELECT @OwnerId = OwnerId, @PartnerId = ConsumerId FROM Softnet_Contacts WHERE ContactId = @ContactId
		if @@ROWCOUNT = 1 AND @PartnerId IS NOT NULL
		begin
			UPDATE Softnet_Contacts SET [Status] = 1
			WHERE OwnerId = @PartnerId AND ConsumerId = @OwnerId
		end
		
		DELETE Softnet_Contacts WHERE ContactId = @ContactId
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH			
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteDomain]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteDomain]
	@DomainId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @SiteIdentities TABLE(SiteId BIGINT)
	
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE SU FROM Softnet_SiteUsers SU 
			INNER JOIN Softnet_Users U ON SU.UserId = U.UserId
			WHERE U.DomainId = @DomainId

			DELETE UR FROM Softnet_UsersInRoles UR 
			INNER JOIN Softnet_Users U ON UR.UserId = U.UserId
			WHERE U.DomainId = @DomainId
					
			INSERT INTO @SiteIdentities
			SELECT SiteId FROM Softnet_Sites WHERE DomainId = @DomainId
		
			DELETE Softnet_SiteUsers WHERE SiteId IN (SELECT SiteId FROM @SiteIdentities)
			DELETE UR FROM Softnet_UsersInRoles UR INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId WHERE R.SiteId IN (SELECT SiteId FROM @SiteIdentities)
		
			DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId
			WHERE R.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE UR FROM Softnet_UsersInRoles UR INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId
			WHERE R.SiteId IN (SELECT SiteId FROM @SiteIdentities)			

			DELETE Softnet_Roles WHERE SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE AE FROM Softnet_AcknowledgedEvents AE INNER JOIN Softnet_Services S ON AE.ServiceId = S.ServiceId
			WHERE S.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE Softnet_Services WHERE SiteId IN (SELECT SiteId FROM @SiteIdentities)
					
			DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId
			WHERE E.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Clients C ON ES.ClientId = C.ClientId
			WHERE C.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE ES FROM Softnet_EventSubscriptions ES 
			INNER JOIN Softnet_Clients C ON ES.ClientId = C.ClientId
			INNER JOIN Softnet_Users U ON C.UserId = U.UserId
			WHERE U.DomainId = @DomainId

			DELETE GP FROM Softnet_GuestParams GP
			INNER JOIN Softnet_Clients C ON GP.ClientId = C.ClientId
			WHERE C.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE GC FROM Softnet_GuestCreators GC
			INNER JOIN Softnet_Clients C ON GC.ClientId = C.ClientId
			WHERE C.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE Softnet_Clients WHERE SiteId IN (SELECT SiteId FROM @SiteIdentities)
			
			DELETE C FROM Softnet_Clients C INNER JOIN Softnet_Users U ON C.UserId = U.UserId
			WHERE U.DomainId = @DomainId
			
			DELETE Softnet_Users WHERE DomainId = @DomainId

			DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId
			WHERE E.SiteId IN (SELECT SiteId FROM @SiteIdentities)

			DELETE RE FROM Softnet_REventInstances RE 
			INNER JOIN Softnet_Events E ON RE.EventId = E.EventId WHERE E.SiteId IN (SELECT SiteId FROM @SiteIdentities)
			
			DELETE QE FROM Softnet_QEventInstances QE 
			INNER JOIN Softnet_Events E ON QE.EventId = E.EventId WHERE E.SiteId IN (SELECT SiteId FROM @SiteIdentities)
			
			DELETE PE FROM Softnet_PEventInstances PE 
			INNER JOIN Softnet_Events E ON PE.EventId = E.EventId WHERE E.SiteId IN (SELECT SiteId FROM @SiteIdentities)
			
			DELETE Softnet_Events WHERE SiteId IN (SELECT SiteId FROM @SiteIdentities)
			
			DELETE Softnet_Sites WHERE DomainId = @DomainId
			
			DELETE Softnet_Domains WHERE DomainId = @DomainId			
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteReceivedInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteReceivedInvitation] 
	@AccountName	NVARCHAR(256),
	@InvitingId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2

	DELETE Softnet_ContactInvitations WHERE OwnerId = @InvitingId AND TargetId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteSentInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteSentInvitation]
	@SelectedId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_ContactInvitations WHERE TargetId = @SelectedId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteService]
	@SiteId		BIGINT,
	@ServiceId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	if NOT EXISTS(SELECT 1 FROM Softnet_Sites WHERE SiteId = @SiteId AND SiteKind = 2)
		return -1
	if NOT EXISTS(SELECT 1 FROM Softnet_Services WHERE ServiceId = @ServiceId AND SiteId = @SiteId)
		return -1
		
	DELETE Softnet_AcknowledgedEvents WHERE ServiceId = @ServiceId
	DELETE Softnet_Services WHERE ServiceId = @ServiceId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteSite]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteSite]
	@SiteId			BIGINT
AS
BEGIN
	SET NOCOUNT ON;	
	
	if NOT EXISTS(SELECT 1 FROM Softnet_Sites WHERE SiteId = @SiteId)
		return 0	
	
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE AE FROM Softnet_AcknowledgedEvents AE INNER JOIN Softnet_Services S ON AE.ServiceId = S.ServiceId WHERE S.SiteId = @SiteId
			DELETE Softnet_Services WHERE SiteId = @SiteId			
			DELETE Softnet_SiteUsers WHERE SiteId = @SiteId

			DELETE UR FROM Softnet_UsersInRoles UR INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId WHERE R.SiteId = @SiteId
			DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId WHERE R.SiteId = @SiteId
			DELETE Softnet_Roles WHERE SiteId = @SiteId

			DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Clients C ON ES.ClientId = C.ClientId WHERE C.SiteId = @SiteId
			
			DELETE GP FROM Softnet_GuestParams GP
			INNER JOIN Softnet_Clients C ON GP.ClientId = C.ClientId
			WHERE C.SiteId = @SiteId

			DELETE GC FROM Softnet_GuestCreators GC
			INNER JOIN Softnet_Clients C ON GC.ClientId = C.ClientId
			WHERE C.SiteId = @SiteId
			
			DELETE Softnet_Clients WHERE SiteId = @SiteId			
			
			if EXISTS(SELECT 1 FROM Softnet_Events WHERE SiteId = @SiteId)
			begin	
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE RE FROM Softnet_REventInstances RE INNER JOIN Softnet_Events E ON RE.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE QE FROM Softnet_QEventInstances QE INNER JOIN Softnet_Events E ON QE.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE PE FROM Softnet_PEventInstances PE INNER JOIN Softnet_Events E ON PE.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE Softnet_Events WHERE SiteId = @SiteId
			end
			
			DELETE Softnet_Sites WHERE SiteId = @SiteId
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DeleteUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DeleteUser]
	@UserId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
		DELETE Softnet_PEventInstances WHERE ClientId IN (SELECT ClientId FROM Softnet_Clients WHERE UserId = @UserId) 
		DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Clients C ON ES.ClientId = C.ClientId WHERE C.UserId = @UserId	
		DELETE Softnet_Clients WHERE UserId = @UserId
		DELETE Softnet_UsersInRoles WHERE UserId = @UserId
		DELETE Softnet_SiteUsers WHERE UserId = @UserId
		DELETE Softnet_Users WHERE UserId = @UserId
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DenyGuest]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DenyGuest]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET GuestAllowed = 0 WHERE SiteId = @SiteId AND GuestSupported = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DenyImplicitUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DenyImplicitUsers]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET ImplicitUsersAllowed = 0 WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DisableService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DisableService]
	@ServiceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Services SET [Enabled] = 0 WHERE ServiceId = @ServiceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_DisableSite]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_DisableSite]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET [Enabled] = 0 WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_EnableService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_EnableService]
	@ServiceId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Services SET [Enabled] = 1 WHERE ServiceId = @ServiceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_EnableSite]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_EnableSite]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET [Enabled] = 1 WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetClientPingPeriod]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetClientPingPeriod]
	@ClientId		BIGINT,
	@PingPeriod		INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @PingPeriod = PingPeriod FROM Softnet_Clients WHERE ClientId = @ClientId
	IF @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetContactData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetContactData]
	@AccountName		NVARCHAR(256),
	@ContactId			BIGINT,
	@ContactName		NVARCHAR(256) OUTPUT,
	@UserDefaultName	NVARCHAR(256) OUTPUT,
	@Status				INT OUTPUT,
	@PartnerName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @PartnerId BIGINT
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2

	SELECT @ContactName = ContactName, @UserDefaultName = UserDefaultName, @PartnerId = ConsumerId, @Status = [Status]
	FROM Softnet_Contacts WHERE ContactId = @ContactId
	if @@Rowcount = 0
		return -1

	if @Status = 2
		return 0
	
	SELECT @PartnerName = FullName FROM Softnet_Owners WHERE OwnerId = @PartnerId
	if @@ROWCOUNT = 0
		return -5
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetContactDomainDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetContactDomainDataset]
	@AccountName	NVARCHAR(256),
	@ContactId		BIGINT,
	@DomainId		BIGINT,
	@ConsumerId		BIGINT OUTPUT,
	@ContactName	NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT @ConsumerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	

	DECLARE @ProviderId BIGINT	
	SELECT @ProviderId = ConsumerId, @ContactName = ContactName FROM Softnet_Contacts 
	WHERE ContactId = @ContactId AND OwnerId = @ConsumerId AND [Status] = 0
	if @@Rowcount = 0
		return -1	

	DECLARE @PartnerAuthority INT, @PartnerEnabled BIT	
	
	SELECT @PartnerAuthority = Authority, @PartnerEnabled = [Enabled] FROM Softnet_Owners
	WHERE OwnerId = @ProviderId
	if @@Rowcount = 0
		return -1	
	
	if @PartnerAuthority = 0 OR @PartnerEnabled = 0
		return 1
	
	DECLARE @TwinContactId BIGINT
	SELECT @TwinContactId = ContactId FROM Softnet_Contacts WHERE OwnerId = @ProviderId AND ConsumerId = @ConsumerId	
	if @@Rowcount = 0 
		return -1
		
	SELECT @DomainName = DomainName FROM Softnet_Domains WHERE DomainId = @DomainId AND OwnerId = @ProviderId
	if @@Rowcount = 0 
		return -1	
	
	DECLARE @Users TABLE(UserId BIGINT, UserName NVARCHAR(256), Dedicated BIT, [Enabled] BIT)
	
	INSERT INTO @Users(UserId, UserName, Dedicated, [Enabled])
	SELECT UserId, UserName, Dedicated, [Enabled] FROM Softnet_Users 
	WHERE ContactId = @TwinContactId AND DomainId = @DomainId AND UserKind = 3 ORDER BY UserName ASC

	DECLARE @SiteIdList TABLE(SiteId BIGINT)	

	if EXISTS(SELECT 1 FROM @Users)
	begin
		INSERT INTO @SiteIdList(SiteId)
		SELECT DISTINCT R.SiteId FROM @Users U 
		INNER JOIN Softnet_UsersInRoles UR ON UR.UserId = U.UserId
		INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId

		INSERT INTO @SiteIdList(SiteId)
		SELECT DISTINCT SU.SiteId FROM @Users U 
		INNER JOIN Softnet_SiteUsers SU ON SU.UserId = U.UserId	
		
		if EXISTS(SELECT 1 FROM @Users WHERE Dedicated = 0)
		begin
			INSERT INTO @SiteIdList(SiteId)
			SELECT SiteId FROM Softnet_Sites 
			WHERE DomainId = @DomainId AND Structured = 1 AND RolesSupported = 1 AND DefaultRoleId IS NOT NULL AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)

			INSERT INTO @SiteIdList(SiteId)
			SELECT SiteId FROM Softnet_Sites 
			WHERE DomainId = @DomainId AND Structured = 1 AND RolesSupported = 0 AND ImplicitUsersAllowed = 1 AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)
		end		
	end
	
	INSERT INTO @SiteIdList(SiteId)
	SELECT SiteId FROM Softnet_Sites 
	WHERE DomainId = @DomainId AND Structured = 1 AND GuestSupported = 1 AND GuestAllowed = 1 AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]	
	FROM Softnet_Sites WHERE DomainId = @DomainId AND SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY SiteId DESC
	
	SELECT ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod 
	FROM Softnet_Services WHERE SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY HostName ASC
	
	SELECT UserId, UserName, 3 AS UserKind, Dedicated, [Enabled] FROM @Users
	UNION
	SELECT UserId, UserName, UserKind, Dedicated, [Enabled] FROM Softnet_Users 
	WHERE DomainId = @DomainId AND UserKind = 4
	
	SELECT RoleId, RoleName, SiteId, Idx 
	FROM Softnet_Roles 
	WHERE SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY SiteId, Idx ASC
	
	SELECT UserId, RoleId 
	FROM Softnet_UsersInRoles 
	WHERE UserId IN (SELECT UserId FROM @Users) 
	
	SELECT UserId, SiteId 
	FROM Softnet_SiteUsers
	WHERE UserId IN (SELECT UserId FROM @Users) 
	
	SELECT ClientId, SiteId, UserId, ClientKey, ServiceType, ContractAuthor, ClientDescription, PingPeriod 
	FROM Softnet_Clients 
	WHERE UserId IN (SELECT UserId FROM @Users) ORDER BY ClientId DESC
	
	SELECT C.ClientId, C.SiteId, C.UserId, ClientKey, ServiceType, ContractAuthor, ClientDescription, PingPeriod 
	FROM Softnet_Clients C 	
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	WHERE U.DomainId = @DomainId AND U.UserKind = 4 AND GC.CreatorId = @ConsumerId ORDER BY C.ClientId DESC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetContactListData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetContactListData]
	@AccountName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2
				
	SELECT ContactId, ConsumerId, ContactName, [Status]
	FROM Softnet_Contacts 
	WHERE OwnerId = @OwnerId
	
	SELECT O.OwnerId, O.Authority, O.[Enabled] FROM Softnet_Contacts C 
	INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
	WHERE C.OwnerId = @OwnerId

	SELECT O.OwnerId, O.FullName FROM Softnet_ContactInvitations CI 
	INNER JOIN Softnet_Owners O ON CI.TargetId = O.OwnerId
	WHERE CI.OwnerId = @OwnerId	ORDER BY O.FullName ASC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetContactListData2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetContactListData2] 
	@AccountName	NVARCHAR(256)	
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2
		
	SELECT ContactId, ConsumerId, ContactName, UserDefaultName, [Status]
	FROM Softnet_Contacts 
	WHERE OwnerId = @OwnerId

	SELECT O.OwnerId, O.Authority, O.[Enabled], O.FullName FROM Softnet_Contacts C 
	INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
	WHERE C.OwnerId = @OwnerId
	
	SELECT O.OwnerId, O.FullName FROM Softnet_ContactInvitations CI 
	INNER JOIN Softnet_Owners O ON CI.TargetId = O.OwnerId
	WHERE CI.OwnerId = @OwnerId	ORDER BY O.FullName ASC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetDomainDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetDomainDataset]
	@AccountName	NVARCHAR(256),
	@DomainId		BIGINT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;		
	DECLARE @OwnerId BIGINT
	
	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
		
	SELECT @DomainName = DomainName FROM Softnet_Domains 
	WHERE DomainId = @DomainId AND OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1
		
	UPDATE Softnet_Domains SET LastUsedDate = GETDATE() WHERE DomainId = @DomainId
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites 
	WHERE DomainId = @DomainId ORDER BY SiteId DESC

	SELECT S.ServiceId, S.SiteId, S.ServiceType, S.ContractAuthor, S.[Version], S.HostName, S.SSHash, S.[Enabled], S.PingPeriod 
	FROM Softnet_Services S 
	INNER JOIN Softnet_Sites Sites ON S.SiteId = Sites.SiteId 
	WHERE Sites.DomainId = @DomainId ORDER BY HostName ASC

	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled] 
	FROM Softnet_Users
	WHERE DomainId = @DomainId ORDER BY UserName ASC
	
	SELECT ContactId, ContactName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId
	
	SELECT R.RoleId, R.RoleName, R.SiteId, R.Idx 
	FROM Softnet_Roles R 
	INNER JOIN Softnet_Sites S ON R.SiteId = S.SiteId 
	WHERE S.DomainId = @DomainId ORDER BY R.SiteId, R.Idx
	
	SELECT UR.UserId, UR.RoleId 
	FROM Softnet_UsersInRoles UR 
	INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId
	INNER JOIN Softnet_Sites S ON R.SiteId = S.SiteId
	WHERE S.DomainId = @DomainId
	
	SELECT SU.UserId, SU.SiteId 
	FROM Softnet_SiteUsers SU 
	INNER JOIN Softnet_Sites S ON SU.SiteId = S.SiteId
	WHERE S.DomainId = @DomainId
	
	SELECT C.UserId, COUNT(*) AS Clients
	FROM Softnet_Clients C 
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId	
	WHERE U.DomainId = @DomainId GROUP BY C.UserId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetDomainItem]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetDomainItem]
	@AccountName	NVARCHAR(256),
	@DomainId		BIGINT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
	
	SELECT @DomainName = DomainName FROM Softnet_Domains 
	WHERE DomainId = @DomainId AND OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetDomainList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetDomainList]
	@AccountName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
		
	SELECT DomainId, DomainName FROM Softnet_Domains 
	WHERE OwnerId = @OwnerId ORDER BY DomainName ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetOwnerName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetOwnerName]
	@AccountName	NVARCHAR(256),
	@OwnerName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;		
	SELECT @OwnerName = O.FullName
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.LoweredUserName = LOWER(@AccountName)
	if @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetReceivedInvitationCount]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetReceivedInvitationCount]
	@AccountName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @InvitationCount INT
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return 0

	SELECT @InvitationCount = COUNT(*) FROM Softnet_ContactInvitations WHERE TargetId = @OwnerId		
	return @InvitationCount;
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetReceivedInvitations]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetReceivedInvitations]
	@AccountName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2

	SELECT O.OwnerId, O.FullName 
	FROM Softnet_ContactInvitations CI INNER JOIN Softnet_Owners O ON CI.OwnerId = O.OwnerId
	WHERE CI.TargetId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetRecentlyUsedContacts]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetRecentlyUsedContacts]
	@AccountName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @OwnerId BIGINT
	
	SELECT @OwnerId = OwnerId FROM Softnet_Owners O INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId 
	WHERE U.UserName = @AccountName
	if @@ROWCOUNT = 0
		return	

	DECLARE @SelectedContacts TABLE(ContactId BIGINT, ConsumerId BIGINT, ContactName NVARCHAR(256))

	INSERT INTO @SelectedContacts(ContactId, ConsumerId, ContactName)
	SELECT TOP 10 ContactId, ConsumerId, ContactName 
	FROM Softnet_Contacts 
	WHERE OwnerId = @OwnerId AND [Status] = 0 ORDER BY LastUsedDate DESC

	SELECT ContactId, ConsumerId, ContactName FROM @SelectedContacts

	SELECT ContactId, ContactName, [Status] 
	FROM Softnet_Contacts 
	WHERE OwnerId = @OwnerId AND [Status] >= 1
	ORDER BY ContactName ASC	

	SELECT OwnerId, Authority FROM Softnet_Owners		
	WHERE OwnerId IN (SELECT ConsumerId FROM @SelectedContacts WHERE ConsumerId IS NOT NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetRecentlyUsedDomains]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetRecentlyUsedDomains]
	@AccountName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
	
	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId 
	WHERE U.UserName = @AccountName
	if @@ROWCOUNT = 0
		return
		
	SELECT TOP 10 DomainId, DomainName 
	FROM Softnet_Domains WHERE OwnerId = @OwnerId
	ORDER BY LastUsedDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetRSiteClientsDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetRSiteClientsDataset]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,	
	@OwnerId		BIGINT OUTPUT,
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@GClientCount	INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		@OwnerId		= O.OwnerId,
		@DomainName		= D.DomainName,
		@DomainId		= D.DomainId
	FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE SiteId = @SiteId AND AU.UserName = @AccountName
	if @@Rowcount = 0
		return -1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceUid, ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY HostName ASC
	
	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled]
	FROM Softnet_Users 	
	WHERE DomainId = @DomainId ORDER BY UserName ASC
	
	SELECT ContactId, ContactName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId
	
	SELECT RoleId, RoleName, SiteId, Idx 
	FROM Softnet_Roles WHERE SiteId = @SiteId ORDER BY Idx
	
	SELECT UR.UserId, UR.RoleId 
	FROM Softnet_UsersInRoles UR 
	INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId	
	WHERE R.SiteId = @SiteId	
	
	SELECT ClientId, ClientKey, C.UserId, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	WHERE SiteId = @SiteId AND UserKind < 4 ORDER BY ClientId DESC
	
	SELECT C.ClientId, ClientKey, C.UserId, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C 	
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	WHERE SiteId = @SiteId AND GC.CreatorId = @OwnerId ORDER BY C.ClientId DESC
	
	SELECT @GClientCount = COUNT(*) FROM Softnet_Clients C 
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	WHERE SiteId = @SiteId AND UserKind = 4
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetRSiteConfigDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetRSiteConfigDataset]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,	
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
	
	SELECT 		
		@OwnerId	= O.OwnerId,
		@DomainName	= D.DomainName,
		@DomainId	= D.DomainId
	FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE SiteId = @SiteId AND AU.UserName = @AccountName
	if @@Rowcount = 0
		return -1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceUid, ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY HostName ASC
	
	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled]
	FROM Softnet_Users 
	WHERE DomainId = @DomainId ORDER BY UserName ASC
	
	SELECT ContactId, ContactName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId
		
	SELECT RoleId, RoleName, SiteId, Idx 
	FROM Softnet_Roles WHERE SiteId = @SiteId ORDER BY Idx
	
	SELECT UR.UserId, UR.RoleId 
	FROM Softnet_UsersInRoles UR 
	INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId	
	WHERE R.SiteId = @SiteId
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSharedDomainDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSharedDomainDataset]
	@AccountName		NVARCHAR(256),
	@ContactId			BIGINT,
	@DomainId			BIGINT,
	@DomainName			NVARCHAR(256) OUTPUT,
	@ContactName		NVARCHAR(256) OUTPUT,
	@ContactStatus		INT OUTPUT,
	@PartnerAuthority	INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @ProviderId BIGINT

	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	
		
	SELECT @ContactName = ContactName, @ProviderId = ConsumerId, @ContactStatus = [Status] FROM Softnet_Contacts 
	WHERE ContactId = @ContactId AND OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1	
		
	SELECT @DomainName = DomainName FROM Softnet_Domains WHERE DomainId = @DomainId AND OwnerId = @OwnerId
	if @@Rowcount = 0 
		return -1		
	
	DECLARE @Users TABLE(UserId BIGINT, UserName NVARCHAR(256), Dedicated BIT, [Enabled] BIT)
	
	INSERT INTO @Users(UserId, UserName, Dedicated, [Enabled])
	SELECT UserId, UserName, Dedicated, [Enabled] FROM Softnet_Users 
	WHERE DomainId = @DomainId AND UserKind = 3 AND ContactId = @ContactId ORDER BY UserName ASC
	
	DECLARE @SiteIdList TABLE(SiteId BIGINT)	

	if EXISTS(SELECT 1 FROM @Users)
	begin
		INSERT INTO @SiteIdList(SiteId)
		SELECT DISTINCT R.SiteId FROM @Users U 
		INNER JOIN Softnet_UsersInRoles UR ON UR.UserId = U.UserId
		INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId

		INSERT INTO @SiteIdList(SiteId)
		SELECT DISTINCT SU.SiteId FROM @Users U 
		INNER JOIN Softnet_SiteUsers SU ON SU.UserId = U.UserId	
		
		if EXISTS(SELECT 1 FROM @Users WHERE Dedicated = 0)
		begin
			INSERT INTO @SiteIdList(SiteId)
			SELECT SiteId FROM Softnet_Sites 
			WHERE DomainId = @DomainId AND Structured = 1 AND RolesSupported = 1 AND DefaultRoleId IS NOT NULL AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)

			INSERT INTO @SiteIdList(SiteId)
			SELECT SiteId FROM Softnet_Sites 
			WHERE DomainId = @DomainId AND Structured = 1 AND RolesSupported = 0 AND ImplicitUsersAllowed = 1 AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)
		end		
	end
	
	INSERT INTO @SiteIdList(SiteId)
	SELECT SiteId FROM Softnet_Sites 
	WHERE DomainId = @DomainId AND Structured = 1 AND GuestSupported = 1 AND GuestAllowed = 1 AND SiteId NOT IN (SELECT SiteId FROM @SiteIdList)
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]	
	FROM Softnet_Sites WHERE DomainId = @DomainId AND SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY SiteId DESC
	
	SELECT ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY HostName ASC
	
	SELECT UserId, UserName, 3 AS UserKind, Dedicated, [Enabled] FROM @Users
	UNION
	SELECT UserId, UserName, 4, Dedicated, [Enabled] FROM Softnet_Users
	WHERE DomainId = @DomainId AND UserKind = 4
	
	SELECT RoleId, RoleName, SiteId, Idx 
	FROM Softnet_Roles 
	WHERE SiteId IN (SELECT SiteId FROM @SiteIdList) ORDER BY SiteId, Idx ASC
	
	SELECT UserId, RoleId 
	FROM Softnet_UsersInRoles 
	WHERE UserId IN (SELECT UserId FROM @Users) 
	
	SELECT UserId, SiteId 
	FROM Softnet_SiteUsers
	WHERE UserId IN (SELECT UserId FROM @Users) 
	
	SELECT ClientId, SiteId, UserId, ClientKey, ServiceType, ContractAuthor, ClientDescription, PingPeriod 
	FROM Softnet_Clients 
	WHERE UserId IN (SELECT UserId FROM @Users) ORDER BY ClientId DESC
	
	if @ContactStatus < 2
	begin
		if @ProviderId IS NULL
			return -5
	
		SELECT @PartnerAuthority = Authority FROM Softnet_Owners WHERE OwnerId = @ProviderId
	
		SELECT C.ClientId, C.SiteId, ClientKey, C.ServiceType, ContractAuthor, ClientDescription, PingPeriod 
		FROM Softnet_Clients C 			
		INNER JOIN Softnet_Users U ON C.UserId = U.UserId
		INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
		WHERE U.DomainId = @DomainId AND U.UserKind = 4 AND C.SiteId IN (SELECT SiteId FROM @SiteIdList) AND GC.CreatorId = @ProviderId
		ORDER BY C.ClientId DESC
	end
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSharedDomainList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSharedDomainList]
	@AccountName		NVARCHAR(256),
	@ContactId			BIGINT,
	@MeProvider			BIT,
	@ContactName		NVARCHAR(256) OUTPUT,
	@ContactStatus		INT OUTPUT,	
	@PartnerAuthority	INT OUTPUT,
	@PartnerEnabled		BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @MeEnabled BIT, @ProviderId BIGINT
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2
		
	SELECT @ContactName = ContactName, @ProviderId = ConsumerId, @ContactStatus = [Status]
	FROM Softnet_Contacts WHERE ContactId = @ContactId AND OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1

	UPDATE Softnet_Contacts SET LastUsedDate = GETDATE() WHERE ContactId = @ContactId
	
	DECLARE @Domains TABLE(DomainId BIGINT, DomainName NVARCHAR(256))

	if @MeProvider = 1
	begin
		INSERT INTO @Domains(DomainId, DomainName)
		SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_UsersInRoles UR	 
		INNER JOIN Softnet_Users U ON UR.UserId = U.UserId
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
		WHERE C.ContactId = @ContactId
		
		INSERT INTO @Domains(DomainId, DomainName)
		SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Users U
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
		INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
		WHERE C.ContactId = @ContactId AND U.Dedicated = 0 AND S.Structured = 1 AND S.RolesSupported = 1 AND S.DefaultRoleId IS NOT NULL
	
		INSERT INTO @Domains(DomainId, DomainName)
		SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_SiteUsers SU	 
		INNER JOIN Softnet_Users U ON SU.UserId = U.UserId
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
		WHERE C.ContactId = @ContactId		
	
		INSERT INTO @Domains(DomainId, DomainName)
		SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Users U
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
		INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
		WHERE C.ContactId = @ContactId AND U.Dedicated = 0 AND S.Structured = 1 AND S.RolesSupported = 0 AND S.ImplicitUsersAllowed = 1
	
		INSERT INTO @Domains(DomainId, DomainName)
		SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Domains D
		INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
		WHERE D.OwnerId = @OwnerId AND S.Structured = 1 AND GuestSupported = 1 AND GuestAllowed = 1

		SELECT DISTINCT DomainId, DomainName FROM @Domains ORDER BY DomainName ASC
		DELETE @Domains
	end
	
	if @ContactStatus > 0
		return 0
	
	DECLARE @PartnerContactId BIGINT

	SELECT @PartnerContactId = ContactId, @PartnerAuthority = O.Authority, @PartnerEnabled = O.[Enabled] 
	FROM Softnet_Contacts C INNER JOIN Softnet_Owners O ON C.OwnerId = O.OwnerId
	WHERE C.OwnerId = @ProviderId AND C.ConsumerId = @OwnerId
	if @@ROWCOUNT = 0
		return -5
	
	if @PartnerAuthority = 0 OR @PartnerEnabled = 0
		return 0

	INSERT INTO @Domains(DomainId, DomainName)
	SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_UsersInRoles UR	 
	INNER JOIN Softnet_Users U ON UR.UserId = U.UserId
	INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE C.ContactId = @PartnerContactId

	INSERT INTO @Domains(DomainId, DomainName)
	SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Users U
	INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
	WHERE C.ContactId = @PartnerContactId AND U.Dedicated = 0 AND S.Structured = 1 AND S.RolesSupported = 1 AND S.DefaultRoleId IS NOT NULL
	
	INSERT INTO @Domains(DomainId, DomainName)
	SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_SiteUsers SU	 
	INNER JOIN Softnet_Users U ON SU.UserId = U.UserId
	INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	WHERE C.ContactId = @PartnerContactId	

	INSERT INTO @Domains(DomainId, DomainName)
	SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Users U
	INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
	INNER JOIN Softnet_Domains D ON U.DomainId = D.DomainId
	INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
	WHERE C.ContactId = @PartnerContactId AND U.Dedicated = 0 AND S.Structured = 1 AND S.RolesSupported = 0 AND S.ImplicitUsersAllowed = 1

	INSERT INTO @Domains(DomainId, DomainName)
	SELECT DISTINCT D.DomainId, D.DomainName FROM Softnet_Domains D
	INNER JOIN Softnet_Sites S ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @ProviderId AND S.Structured = 1 AND GuestSupported = 1 AND GuestAllowed = 1

	SELECT DISTINCT DomainId, DomainName FROM @Domains ORDER BY DomainName ASC		
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSiteAccessType]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSiteAccessType]
	@SiteId			BIGINT,
	@AccessType		INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Structured BIT, @RolesSupported BIT
	
	SELECT @Structured = Structured, @RolesSupported = RolesSupported 
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -1
	
	if @Structured = 0
		set @AccessType = -1
	else if @RolesSupported = 1
		set @AccessType = 1
	else 	
		set @AccessType = 0
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSiteConfigDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSiteConfigDataset]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,	
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	
		
	SELECT @DomainId = D.DomainId, @DomainName = D.DomainName
	FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId	
	WHERE S.SiteId = @SiteId AND D.OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceUid, ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled] 
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY ServiceId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSiteDeletingData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSiteDeletingData]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,
	@Description	NVARCHAR(256) OUTPUT,	
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@ServiceCount	INT OUTPUT,
	@ClientCount	INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
			
	SELECT @DomainId = D.DomainId, @DomainName = D.DomainName, @Description = S.[Description] 
	FROM Softnet_Sites S INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId	
	WHERE S.SiteId = @SiteId AND D.OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1
	
	SELECT @ServiceCount = COUNT(*) FROM Softnet_Services WHERE SiteId = @SiteId
	SELECT @ClientCount = COUNT(*) FROM Softnet_Clients WHERE SiteId = @SiteId

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSiteIdentitiesForContact]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSiteIdentitiesForContact]
	@ContactId		BIGINT,
	@PeerContactId	BIGINT OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;		

	SELECT S.SiteId FROM Softnet_Contacts C
	INNER JOIN Softnet_Users U ON C.ContactId = U.ContactId
	INNER JOIN Softnet_Domains D ON D.DomainId = U.DomainId
	INNER JOIN Softnet_Sites S ON D.DomainId = S.DomainId
	WHERE C.ContactId = @ContactId AND C.[Status] = 0 AND U.UserKind = 3

    DECLARE @OwnerId BIGINT, @PartnerId BIGINT
    SELECT @OwnerId = OwnerId, @PartnerId = ConsumerId FROM Softnet_Contacts WHERE ContactId = @ContactId
    if @@ROWCOUNT = 0 OR @PartnerId IS NULL
		return

	SELECT @PeerContactId = ContactId FROM Softnet_Contacts WHERE OwnerId = @PartnerId AND ConsumerId = @OwnerId
	if @@ROWCOUNT = 0
		return

	SELECT S.SiteId FROM Softnet_Contacts C
	INNER JOIN Softnet_Users U ON C.ContactId = U.ContactId
	INNER JOIN Softnet_Domains D ON D.DomainId = U.DomainId
	INNER JOIN Softnet_Sites S ON D.DomainId = S.DomainId
	WHERE C.ContactId = @PeerContactId AND C.[Status] = 0 AND U.UserKind = 3
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetSiteIdentitiesForDomain]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetSiteIdentitiesForDomain] 
	@DomainId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT SiteId FROM Softnet_Sites WHERE DomainId = @DomainId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetUserCreatingDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetUserCreatingDataset]
	@AccountName	NVARCHAR(256),
	@DomainId		BIGINT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = OwnerId FROM Softnet_Owners O 
	INNER JOIN aspnet_Users U ON O.ANUserId = U.UserId
	WHERE U.UserName = @AccountName
	if @@Rowcount = 0
		return -2
	
	SELECT @DomainName = DomainName 
	FROM Softnet_Domains D 
	WHERE DomainId = @DomainId AND OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1
		
	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled]
	FROM Softnet_Users 
	WHERE DomainId = @DomainId ORDER BY UserName ASC
	
	SELECT ContactId, ContactName, UserDefaultName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetUserIdentitiesForPeerContact]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetUserIdentitiesForPeerContact]
	@ConsumerId		BIGINT,
	@ProviderId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @UserIDs TABLE(SiteId BIGINT, UserId BIGINT)
	DECLARE @Users TABLE(UserId BIGINT, Dedicated BIT, DomainId BIGINT)

	INSERT INTO @Users(UserId, Dedicated, DomainId)
	SELECT U.UserId, U.Dedicated, D.DomainId FROM Softnet_Users U
	INNER JOIN Softnet_Contacts C ON C.ContactId = U.ContactId
	INNER JOIN Softnet_Domains D ON D.DomainId = U.DomainId
	WHERE C.ConsumerId = @ConsumerId AND C.OwnerId = @ProviderId AND U.UserKind = 3 AND U.[Enabled] = 1

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM Softnet_Sites S
	INNER JOIN @Users U ON U.DomainId = S.DomainId
	WHERE U.Dedicated = 0 AND S.RolesSupported = 1 AND S.DefaultRoleId IS NOT NULL

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM @Users U 
	JOIN Softnet_UsersInRoles UiR ON UiR.UserId = U.UserId
	JOIN Softnet_Roles R ON R.RoleId = UiR.RoleId
	JOIN Softnet_Sites S ON S.SiteId = R.SiteId
	WHERE S.DomainId = U.DomainId

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM Softnet_Sites S
	INNER JOIN @Users U ON U.DomainId = S.DomainId
	WHERE U.Dedicated = 0 AND S.RolesSupported = 0 AND S.ImplicitUsersAllowed = 1

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM @Users U 
	JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
	JOIN Softnet_Sites S ON S.SiteId = SU.SiteId
	WHERE S.DomainId = U.DomainId

	SELECT DISTINCT SiteId, UserId FROM @UserIDs
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetUSiteClientsDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetUSiteClientsDataset]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,	
	@OwnerId		BIGINT OUTPUT,
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@GClientCount	INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT
		@OwnerId		= O.OwnerId,
		@DomainName		= D.DomainName,
		@DomainId		= D.DomainId
	FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE SiteId = @SiteId AND AU.UserName = @AccountName
	if @@Rowcount = 0
		return -1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceUid, ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY HostName ASC
	
	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled] 
	FROM Softnet_Users		
	WHERE DomainId = @DomainId ORDER BY UserName ASC

	SELECT ContactId, ContactName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId

	SELECT UserId FROM Softnet_SiteUsers WHERE SiteId = @SiteId

	SELECT ClientId, ClientKey, C.UserId, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	WHERE SiteId = @SiteId AND UserKind < 4 ORDER BY ClientId DESC
	
	SELECT C.ClientId, ClientKey, C.UserId, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C 	
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	WHERE SiteId = @SiteId AND GC.CreatorId = @OwnerId ORDER BY C.ClientId DESC
	
	SELECT @GClientCount = COUNT(*) FROM Softnet_Clients C 
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	WHERE SiteId = @SiteId AND UserKind = 4
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_GetUSiteConfigDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_GetUSiteConfigDataset]
	@AccountName	NVARCHAR(256),
	@SiteId			BIGINT,	
	@DomainId		BIGINT OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
	
	SELECT 		
		@OwnerId		= O.OwnerId,
		@DomainName		= D.DomainName,
		@DomainId		= D.DomainId
	FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE SiteId = @SiteId AND AU.UserName = @AccountName
	if @@Rowcount = 0
		return -1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, 
	StatelessGuestSupported, SiteKey, RolesSupported, DefaultRoleId, ImplicitUsersAllowed, Structured, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceUid, ServiceId, SiteId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY HostName ASC
	
	SELECT UserId, UserKind, ContactId, UserName, Dedicated, [Enabled]
	FROM Softnet_Users U 
	WHERE DomainId = @DomainId ORDER BY U.UserName ASC
	
	SELECT ContactId, ContactName, [Status]
	FROM Softnet_Contacts WHERE OwnerId = @OwnerId
	
	SELECT UserId FROM Softnet_SiteUsers WHERE SiteId = @SiteId	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_IsEmailInUse]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_IsEmailInUse]
	@EMail	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT 1 FROM Softnet_Owners WHERE EMail = LOWER(@EMail))
		return 1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_RemoveDefaultRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_RemoveDefaultRole]
	@SiteId			BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE Softnet_Sites SET DefaultRoleId = NULL WHERE SiteId = @SiteId AND Structured = 1 AND DefaultRoleId IS NOT NULL
	if @@ROWCOUNT = 0
		return -1		
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_RemoveSiteUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_RemoveSiteUser]
	@SiteId		BIGINT,
	@UserId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_SiteUsers WHERE SiteId = @SiteId AND UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_RestoreContact]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_RestoreContact]
	@OwnerId		BIGINT,
	@SelectedUserId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerName NVARCHAR(256)
	
	SELECT @OwnerName = FullName FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@Rowcount = 0
		return
	
	DECLARE @SelectedUserName NVARCHAR(256)	
	SELECT @SelectedUserName = FullName FROM Softnet_Owners WHERE OwnerId = @SelectedUserId
	if @@ROWCOUNT = 0
		return
	
	BEGIN TRY
		BEGIN TRANSACTION
		if EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @SelectedUserId AND ConsumerId = @OwnerId)
		begin
			UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @SelectedUserId AND ConsumerId = @OwnerId
		
			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedUserId)
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@OwnerId, @SelectedUserId, @SelectedUserName, '', GETDATE(), 0)
			else
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedUserId
		
			DELETE Softnet_ContactInvitations WHERE OwnerId = @OwnerId AND TargetId = @SelectedUserId
			DELETE Softnet_ContactInvitations WHERE OwnerId = @SelectedUserId AND TargetId = @OwnerId

			COMMIT TRANSACTION
		end else
			ROLLBACK TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SendInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SendInvitation] 
	@OwnerId		BIGINT,
	@SelectedId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerName NVARCHAR(256)
	
	SELECT @OwnerName = FullName FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@Rowcount = 0
		return -2
	
	DECLARE @SelectedUserName NVARCHAR(256)	
	SELECT @SelectedUserName = FullName FROM Softnet_Owners WHERE OwnerId = @SelectedId
	if @@ROWCOUNT = 0
		return -1;
	
	BEGIN TRY
		BEGIN TRANSACTION

		if EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @SelectedId AND ConsumerId = @OwnerId)
		begin
			UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @SelectedId AND ConsumerId = @OwnerId
		
			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedId)
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@OwnerId, @SelectedId, @SelectedUserName, '', GETDATE(), 0)
			else
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedId
		
			DELETE Softnet_ContactInvitations WHERE OwnerId = @OwnerId AND TargetId = @SelectedId
			DELETE Softnet_ContactInvitations WHERE OwnerId = @SelectedId AND TargetId = @OwnerId

			COMMIT TRANSACTION
			return 1
		end
		else if EXISTS(SELECT 1 FROM Softnet_ContactInvitations WHERE OwnerId = @SelectedId AND TargetId = @OwnerId)
		begin
			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedId)
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@OwnerId, @SelectedId, @SelectedUserName, '', GETDATE(), 0)
			else
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @OwnerId AND ConsumerId = @SelectedId			
						
			if NOT EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @SelectedId AND ConsumerId = @OwnerId)
				INSERT INTO Softnet_Contacts(OwnerId, ConsumerId, ContactName, UserDefaultName, LastUsedDate, [Status])
				VALUES(@SelectedId, @OwnerId, @OwnerName, '', GETDATE(), 0)		
			else
				UPDATE Softnet_Contacts SET [Status] = 0 WHERE OwnerId = @SelectedId AND ConsumerId = @OwnerId						
			
			DELETE Softnet_ContactInvitations WHERE OwnerId = @OwnerId AND TargetId = @SelectedId
			DELETE Softnet_ContactInvitations WHERE OwnerId = @SelectedId AND TargetId = @OwnerId
					
			COMMIT TRANSACTION
			return 1
		end	else
		begin
			if NOT EXISTS(SELECT 1 FROM Softnet_ContactInvitations WHERE OwnerId = @OwnerId AND TargetId = @SelectedId)
			begin
				INSERT INTO Softnet_ContactInvitations(OwnerId, TargetId)
				VALUES(@OwnerId, @SelectedId)
			end
			
			COMMIT TRANSACTION
			return 0
		end			
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SetClientPassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SetClientPassword]
	@ClientId		BIGINT,
	@Salt			VARCHAR(64),
	@SaltedPassword	VARCHAR(64)	
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Clients SET Salt = @Salt, SaltedPassword = @SaltedPassword WHERE ClientId = @ClientId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SetDefaultRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SetDefaultRole]
	@SiteId			BIGINT,
	@RoleId			BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET DefaultRoleId = @RoleId WHERE SiteId = @SiteId AND Structured = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SetServicePassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SetServicePassword] 
	@ServiceId		BIGINT,
	@Salt			VARCHAR(64),
	@SaltedPassword	VARCHAR(64)	
AS
BEGIN
	SET NOCOUNT ON;	
	UPDATE Softnet_Services SET Salt = @Salt, SaltedPassword = @SaltedPassword WHERE ServiceId = @ServiceId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SetSiteAsMultiService]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SetSiteAsMultiService] 
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Sites SET SiteKind = 2 WHERE SiteId = @SiteId AND Structured = 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_SiteKeyExists]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_SiteKeyExists]
	@SiteKey	VARCHAR(32)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Sites WHERE SiteKey = @SiteKey)
		return 1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_UpdateContact]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_UpdateContact]	
	@ContactId			BIGINT,
	@ContactName		NVARCHAR(256),
	@UserDefaultName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Contacts SET ContactName = @ContactName, UserDefaultName = @UserDefaultName 
	WHERE ContactId = @ContactId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_UpdateUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_UpdateUser] 
	@UserId			BIGINT,
	@EnabledStatus	BIT
AS
BEGIN
	SET NOCOUNT ON; 
	UPDATE Softnet_Users SET [Enabled] = @EnabledStatus WHERE UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_UpdateUser2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_UpdateUser2]
	@UserId				BIGINT,
	@EnabledStatus		BIT,
	@DedicatedStatus	BIT,
	@UserName			NVARCHAR(256)
AS
BEGIN	
	SET NOCOUNT ON;
	UPDATE Softnet_Users SET
		[Enabled] = @EnabledStatus,
		Dedicated = @DedicatedStatus,
		UserName = @UserName
	WHERE UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Mgt_WhetherPeerContactExists]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Mgt_WhetherPeerContactExists]
	@OwnerId		BIGINT,
	@SelectedUserId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	IF EXISTS(SELECT 1 FROM Softnet_Contacts WHERE OwnerId = @SelectedUserId AND ConsumerId = @OwnerId)
		return 1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_ChangePassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_ChangePassword]
	@OwnerId		BIGINT,
	@SaltedPassword	NVARCHAR(128),
	@Salt			NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON;	
	UPDATE M SET M.[Password] = @SaltedPassword, M.PasswordSalt = @Salt 
	FROM Softnet_Owners AS O INNER JOIN aspnet_Membership AS M ON O.ANUserId = M.UserId
	WHERE O.OwnerId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_GetData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_GetData]
	@AccountName	NVARCHAR(256),
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@EMail			NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT @OwnerId = O.OwnerId, @OwnerName = O.FullName, @EMail = AM.LoweredEmail
	FROM aspnet_Users AU 
	INNER JOIN Softnet_Owners O ON O.ANUserId = AU.UserId
	INNER JOIN aspnet_Membership AM ON AM.UserId = AU.UserId
	INNER JOIN aspnet_Applications AA ON AU.ApplicationId = AA.ApplicationId
	WHERE AA.LoweredApplicationName = N'softnet' AND AU.LoweredUserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -2
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_GetTransactionData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_GetTransactionData]
	@AccountName	NVARCHAR(256),
	@OwnerId		BIGINT OUTPUT,
	@SecretKey		NVARCHAR(64) OUTPUT,
	@EMail			NVARCHAR(256) OUTPUT,
	@TransactionKey	VARCHAR(64) OUTPUT,
	@CreatedTime	BIGINT OUTPUT,
	@CurrentTime	BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
		
	SELECT @OwnerId = O.OwnerId, @EMail = AM.LoweredEmail, @TransactionKey = O.TransactionKey, @CreatedTime = O.KeyCreatedTime
	FROM aspnet_Users AU 
	INNER JOIN Softnet_Owners O ON O.ANUserId = AU.UserId
	INNER JOIN aspnet_Membership AM ON AM.UserId = AU.UserId
	INNER JOIN aspnet_Applications AA ON AU.ApplicationId = AA.ApplicationId
	WHERE AA.LoweredApplicationName = N'softnet' AND AU.LoweredUserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -1
	
	SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT = 0
		return -3
		
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_InitEMailConfirmation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_InitEMailConfirmation]
	@AccountName			NVARCHAR(256),
	@EMail					NVARCHAR(256),
	@TransactionKey			VARCHAR(64) OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;
	DECLARE @ApplicationId UNIQUEIDENTIFIER, @ANUserId UNIQUEIDENTIFIER, @OwnerId BIGINT, @StoredTransactionKey	VARCHAR(64)
		
	SELECT @ApplicationId = AA.ApplicationId, @ANUserId = AU.UserId, @OwnerId = O.OwnerId, @StoredTransactionKey = O.TransactionKey
	FROM Softnet_Owners O 
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	INNER JOIN aspnet_Applications AA ON AU.ApplicationId = AA.ApplicationId
	WHERE AA.LoweredApplicationName = N'softnet' AND AU.LoweredUserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -2
	
	if EXISTS(SELECT 1 FROM aspnet_Membership WHERE LoweredEmail = LOWER(@EMail) AND ApplicationId = @ApplicationId AND UserId <> @ANUserId)
		return 1
	
	DECLARE @CurrentTime BIGINT
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT	

	if @StoredTransactionKey IS NULL
		UPDATE Softnet_Owners SET TransactionKey = @TransactionKey, KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId
	else
	begin
		UPDATE Softnet_Owners SET KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId
		SET @TransactionKey = @StoredTransactionKey
	end

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_InitRecoveryOnEMail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_InitRecoveryOnEMail]
	@EMail					NVARCHAR(256),
	@AccountName			NVARCHAR(256) OUTPUT,
	@TransactionKey			VARCHAR(64) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ANUserId uniqueidentifier, @OwnerId BIGINT, @StoredTransactionKey VARCHAR(64)
	
	SELECT @ANUserId = ANUserId, @OwnerId = OwnerId, @StoredTransactionKey = TransactionKey
	FROM Softnet_Owners O INNER JOIN aspnet_Membership AM ON O.ANUserId = AM.UserId
	INNER JOIN aspnet_Applications AA ON AM.ApplicationId = AA.ApplicationId
	WHERE AA.LoweredApplicationName = N'softnet' AND AM.LoweredEmail = LOWER(@EMail)
	if @@ROWCOUNT = 0
		return -1
		
	SELECT @AccountName = LoweredUserName FROM aspnet_Users WHERE UserId = @ANUserId
		
	DECLARE @CurrentTime BIGINT
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT	
	
	if @StoredTransactionKey IS NULL
		UPDATE Softnet_Owners SET TransactionKey = @TransactionKey, KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId
	else
	begin		
		UPDATE Softnet_Owners SET KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId		
		SET @TransactionKey = @StoredTransactionKey
	end

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_InitRecoveryOnName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_InitRecoveryOnName]
	@AccountName			NVARCHAR(256),
	@EMail					NVARCHAR(256) OUTPUT,
	@TransactionKey			VARCHAR(64) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT, @StoredTransactionKey VARCHAR(64)
	
	SELECT @OwnerId = O.OwnerId, @EMail = AM.LoweredEmail, @StoredTransactionKey = O.TransactionKey
	FROM Softnet_Owners O 
	INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	INNER JOIN aspnet_Membership AM ON AM.UserId = AU.UserId
	INNER JOIN aspnet_Applications AA ON AU.ApplicationId = AA.ApplicationId
	WHERE AA.LoweredApplicationName = N'softnet' AND AU.LoweredUserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -1
	
	if @EMail IS NULL
		return 1
	
	DECLARE @CurrentTime BIGINT
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT
	
	if @StoredTransactionKey IS NULL
		UPDATE Softnet_Owners SET TransactionKey = @TransactionKey, KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId
	else
	begin
		UPDATE Softnet_Owners SET KeyCreatedTime = @CurrentTime WHERE OwnerId = @OwnerId
		SET @TransactionKey = @StoredTransactionKey
	end

	return 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_ResetPassword]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_ResetPassword]
	@OwnerId			BIGINT,
	@SaltedPassword		NVARCHAR(128),
	@Salt				NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ANUserId uniqueidentifier
	SELECT @ANUserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return -1

	UPDATE Softnet_Owners SET TransactionKey = NULL WHERE OwnerId = @OwnerId
	
	DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    
	UPDATE aspnet_Membership SET
		[Password] = @SaltedPassword,
		PasswordSalt = @Salt,
		IsLockedOut = 0,
		FailedPasswordAttemptCount = 0,
		LastLockoutDate = @LastLockoutDate
	WHERE UserId = @ANUserId
	if @@ROWCOUNT = 0
		return -1
			
	return 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_SetEMail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_SetEMail]
	@OwnerId	BIGINT,
	@EMail		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ANUserId UNIQUEIDENTIFIER

	SELECT @ANUserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return -1

	if EXISTS(SELECT 1 FROM aspnet_Membership M 
		INNER JOIN aspnet_Applications A ON M.ApplicationId = A.ApplicationId 
		WHERE M.LoweredEmail = LOWER(@EMail) AND A.LoweredApplicationName = N'softnet' AND UserId <> @ANUserId)
		return 1
	
	UPDATE Softnet_Owners SET TransactionKey = NULL WHERE OwnerId = @OwnerId
	UPDATE aspnet_Membership SET Email = @EMail, LoweredEmail = LOWER(@EMail) WHERE UserId = @ANUserId

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_SetOwnerName]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_SetOwnerName]
	@OwnerId		BIGINT,
	@OwnerName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Owners SET FullName = @OwnerName WHERE OwnerId = @OwnerId;
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_GetInvitationStatus]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_GetInvitationStatus] 
	@IKey				VARCHAR(64),
	@Status				INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @CreatedTime BIGINT		
	SELECT 
		@CreatedTime = CreatedTime,
		@Status = [Status]
	FROM Softnet_Invitations WHERE IKey = @IKey
	if @@ROWCOUNT = 0
		return -1
	
	DECLARE @CurrentTicks BIGINT
	EXEC Softnet_Clock_GetTicks @CurrentTicks OUTPUT

	if @Status = 0 AND (@CurrentTicks - @CreatedTime) > 60480
		SET @Status = 2
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_SignupByInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_SignupByInvitation]
	@IKey				VARCHAR(64),
	@UserFullName		NVARCHAR(256),
	@AccountName		NVARCHAR(256),
	@EMail				NVARCHAR(256),
	@SaltedPassword		NVARCHAR(128),
	@Salt				NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @InvitationId BIGINT, @Status INT, @AssignProviderRole BIT, @CreatedTime BIGINT	
	
	SELECT 
		@InvitationId = InvitationId,
		@Status = [Status],
		@AssignProviderRole = AssignProviderRole,
		@CreatedTime = CreatedTime
	FROM Softnet_Invitations WHERE IKey = @IKey
	if @@ROWCOUNT = 0
		return -1
	
	if @Status = 1
		return 1
	
	DECLARE @Ticks BIGINT
	EXEC Softnet_Clock_GetTicks @Ticks OUTPUT
	
	if (@Ticks - @CreatedTime) > 60480
		return 2

	if EXISTS(SELECT 1 FROM aspnet_Membership M 
		INNER JOIN aspnet_Applications A ON M.ApplicationId = A.ApplicationId 
		WHERE M.LoweredEmail = LOWER(@EMail) AND A.LoweredApplicationName = N'softnet')
		return 3
	
	DECLARE @RoleId uniqueidentifier
	if @AssignProviderRole = 1
	begin
		SELECT @RoleId = RoleId FROM aspnet_Roles R INNER JOIN aspnet_Applications A ON R.ApplicationId = A.ApplicationId
		WHERE LoweredApplicationName = N'softnet' AND RoleName = N'Provider'
		if @@ROWCOUNT = 0
			return -4;
	end

	DECLARE @CurrentUtcTime DATETIME
	SET @CurrentUtcTime = GETUTCDATE()
	
	BEGIN TRY
		BEGIN TRANSACTION	
		
		DECLARE @UserId uniqueidentifier, @ReturnValue INT
		
		SET @UserId = NULL
		EXEC @ReturnValue = aspnet_Membership_CreateUser 
				N'Softnet', 
				@AccountName, 
				@SaltedPassword, 
				@Salt,
				@EMail,
				NULL,
				NULL,
				1,
				@CurrentUtcTime,
				NULL,
				0,
				1,
				@UserId OUTPUT
		
		if @ReturnValue <> 0
		begin
			if @@TRANCOUNT > 0
				ROLLBACK TRANSACTION	
							
			if @ReturnValue = -1
				return -10
			if @ReturnValue = 6
				return 4
			return 5
		end
		
		DECLARE @NewOwnerId BIGINT
		
		if @AssignProviderRole = 1
		begin
			INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
			VALUES(@UserId, @RoleId)
				
			INSERT INTO Softnet_Owners(ANUserId, Authority, FullName)
			VALUES(@UserId, 1, @UserFullName)
			SET @NewOwnerId = SCOPE_IDENTITY()
		end else
		begin
			INSERT INTO Softnet_Owners(ANUserId, Authority, FullName)
			VALUES(@UserId, 0, @UserFullName)
			SET @NewOwnerId = SCOPE_IDENTITY()			
		end
				
		UPDATE Softnet_Invitations SET [Status] = 1, NewUserId = @NewOwnerId WHERE InvitationId = @InvitationId
		
		COMMIT TRANSACTION		
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH			
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_SignupUser]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_SignupUser]
	@UserFullName		NVARCHAR(256),
	@AccountName		NVARCHAR(256),
	@EMail				NVARCHAR(256),
	@SaltedPassword		NVARCHAR(128),
	@Salt				NVARCHAR(128)
AS
BEGIN
	SET NOCOUNT ON;

	if EXISTS(SELECT 1 FROM aspnet_Membership M 
		INNER JOIN aspnet_Applications A ON M.ApplicationId = A.ApplicationId 
		WHERE M.LoweredEmail = LOWER(@EMail) AND A.LoweredApplicationName = N'softnet')
		return 2
		
	DECLARE @ParamValue NVARCHAR(1), @AssignProviderRole BIT
	
	EXEC Softnet_MgtSettings_GetAutoAssignProviderRole @ParamValue OUTPUT
	if @ParamValue = '1'
		SET @AssignProviderRole = 1
	else
		SET @AssignProviderRole = 0		
	
	DECLARE @RoleId uniqueidentifier
	if @AssignProviderRole = 1
	begin
		SELECT @RoleId = RoleId FROM aspnet_Roles R INNER JOIN aspnet_Applications A ON R.ApplicationId = A.ApplicationId
		WHERE ApplicationName = N'Softnet' AND RoleName = N'Provider'
		if @@ROWCOUNT = 0
			return -4
	end
	
	DECLARE @CurrentUtcTime DATETIME
	SET @CurrentUtcTime = GETUTCDATE()
	
	BEGIN TRY
		BEGIN TRANSACTION	
		
		DECLARE @UserId uniqueidentifier, @ReturnValue INT
		
		SET @UserId = NULL
		EXEC @ReturnValue = aspnet_Membership_CreateUser 
				N'Softnet', 
				@AccountName, 
				@SaltedPassword, 
				@Salt,
				@EMail,
				NULL,
				NULL,
				1,
				@CurrentUtcTime,
				NULL,
				0,
				1,
				@UserId OUTPUT
		
		if @ReturnValue <> 0
		begin
			if @@TRANCOUNT > 0
				ROLLBACK TRANSACTION	
							
			if @ReturnValue = -1
				return -10
			if @ReturnValue = 6
				return 3
			return 4
		end
		
		if @AssignProviderRole = 1
		begin
			INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
			VALUES(@UserId, @RoleId)
		
			INSERT INTO Softnet_Owners(ANUserId, Authority, FullName)
			VALUES(@UserId, 1, @UserFullName)		
		end else
		begin
			INSERT INTO Softnet_Owners(ANUserId, Authority, FullName)
			VALUES(@UserId, 0, @UserFullName)
		end
						
		COMMIT TRANSACTION		
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH				
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAccount_Unlock]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAccount_Unlock] 
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @ANUserId uniqueidentifier
	SELECT @ANUserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return -1

	UPDATE Softnet_Owners SET TransactionKey = NULL WHERE OwnerId = @OwnerId
	
	DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    
	UPDATE aspnet_Membership SET
		IsLockedOut = 0,
		FailedPasswordAttemptCount = 0,
		LastLockoutDate = @LastLockoutDate
	WHERE UserId = @ANUserId
	if @@ROWCOUNT = 0
		return -1			
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_AddNewInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_AddNewInvitation]
	@AccountName		NVARCHAR(256),
	@IKey				VARCHAR(64),
	@EMail				NVARCHAR(256),
	@Description		NVARCHAR(1024),
	@AssignProviderRole	BIT,
	@InvitationId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	
		
	DECLARE @Ticks BIGINT
	EXEC Softnet_Clock_GetTicks @Ticks OUTPUT

	INSERT INTO Softnet_Invitations(OwnerId, EMail, [Description], IKey, AssignProviderRole, CreatedTime, [Status], NewUserId)
	VALUES(@OwnerId, @EMail, @Description, @IKey, @AssignProviderRole, @Ticks, 0, NULL)	
	
	SET @InvitationId = SCOPE_IDENTITY()
	
	IF (DATALENGTH(@EMail) = 0 AND DATALENGTH(@Description) = 0)
		UPDATE Softnet_Invitations SET [Description] = 'Invitation_' + LTRIM(STR(@InvitationId,20)) WHERE InvitationId = @InvitationId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_ClearAcceptedInvitationList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_ClearAcceptedInvitationList]
	@AccountName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return	
		
	DELETE Softnet_Invitations WHERE OwnerId = @OwnerId AND [Status] = 1	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_ClearExpiredInvitationList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_ClearExpiredInvitationList]
	@AccountName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return	
		
	DECLARE @Ticks BIGINT
	EXEC Softnet_Clock_GetTicks @Ticks OUTPUT
	
	DELETE Softnet_Invitations WHERE OwnerId = @OwnerId AND [Status] = 0 AND (@Ticks - CreatedTime) > 60480	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_DeleteInvitation]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_DeleteInvitation]
	@AccountName		NVARCHAR(256),
	@InvitationId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return	
	DELETE Softnet_Invitations WHERE InvitationId = @InvitationId AND OwnerId = @OwnerId	    
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_GetGeneralSettings]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_GetGeneralSettings] 
	@ManagementSystemUrl	NVARCHAR(1024) OUTPUT,
	@ServerAddress			NVARCHAR(1024) OUTPUT,
	@SecretKey				NVARCHAR(64) OUTPUT,
	@AnyoneCanRegister		NVARCHAR(1) OUTPUT,
	@AssignProviderRole		NVARCHAR(1) OUTPUT,
	@UserPasswordMinLength	NVARCHAR(2) OUTPUT,
	@ServicePasswordLength	NVARCHAR(2) OUTPUT,
	@ClientPasswordLength	NVARCHAR(2) OUTPUT,
	@ClientKeyLength		NVARCHAR(2) OUTPUT,
	@EmailAddress			NVARCHAR(1024) OUTPUT,
	@EmailPassword			NVARCHAR(64) OUTPUT,
	@SmtpServer				NVARCHAR(1024) OUTPUT,
	@SmtpPort				NVARCHAR(5) OUTPUT,
	@SmtpRequiresSSL		NVARCHAR(1) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ParamValue	NVARCHAR(1024)

	SELECT @ManagementSystemUrl = ParamValue FROM Softnet_Settings WHERE ParamName = N'ManagementSystemUrl'
	if @@ROWCOUNT = 0
		SET @ManagementSystemUrl = NULL
	
	SELECT @ServerAddress = ParamValue FROM Softnet_Settings WHERE ParamName = N'ServerAddress'
	if @@ROWCOUNT = 0
		SET @ServerAddress = NULL

	SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT = 0
		SET @SecretKey = NULL
	
	SELECT @AnyoneCanRegister = ParamValue FROM Softnet_Settings WHERE ParamName = N'AnyoneCanRegister'
	if @@ROWCOUNT = 0
		SET @AnyoneCanRegister = NULL

	SELECT @AssignProviderRole = ParamValue FROM Softnet_Settings WHERE ParamName = N'AssignProviderRole'
	if @@ROWCOUNT = 0
		SET @AssignProviderRole = NULL

	SELECT @UserPasswordMinLength = ParamValue FROM Softnet_Settings WHERE ParamName = N'UserPasswordMinLength'
	if @@ROWCOUNT = 0
		SET @UserPasswordMinLength = NULL
	
	SELECT @ServicePasswordLength = ParamValue FROM Softnet_Settings WHERE ParamName = N'ServicePasswordLength'
	if @@ROWCOUNT = 0
		SET @ServicePasswordLength = NULL

	SELECT @ClientPasswordLength = ParamValue FROM Softnet_Settings WHERE ParamName = N'ClientPasswordLength'
	if @@ROWCOUNT = 0
		SET @ClientPasswordLength = NULL
	
	SELECT @ClientKeyLength = ParamValue FROM Softnet_Settings WHERE ParamName = N'ClientKeyLength'
	if @@ROWCOUNT = 0
		SET @ClientKeyLength = NULL

	SELECT @EmailAddress = ParamValue FROM Softnet_Settings WHERE ParamName = N'EmailAddress'
	if @@ROWCOUNT = 0
		SET @EmailAddress = NULL

	SELECT @EmailPassword = ParamValue FROM Softnet_Settings WHERE ParamName = N'EmailPassword'
	if @@ROWCOUNT = 0
		SET @EmailPassword = NULL
	
	SELECT @SmtpServer = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpServer'
	if @@ROWCOUNT = 0
		SET @SmtpServer = NULL

	SELECT @SmtpPort = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpPort'
	if @@ROWCOUNT = 0
		SET @SmtpPort = NULL

	SELECT @SmtpRequiresSSL = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpRequiresSSL'
	if @@ROWCOUNT = 0
		SET @SmtpRequiresSSL = NULL
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_GetInvitationData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_GetInvitationData]
	@AccountName		NVARCHAR(256),
	@InvitationId		BIGINT,
	@IKey				VARCHAR(64) OUTPUT,
	@EMail				NVARCHAR(256) OUTPUT,
	@Description		NVARCHAR(1024) OUTPUT,
	@AssignProviderRole	BIT OUTPUT,
	@Status				INT OUTPUT,
	@NewUserId			BIGINT OUTPUT,
	@NewUserName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	
		
	DECLARE @Ticks BIGINT
	EXEC Softnet_Clock_GetTicks @Ticks OUTPUT
	
	DECLARE @CreatedTime BIGINT
		
	SELECT 
		@IKey = IKey,
		@EMail = EMail,
		@Description = [Description],
		@AssignProviderRole = AssignProviderRole,
		@CreatedTime = CreatedTime,
		@Status = [Status],
		@NewUserId = NewUserId
	FROM Softnet_Invitations WHERE InvitationId = @InvitationId AND OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return -1
	
	if @Status = 0 AND (@Ticks - @CreatedTime) > 60480
		SET @Status = 2
	
	if @NewUserId IS NOT NULL
		SELECT @NewUserName = FullName FROM Softnet_Owners WHERE OwnerId = @NewUserId

	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_GetInvitationList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_GetInvitationList]
	@AccountName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT
		
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	
		
	DECLARE @Ticks BIGINT
	EXEC Softnet_Clock_GetTicks @Ticks OUTPUT
	
	SELECT 
		InvitationId,
		IKey,
		I.EMail,
		[Description],
		AssignProviderRole,		
		CASE WHEN [Status] = 1 THEN 1 WHEN (@Ticks - CreatedTime) <= 60480 THEN 0 ELSE 2 END,
		O.OwnerId AS NewUserId,
		O.FullName AS NewUserName,
		O.Authority  
	FROM Softnet_Invitations I LEFT OUTER JOIN Softnet_Owners O ON I.NewUserId = O.OwnerId
	WHERE I.OwnerId = @OwnerId ORDER BY InvitationId DESC
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetAnyoneCanRegister]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetAnyoneCanRegister]
	@ParamValue	NVARCHAR(1)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @CurrentValue NVARCHAR(1)	
	SELECT @CurrentValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'AnyoneCanRegister'
		
	if @CurrentValue IS NOT NULL
	begin
		if @CurrentValue = '0' AND @ParamValue = '1'
		begin
			if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'NewAccountApproval')
				UPDATE Softnet_Settings SET ParamValue = '1' WHERE ParamName = N'NewAccountApproval'
			else
				INSERT INTO Softnet_Settings(ParamName, ParamValue)
				VALUES(N'NewAccountApproval', '1')
		end			
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'AnyoneCanRegister'
	end else
	begin
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'AnyoneCanRegister', @ParamValue)
		
		if @ParamValue = '1' 
		begin
			if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'NewAccountApproval')
				UPDATE Softnet_Settings SET ParamValue = '1' WHERE ParamName = N'NewAccountApproval'
			else
				INSERT INTO Softnet_Settings(ParamName, ParamValue)
				VALUES(N'NewAccountApproval', '1')
		end	
	end		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetAutoAssignProviderRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetAutoAssignProviderRole]
	@ParamValue		NVARCHAR(1)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'AssignProviderRole')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'AssignProviderRole'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'AssignProviderRole', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetClientKeyLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetClientKeyLength]
	@ParamValue		NVARCHAR(2)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'ClientKeyLength')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'ClientKeyLength'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'ClientKeyLength', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetClientPasswordLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetClientPasswordLength]
	@ParamValue		NVARCHAR(2)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'ClientPasswordLength')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'ClientPasswordLength'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'ClientPasswordLength', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetEMail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetEMail] 
	@EMailAddress		NVARCHAR(1024),
	@EmailPassword		NVARCHAR(64),
	@SmtpServer			NVARCHAR(1024),
	@SmtpPort			NVARCHAR(5),
	@SmtpRequiresSSL	NVARCHAR(1)
AS
BEGIN
	SET NOCOUNT ON;

	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'EmailAddress')
		UPDATE Softnet_Settings SET ParamValue = @EMailAddress WHERE ParamName = N'EmailAddress'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'EmailAddress', @EMailAddress)

	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'EmailPassword')
		UPDATE Softnet_Settings SET ParamValue = @EmailPassword WHERE ParamName = N'EmailPassword'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'EmailPassword', @EmailPassword)

	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'SmtpServer')
		UPDATE Softnet_Settings SET ParamValue = @SmtpServer WHERE ParamName = N'SmtpServer'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'SmtpServer', @SmtpServer)

	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'SmtpPort')
		UPDATE Softnet_Settings SET ParamValue = @SmtpPort WHERE ParamName = N'SmtpPort'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'SmtpPort', @SmtpPort)

	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'SmtpRequiresSSL')
		UPDATE Softnet_Settings SET ParamValue = @SmtpRequiresSSL WHERE ParamName = N'SmtpRequiresSSL'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'SmtpRequiresSSL', @SmtpRequiresSSL)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetNewUserApproval]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetNewUserApproval]
	@ParamValue		NVARCHAR(1)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'NewUserApproval')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'NewUserApproval'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'NewUserApproval', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetSecretKey]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetSecretKey]
	@ParamValue		NVARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'SecretKey')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'SecretKey'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'SecretKey', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetServerAddress]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetServerAddress]
	@ParamValue		NVARCHAR(1024)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'ServerAddress')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'ServerAddress'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'ServerAddress', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetServicePasswordLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetServicePasswordLength]
	@ParamValue		NVARCHAR(2)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'ServicePasswordLength')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'ServicePasswordLength'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'ServicePasswordLength', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetManagementSystemUrl]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetManagementSystemUrl]
	@ParamValue		NVARCHAR(1024)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'ManagementSystemUrl')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'ManagementSystemUrl'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'ManagementSystemUrl', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_SetUserPasswordMinLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_SetUserPasswordMinLength] 
	@ParamValue		NVARCHAR(2)
AS
BEGIN
	SET NOCOUNT ON;
	if EXISTS(SELECT 1 FROM Softnet_Settings WHERE ParamName = N'UserPasswordMinLength')
		UPDATE Softnet_Settings SET ParamValue = @ParamValue WHERE ParamName = N'UserPasswordMinLength'
	else
		INSERT INTO Softnet_Settings(ParamName, ParamValue)
		VALUES(N'UserPasswordMinLength', @ParamValue)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtAdmin_UpdateInvitationData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtAdmin_UpdateInvitationData]
	@InvitationId		BIGINT,
	@EMail				NVARCHAR(256),
	@Description		NVARCHAR(1024),
	@AssignProviderRole	BIT		
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Invitations SET
		EMail = @EMail,
		[Description] = @Description,
		AssignProviderRole = @AssignProviderRole
	WHERE InvitationId = @InvitationId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtContacts_FindNextUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtContacts_FindNextUsers]
	@AccountName		NVARCHAR(256),
	@Filter				NVARCHAR(256),
	@LastSelectedId		BIGINT,
	@OwnerId			BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return
	
	DECLARE @ExcludedUsers TABLE(OwnerId BIGINT)	
	DECLARE @Partners TABLE(PartnerId BIGINT)

	INSERT INTO @Partners(PartnerId)
	SELECT OwnerId FROM Softnet_Contacts
	WHERE ConsumerId = @OwnerId
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT ConsumerId FROM Softnet_Contacts
	WHERE OwnerId = @OwnerId AND ConsumerId IN (SELECT PartnerId FROM @Partners)
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT TargetId FROM Softnet_ContactInvitations
	WHERE OwnerId = @OwnerId

	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT @OwnerId
		
	SELECT TOP 15 OwnerId, Authority, FullName
	FROM Softnet_Owners
	WHERE OwnerId > @LastSelectedId AND [Enabled] = 1 AND OwnerId NOT IN (SELECT OwnerId FROM @ExcludedUsers) AND FullName like @Filter ORDER BY OwnerId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtContacts_FindPrevUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtContacts_FindPrevUsers]
	@AccountName		NVARCHAR(256),
	@Filter				NVARCHAR(256),
	@FirstSelectedId	BIGINT,
	@OwnerId			BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return
		
	DECLARE @ExcludedUsers TABLE(OwnerId BIGINT)	
	DECLARE @Partners TABLE(PartnerId BIGINT)

	INSERT INTO @Partners(PartnerId)
	SELECT OwnerId FROM Softnet_Contacts
	WHERE ConsumerId = @OwnerId
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT ConsumerId FROM Softnet_Contacts
	WHERE OwnerId = @OwnerId AND ConsumerId IN (SELECT PartnerId FROM @Partners)
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT TargetId FROM Softnet_ContactInvitations
	WHERE OwnerId = @OwnerId
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT @OwnerId
	
	SELECT TOP 15 OwnerId, Authority, FullName
	FROM Softnet_Owners
	WHERE OwnerId < @FirstSelectedId AND [Enabled] = 1 AND OwnerId NOT IN (SELECT OwnerId FROM @ExcludedUsers) AND FullName like @Filter ORDER BY OwnerId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtContacts_FindUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtContacts_FindUsers]
	@AccountName	NVARCHAR(256),
	@Filter			NVARCHAR(256),
	@OwnerId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2
		
	DECLARE @ExcludedUsers TABLE(OwnerId BIGINT)	
	DECLARE @Partners TABLE(PartnerId BIGINT)

	INSERT INTO @Partners(PartnerId)
	SELECT OwnerId FROM Softnet_Contacts
	WHERE ConsumerId = @OwnerId
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT ConsumerId FROM Softnet_Contacts
	WHERE OwnerId = @OwnerId AND ConsumerId IN (SELECT PartnerId FROM @Partners)
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT TargetId FROM Softnet_ContactInvitations
	WHERE OwnerId = @OwnerId
	
	INSERT INTO @ExcludedUsers(OwnerId)
	SELECT @OwnerId
	
	SELECT TOP 15 OwnerId, Authority, FullName
	FROM Softnet_Owners
	WHERE [Enabled] = 1 AND OwnerId NOT IN (SELECT OwnerId FROM @ExcludedUsers) AND  FullName like @Filter ORDER BY OwnerId ASC	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_CreateClient]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_CreateClient]
	@SiteId				BIGINT,
	@ClientKey			VARCHAR(32),
	@SaltedPassword		VARCHAR(64),
	@Salt				VARCHAR(64),
	@EMail				NVARCHAR(256),
	@CreationKey		VARCHAR(64)
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS(SELECT 1 FROM Softnet_GuestParams WHERE CreationKey = @CreationKey)
		return 2
		
	DECLARE @DomainId BIGINT, @Structured BIT, @Enabled BIT, @GuestSupported BIT, @GuestAllowed BIT
	
	SELECT 
		@DomainId = DomainId,
		@Structured = Structured,
		@Enabled = [Enabled],
		@GuestSupported = GuestSupported,
		@GuestAllowed = GuestAllowed
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -1
	
	if @Structured = 0 OR @Enabled = 0 OR @GuestSupported = 0 OR @GuestAllowed = 0
		return 1
		
	DECLARE @UserId BIGINT, @GuestEnabled BIT
	
	SELECT @UserId = UserId, @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -5
	
	if @GuestEnabled = 0
		return 1
	
	DECLARE @ClientId BIGINT
	
	INSERT INTO Softnet_Clients(ClientKey, SiteId, UserId, SaltedPassword, Salt)
	VALUES(@ClientKey, @SiteId, @UserId, @SaltedPassword, @Salt)
	SET @ClientId = SCOPE_IDENTITY()
	
	INSERT INTO Softnet_GuestParams(ClientId, EMail, CreationKey, AccessKey, KeyCreatedTime)
	VALUES(@ClientId, @EMail, @CreationKey, NULL, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_FindNextUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_FindNextUsers]
	@Filter			NVARCHAR(256),
	@LastSelectedId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 15 OwnerId, FullName
	FROM Softnet_Owners
	WHERE OwnerId > @LastSelectedId AND [Enabled] = 1 AND Authority > 0 AND FullName like @Filter ORDER BY OwnerId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_FindPrevUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_FindPrevUsers]
	@Filter				NVARCHAR(256),
	@FirstSelectedId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 15 OwnerId, FullName
	FROM Softnet_Owners
	WHERE OwnerId < @FirstSelectedId AND [Enabled] = 1 AND Authority > 0 AND FullName like @Filter ORDER BY OwnerId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_FindUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_FindUsers]	
	@Filter			NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT TOP 15 OwnerId, FullName
	FROM Softnet_Owners
	WHERE Authority > 0 AND [Enabled] = 1 AND FullName like @Filter ORDER BY OwnerId ASC	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainDataset]
	@AccountName	NVARCHAR(256),
	@DomainId		BIGINT,
	@CreatorId		BIGINT OUTPUT,
	@OwnerId		BIGINT OUTPUT,
	@GuestId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT @CreatorId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -2

	SELECT 
		@OwnerId = O.OwnerId, 
		@OwnerName = O.FullName, 
		@DomainName = D.DomainName
	FROM Softnet_Domains D INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE DomainId = @DomainId AND O.Authority > 0 AND O.[Enabled] = 1
	if @@Rowcount = 0
		return 1	
	
	DECLARE @GuestEnabled BIT
	
	SELECT @GuestId = UserId, @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@Rowcount <> 1
		return -5
		
	if @GuestEnabled = 0
		return 1
	
	DECLARE @SiteList TABLE(SiteId BIGINT)
	
	INSERT INTO @SiteList(SiteId)
	SELECT SiteId FROM Softnet_Sites 
	WHERE DomainId = @DomainId AND Structured = 1 AND [Enabled] = 1 AND GuestSupported = 1 AND GuestAllowed = 1
	if @@Rowcount = 0
		return 1
		
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, StatelessGuestSupported, SiteKey, [Description]
	FROM Softnet_Sites 
	WHERE SiteId IN (SELECT SiteId FROM @SiteList)
	ORDER BY SiteId DESC

	SELECT S.ServiceId, S.SiteId, S.ServiceType, S.ContractAuthor, S.[Version], S.HostName, S.SSHash, S.[Enabled], S.PingPeriod 
	FROM Softnet_Services S 
	INNER JOIN Softnet_Sites St ON S.SiteId = St.SiteId 
	WHERE St.SiteId IN (SELECT SiteId FROM @SiteList)
	ORDER BY S.HostName ASC		

	SELECT C.ClientId, C.SiteId, ClientKey, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C 	
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	WHERE U.DomainId = @DomainId AND U.UserKind = 4 AND GC.CreatorId = @CreatorId ORDER BY C.ClientId DESC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainDataset2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainDataset2]
	@DomainId		BIGINT,
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN	
	SET NOCOUNT ON;
 	
 	SELECT 
 		@OwnerId = O.OwnerId, 
 		@OwnerName = O.FullName, 
 		@DomainName = D.DomainName
	FROM Softnet_Domains D INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE DomainId = @DomainId AND O.Authority > 0 AND O.[Enabled] = 1
	if @@Rowcount = 0
		return 1
				
	DECLARE @GuestEnabled BIT
	
	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@Rowcount <> 1
		return -5
		
	if @GuestEnabled = 0
		return 1
	
	DECLARE @SiteList TABLE(SiteId BIGINT)
	
	INSERT INTO @SiteList(SiteId)
	SELECT SiteId FROM Softnet_Sites 
	WHERE DomainId = @DomainId AND Structured = 1 AND [Enabled] = 1 AND GuestSupported = 1 AND GuestAllowed = 1
	if @@Rowcount = 0
		return 1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, StatelessGuestSupported, SiteKey, [Description]
	FROM Softnet_Sites 
	WHERE SiteId IN (SELECT SiteId FROM @SiteList)
	ORDER BY SiteId DESC

	SELECT S.ServiceId, S.SiteId, S.ServiceType, S.ContractAuthor, S.[Version], S.HostName, S.SSHash, S.[Enabled], S.PingPeriod 
	FROM Softnet_Services S 
	INNER JOIN Softnet_Sites St ON S.SiteId = St.SiteId 
	WHERE St.SiteId IN (SELECT SiteId FROM @SiteList)
	ORDER BY S.HostName ASC	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainDatasetForAccount]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainDatasetForAccount]
	@AccountName	NVARCHAR(256),
	@DomainId		BIGINT,	
	@CreatorId		BIGINT OUTPUT,
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT @CreatorId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -2	
	
	SELECT 
		@OwnerId = O.OwnerId, 
		@OwnerName = O.FullName, 
		@DomainName = D.DomainName 
	FROM Softnet_Domains D INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE DomainId = @DomainId AND O.Authority > 0 AND O.[Enabled] = 1
	if @@Rowcount = 0
		return 1
	
	DECLARE @SiteList TABLE(SiteId BIGINT)
	
	INSERT INTO @SiteList(SiteId)
	SELECT DISTINCT S.SiteId FROM Softnet_GuestCreators GC 
	INNER JOIN Softnet_Clients C ON GC.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId	
	WHERE S.DomainId = @DomainId AND S.Structured = 1 AND GC.CreatorId = @CreatorId
	IF @@ROWCOUNT = 0
		return 1		
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, StatelessGuestSupported, SiteKey, [Enabled], [Description]
	FROM Softnet_Sites 
	WHERE SiteId IN (SELECT SiteId FROM @SiteList) ORDER BY SiteId DESC
	
	SELECT S.ServiceId, S.SiteId, S.ServiceType, S.ContractAuthor, S.[Version], S.HostName, S.SSHash, S.[Enabled], PingPeriod 
	FROM Softnet_Services S 
	INNER JOIN Softnet_Sites St ON S.SiteId = St.SiteId 
	WHERE St.SiteId IN (SELECT SiteId FROM @SiteList) ORDER BY S.HostName DESC	
	
	SELECT UserId, UserName, [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	
	SELECT C.ClientId, C.SiteId, C.ClientKey, C.ServiceType, C.ContractAuthor, C.ClientDescription, PingPeriod
	FROM Softnet_Clients C
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	WHERE S.SiteId IN (SELECT SiteId FROM @SiteList) AND GC.CreatorId = @CreatorId ORDER BY C.ClientId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainDatasetForEMail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainDatasetForEMail]
	@EMail			NVARCHAR(256),
	@DomainId		BIGINT,
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@GuestEnabled	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	

	SELECT 
		@OwnerId = O.OwnerId, 
		@OwnerName = O.FullName, 
		@DomainName = D.DomainName 
	FROM Softnet_Domains D 
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE DomainId = @DomainId AND O.[Enabled] = 1 AND O.Authority > 0
	if @@Rowcount = 0
		return 1
		
	DECLARE @SiteList TABLE(SiteId BIGINT)
	
	INSERT INTO @SiteList(SiteId)
	SELECT DISTINCT S.SiteId FROM Softnet_GuestParams GP 
	INNER JOIN Softnet_Clients C ON GP.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId	
	WHERE S.DomainId = @DomainId AND S.Structured = 1 AND S.GuestSupported = 1 AND GP.EMail = @EMail
	IF @@ROWCOUNT = 0
		return 1
	
	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@Rowcount = 0
		return -5

	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, StatelessGuestSupported, SiteKey, [Enabled], [Description]
	FROM Softnet_Sites 
	WHERE SiteId IN (SELECT SiteId FROM @SiteList) ORDER BY SiteId DESC
	
	SELECT S.ServiceId, S.SiteId, S.ServiceType, S.ContractAuthor, S.[Version], S.HostName, S.SSHash, S.[Enabled], PingPeriod
	FROM Softnet_Services S 
	INNER JOIN Softnet_Sites St ON S.SiteId = St.SiteId 
	WHERE St.SiteId IN (SELECT SiteId FROM @SiteList) ORDER BY S.HostName ASC	
	
	SELECT C.ClientId, C.SiteId, C.ClientKey, C.ServiceType, C.ContractAuthor, C.ClientDescription, PingPeriod
	FROM Softnet_GuestParams GP 
	INNER JOIN Softnet_Clients C ON GP.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	WHERE S.SiteId IN (SELECT SiteId FROM @SiteList) AND GP.EMail = @EMail ORDER BY C.ClientId DESC		
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainsForAccount]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainsForAccount]
	@AccountName	NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @OwnerId BIGINT

	SELECT @OwnerId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = @AccountName
	if @@Rowcount = 0
		return -2	

	DECLARE @Domains TABLE(DomainId BIGINT, OwnerId BIGINT, DomainName NVARCHAR(256))
	
	INSERT INTO @Domains(DomainId, OwnerId, DomainName)
	SELECT DISTINCT D.DomainId, D.OwnerId, D.DomainName FROM Softnet_GuestCreators GC 
	INNER JOIN Softnet_Clients C ON GC.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE GC.CreatorId = @OwnerId AND O.Authority > 0 AND O.[Enabled] = 1
	IF @@ROWCOUNT = 0
		return
	
	SELECT DomainId, OwnerId, DomainName FROM @Domains ORDER BY DomainId DESC	
	SELECT OwnerId, FullName FROM Softnet_Owners WHERE OwnerId IN (SELECT OwnerId FROM @Domains)		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetDomainsForEMail]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetDomainsForEMail]
	@EMail		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Domains TABLE(DomainId BIGINT, OwnerId BIGINT, DomainName NVARCHAR(256))
	
	INSERT INTO @Domains(DomainId, OwnerId, DomainName)
	SELECT DISTINCT D.DomainId, D.OwnerId, D.DomainName FROM Softnet_GuestParams GP 
	INNER JOIN Softnet_Clients C ON GP.ClientId = C.ClientId
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE GP.EMail = @EMail AND O.Authority > 0 AND O.[Enabled] = 1
	IF @@ROWCOUNT = 0
		return
		
	SELECT DomainId, OwnerId, DomainName FROM @Domains ORDER BY DomainId DESC	
	SELECT OwnerId, FullName FROM Softnet_Owners WHERE OwnerId IN (SELECT OwnerId FROM @Domains)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetGuestCreatingDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetGuestCreatingDataset]
	@SiteKey		VARCHAR(32),
	@TranKey		VARCHAR(64),
	@OwnerId		BIGINT OUTPUT,
	@DomainId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@SecretKey		NVARCHAR(64) OUTPUT,
	@CurrentTime	BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	IF EXISTS(SELECT 1 FROM Softnet_GuestParams WHERE CreationKey = @TranKey)
		return 1
	
	DECLARE @SiteId BIGINT, @Structured BIT, @OwnerAuthority INT, @OwnerEnabled BIT, @SiteEnabled BIT, @GuestSupported BIT, @GuestAllowed BIT
	
	SELECT 
		@OwnerAuthority = O.Authority,
		@OwnerEnabled = O.[Enabled],
		@OwnerId = O.OwnerId, 
		@DomainId = D.DomainId, 
		@OwnerName = O.FullName,
		@DomainName = D.DomainName,
		@SiteId = S.SiteId,
		@SiteEnabled = S.[Enabled],
		@Structured = S.Structured,
		@GuestSupported = S.GuestSupported,
		@GuestAllowed = S.GuestAllowed		
	FROM Softnet_Sites S 
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE S.SiteKey = @SiteKey
	if @@ROWCOUNT = 0
		return -1
	
	if @OwnerAuthority = 0 OR @OwnerEnabled = 0
		return 2
	
	if @SiteEnabled = 0 
		return 3
	
	if @Structured = 0
		return 4
	
	if @GuestSupported = 0 OR @GuestAllowed = 0 
		return 5

	DECLARE @GuestEnabled BIT

	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -5
		
	if @GuestEnabled = 0
		return 6
		
	SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT = 0
		return -3
		
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, StatelessGuestSupported, [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1

	SELECT ServiceId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId ORDER BY HostName ASC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetGuestEditingDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetGuestEditingDataset]
	@ClientKey		VARCHAR(32),
	@AccessKey		VARCHAR(64),
	@OwnerId		BIGINT OUTPUT,
	@DomainId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,
	@GuestEnabled	BIT OUTPUT,
	@EMail			NVARCHAR(256) OUTPUT,
	@SecretKey		NVARCHAR(64) OUTPUT	
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @ClientId BIGINT
	
	SELECT @ClientId = ClientId FROM Softnet_Clients WHERE ClientKey = @ClientKey
    if @@ROWCOUNT = 0
		return -1
    
    DECLARE @CurrentTime BIGINT, @KeyCreatedTime BIGINT, @StoredAccessKey VARCHAR(64)
    
    SELECT @EMail = EMail, @StoredAccessKey = AccessKey, @KeyCreatedTime = KeyCreatedTime FROM Softnet_GuestParams WHERE ClientId = @ClientId
    if @@ROWCOUNT = 0
		return -1
    
    if @StoredAccessKey IS NULL
		return 1
    
    if @AccessKey <> @StoredAccessKey
		return 1
    
    EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT
    
    if @CurrentTime - @KeyCreatedTime > 180
		return 2
    
    DECLARE @SiteId BIGINT, @OwnerAuthority	INT, @OwnerEnabled	BIT
    
    SELECT 
		@OwnerAuthority = O.Authority,
		@OwnerEnabled = O.[Enabled],
		@OwnerId = O.OwnerId, 
		@DomainId = D.DomainId, 
		@OwnerName = O.FullName,
		@DomainName = D.DomainName,
		@SiteId = S.SiteId
	FROM Softnet_Clients C
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE C.ClientId = @ClientId
	if @@ROWCOUNT = 0
		return -1	
    
    if @OwnerAuthority = 0 OR @OwnerEnabled = 0
		return 3
    
    SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -5
		
    SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT <> 1
		return -3
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestAllowed, StatelessGuestSupported, [Enabled], SiteKey, [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId AND Structured = 1
	
	SELECT ServiceId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId
	
	SELECT ClientId, ServiceType, ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients WHERE ClientId = @ClientId
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetOwnerDomains]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetOwnerDomains]
	@OwnerId	BIGINT,
	@OwnerName	NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Authority INT, @Enabled BIT
	
	SELECT @OwnerName = FullName, @Authority = Authority, @Enabled = [Enabled] FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@Rowcount = 0
		return -1
	
	if @Enabled = 0
		return 1

	if @Authority = 0
		return 2
			
	SELECT DISTINCT D.DomainId, D.DomainName 
	FROM Softnet_Sites S INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Users U ON U.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId AND U.UserKind = 4 AND U.[Enabled] = 1 AND S.Structured = 1 AND S.[Enabled] = 1 AND S.GuestSupported = 1 AND S.GuestAllowed = 1	
	ORDER BY D.DomainName ASC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetSiteDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetSiteDataset]
	@AccountName	NVARCHAR(256) = NULL,
	@SiteKey		VARCHAR(32),
	@CreatorId		BIGINT OUTPUT,
	@DomainId		BIGINT OUTPUT,
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT @CreatorId = O.OwnerId
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE AU.UserName = LOWER(@AccountName)
	if @@Rowcount = 0
		return -2

	DECLARE @SiteId BIGINT, @OwnerAuthority	INT, @OwnerEnabled	BIT

	SELECT 
		@OwnerAuthority = O.Authority,
		@OwnerEnabled = O.[Enabled],
		@SiteId = S.SiteId,
		@OwnerId = O.OwnerId,
		@DomainId = D.DomainId,
		@OwnerName = O.FullName,
		@DomainName = D.DomainName
	FROM Softnet_Sites S 
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE S.SiteKey = @SiteKey
	if @@Rowcount = 0
		return -1
	
	if @OwnerAuthority = 0 OR @OwnerEnabled = 0
		return 1
	
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, StatelessGuestSupported, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId AND Structured = 1
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId
	ORDER BY HostName ASC
	
	SELECT UserId, UserName, [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@Rowcount <> 1
		return -5
	
	SELECT C.ClientId, ClientKey, C.ServiceType, C.ContractAuthor, ClientDescription, PingPeriod
	FROM Softnet_Clients C 	
	INNER JOIN Softnet_Sites S ON C.SiteId = S.SiteId
	INNER JOIN Softnet_Users U ON C.UserId = U.UserId
	INNER JOIN Softnet_GuestCreators GC ON GC.ClientId = C.ClientId
	WHERE U.DomainId = @DomainId AND U.UserKind = 4 AND S.SiteId = @SiteId AND GC.CreatorId = @CreatorId ORDER BY C.ClientId DESC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_GetSiteDataset2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_GetSiteDataset2]
	@SiteKey		VARCHAR(32),
	@DomainId		BIGINT OUTPUT,
	@OwnerId		BIGINT OUTPUT,
	@OwnerName		NVARCHAR(256) OUTPUT,
	@DomainName		NVARCHAR(256) OUTPUT,	
	@GuestEnabled	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @SiteId BIGINT, @OwnerAuthority	INT, @OwnerEnabled	BIT

	SELECT 
		@OwnerAuthority = O.Authority,
		@OwnerEnabled = O.[Enabled],
		@SiteId = S.SiteId,
		@OwnerId = O.OwnerId,
		@DomainId = D.DomainId,
		@OwnerName = O.FullName,
		@DomainName = D.DomainName
	FROM Softnet_Sites S 
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId
	WHERE S.SiteKey = @SiteKey
	if @@Rowcount = 0
		return -1
		
	if @OwnerAuthority = 0 OR @OwnerEnabled = 0
		return 1
		
	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@Rowcount <> 1
		return -5
		
	SELECT SiteId, SiteKind, ServiceType, ContractAuthor, SSHash, GuestSupported, GuestAllowed, StatelessGuestSupported, [Enabled], [Description]
	FROM Softnet_Sites WHERE SiteId = @SiteId AND Structured = 1
	if @@Rowcount = 0
		return -1
	
	SELECT ServiceId, ServiceType, ContractAuthor, [Version], HostName, SSHash, [Enabled], PingPeriod
	FROM Softnet_Services WHERE SiteId = @SiteId
	ORDER BY HostName ASC
	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtPublic_SaveAccountAccessKey]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtPublic_SaveAccountAccessKey]
	@ClientId			BIGINT,	
	@AccessKey		VARCHAR(64) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @StoredAccessKey VARCHAR(64), @CreatedTime BIGINT
		
	SELECT @StoredAccessKey = AccessKey, @CreatedTime = KeyCreatedTime
	FROM Softnet_GuestParams WHERE ClientId = @ClientId
	if @@Rowcount = 0
		return -1	

	DECLARE @CurrentTime BIGINT
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT	

	if @StoredAccessKey IS NULL
		UPDATE Softnet_GuestParams SET AccessKey = @AccessKey, KeyCreatedTime = @CurrentTime WHERE ClientId = @ClientId
	else
	begin
		if (@CurrentTime - @CreatedTime > 180) OR (@CurrentTime - @CreatedTime < 0)
			UPDATE Softnet_GuestParams SET AccessKey = @AccessKey, KeyCreatedTime = @CurrentTime WHERE ClientId = @ClientId
		else
			SET @AccessKey = @StoredAccessKey
	end	
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetAnyoneCanRegister]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetAnyoneCanRegister]
	@ParamValue		NVARCHAR(1) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'AnyoneCanRegister'
	if @@ROWCOUNT = 0
		SET @ParamValue = NULL
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetAutoAssignProviderRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetAutoAssignProviderRole]
	@ParamValue		NVARCHAR(1) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'AssignProviderRole'
	if @@ROWCOUNT = 0
		SET @ParamValue = NULL
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetClientKeyLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetClientKeyLength] 
	@ParamValue		NVARCHAR(5) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'ClientKeyLength' 
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetClientPasswordLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetClientPasswordLength]
	@ParamValue		NVARCHAR(2) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'ClientPasswordLength' 
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetMailingData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetMailingData]
	@ManagementSystemUrl	NVARCHAR(1024) OUTPUT,
	@SecretKey				NVARCHAR(64) OUTPUT,
	@CurrentTime			BIGINT OUTPUT,
	@EMailAddress			NVARCHAR(1024) OUTPUT,
	@EmailPassword			NVARCHAR(64) OUTPUT,
	@SmtpServer				NVARCHAR(1024) OUTPUT,
	@SmtpPort				NVARCHAR(5) OUTPUT,
	@SmtpRequiresSSL		NVARCHAR(1) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ManagementSystemUrl = ParamValue FROM Softnet_Settings WHERE ParamName = N'ManagementSystemUrl'
	if @@ROWCOUNT = 0
		SET @ManagementSystemUrl = NULL

	SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT = 0
		SET @SecretKey = NULL

	SELECT @EMailAddress = ParamValue FROM Softnet_Settings WHERE ParamName = N'EmailAddress' 
	if @@ROWCOUNT = 0
		SET @EMailAddress = NULL
		
	SELECT @EmailPassword = ParamValue FROM Softnet_Settings WHERE ParamName = N'EmailPassword' 
	if @@ROWCOUNT = 0
		SET @EmailPassword = NULL
	
	SELECT @SmtpServer = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpServer' 
	if @@ROWCOUNT = 0
		SET @SmtpServer = NULL

	SELECT @SmtpPort = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpPort' 
	if @@ROWCOUNT = 0
		SET @SmtpPort = NULL
	
	SELECT @SmtpRequiresSSL = ParamValue FROM Softnet_Settings WHERE ParamName = N'SmtpRequiresSSL' 
	if @@ROWCOUNT = 0
		SET @SmtpRequiresSSL = NULL

	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetSecretKey]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetSecretKey]
	@ParamValue		NVARCHAR(64) OUTPUT 
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	if @@ROWCOUNT = 0
		SET @ParamValue = NULL	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetSecretKeyAndTime]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetSecretKeyAndTime]
	@SecretKey		NVARCHAR(64) OUTPUT,
	@CurrentTime	BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @SecretKey = ParamValue FROM Softnet_Settings WHERE ParamName = N'SecretKey'
	IF @@ROWCOUNT = 0
		SET @SecretKey = NULL
	
	EXEC Softnet_Clock_GetTicks @CurrentTime OUTPUT	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetServerAddress]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetServerAddress]
	@ParamValue		NVARCHAR(1024) OUTPUT 
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'ServerAddress'
	if @@ROWCOUNT = 0
		SET @ParamValue = NULL	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetServicePasswordLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetServicePasswordLength]
	@ParamValue		NVARCHAR(2) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'ServicePasswordLength' 
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetSiteUrl]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetSiteUrl]
	@ParamValue		NVARCHAR(1024) OUTPUT 
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'SiteUrl'
	if @@ROWCOUNT = 0
		SET @ParamValue = NULL	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtSettings_GetUserPasswordMinLength]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtSettings_GetUserPasswordMinLength]
	@ParamValue		NVARCHAR(2) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @ParamValue = ParamValue FROM Softnet_Settings WHERE ParamName = N'UserPasswordMinLength' 
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_AssignRoleProvider]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_AssignRoleProvider]
	@OwnerId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId uniqueidentifier

	SELECT @UserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return
	
	DECLARE @ApplicationId uniqueidentifier, @RoleId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return

	SELECT @RoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider'
	if @@ROWCOUNT = 0
		return			

	IF NOT EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
	begin
		INSERT INTO aspnet_UsersInRoles(UserId, RoleId)
		VALUES(@UserId, @RoleId)
	end
	
	SELECT @RoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return	
	
	IF NOT EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
		UPDATE Softnet_Owners SET Authority = 1 WHERE OwnerId = @OwnerId
	ELSE
		UPDATE Softnet_Owners SET Authority = 2 WHERE OwnerId = @OwnerId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_DeleteOwner]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_DeleteOwner]
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_DisableOwner]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_DisableOwner]
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ANUserId uniqueidentifier
	SELECT @ANUserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	IF @@ROWCOUNT = 0
		return -1

	BEGIN TRY
		BEGIN TRANSACTION	

		UPDATE Softnet_Owners SET [Enabled] = 0 WHERE OwnerId = @OwnerId
		if @@ROWCOUNT = 0
		begin
			ROLLBACK TRANSACTION
			return -1
		end
		
		UPDATE aspnet_Membership SET IsApproved = 0 WHERE UserId = @ANUserId
		if @@ROWCOUNT = 0
		begin
			ROLLBACK TRANSACTION
			return -1
		end
		
		COMMIT TRANSACTION		
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH			
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_EnableOwner]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_EnableOwner]
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @ANUserId uniqueidentifier
	SELECT @ANUserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	IF @@ROWCOUNT = 0
		return -1

	BEGIN TRY
		BEGIN TRANSACTION	

		UPDATE Softnet_Owners SET [Enabled] = 1 WHERE OwnerId = @OwnerId
		if @@ROWCOUNT = 0
		begin
			ROLLBACK TRANSACTION
			return -1
		end
		
		UPDATE aspnet_Membership SET IsApproved = 1 WHERE UserId = @ANUserId
		if @@ROWCOUNT = 0
		begin
			ROLLBACK TRANSACTION
			return -1
		end
		
		COMMIT TRANSACTION		
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH			
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_FindNextUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_FindNextUsers]
	@Filter			NVARCHAR(256),
	@LastSelectedId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 15 OwnerId, Authority, [Enabled], FullName
	FROM Softnet_Owners
	WHERE OwnerId > @LastSelectedId AND FullName like @Filter ORDER BY OwnerId ASC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_FindPrevUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_FindPrevUsers]
	@Filter				NVARCHAR(256),
	@FirstSelectedId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT TOP 15 OwnerId, Authority, [Enabled], FullName
	FROM Softnet_Owners
	WHERE OwnerId < @FirstSelectedId AND FullName like @Filter ORDER BY OwnerId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_FindUsers]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_FindUsers]
	@Filter		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT TOP 15 OwnerId, Authority, [Enabled], FullName
	FROM Softnet_Owners
	WHERE FullName like @Filter ORDER BY OwnerId ASC	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_GetIdentitiesForEnabledOwner]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_GetIdentitiesForEnabledOwner] 
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @UserIDs TABLE(SiteId BIGINT, UserId BIGINT)
	DECLARE @Users TABLE(UserId BIGINT, Dedicated BIT, DomainId BIGINT)

	INSERT INTO @Users(UserId, Dedicated, DomainId)
	SELECT U.UserId, U.Dedicated, D.DomainId FROM Softnet_Users U
	INNER JOIN Softnet_Contacts C ON C.ContactId = U.ContactId
	INNER JOIN Softnet_Domains D ON D.DomainId = U.DomainId
	WHERE C.ConsumerId = @OwnerId AND U.UserKind = 3 AND U.[Enabled] = 1

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM Softnet_Sites S
	INNER JOIN @Users U ON U.DomainId = S.DomainId
	WHERE U.Dedicated = 0 AND S.RolesSupported = 1 AND S.DefaultRoleId IS NOT NULL

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM @Users U 
	JOIN Softnet_UsersInRoles UiR ON UiR.UserId = U.UserId
	JOIN Softnet_Roles R ON R.RoleId = UiR.RoleId
	JOIN Softnet_Sites S ON S.SiteId = R.SiteId
	WHERE S.DomainId = U.DomainId

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM Softnet_Sites S
	INNER JOIN @Users U ON U.DomainId = S.DomainId
	WHERE U.Dedicated = 0 AND S.RolesSupported = 0 AND S.ImplicitUsersAllowed = 1

	INSERT INTO @UserIDs(SiteId, UserId)
	SELECT S.SiteId, U.UserId FROM @Users U 
	JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
	JOIN Softnet_Sites S ON S.SiteId = SU.SiteId
	WHERE S.DomainId = U.DomainId

	SELECT S.SiteId FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId

	SELECT DISTINCT SiteId, UserId FROM @UserIDs
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_GetSiteIdentitiesForOwner]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_GetSiteIdentitiesForOwner]
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT S.SiteId FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId

	SELECT S.SiteId FROM Softnet_Contacts C
	INNER JOIN Softnet_Users U ON C.ContactId = U.ContactId
	INNER JOIN Softnet_Domains D ON D.DomainId = U.DomainId
	INNER JOIN Softnet_Sites S ON D.DomainId = S.DomainId
	WHERE C.ConsumerId = @OwnerId AND C.[Status] = 0 AND U.UserKind = 3
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_GetSiteIdentitiesForProvider]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_GetSiteIdentitiesForProvider]
	@OwnerId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT S.SiteId FROM Softnet_Sites S
	INNER JOIN Softnet_Domains D ON S.DomainId = D.DomainId
	WHERE D.OwnerId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_GetUserData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_GetUserData]
	@OwnerId		BIGINT,
	@AccountName	NVARCHAR(256) OUTPUT,
	@FullName		NVARCHAR(256) OUTPUT,
	@EMail			NVARCHAR(256) OUTPUT,
	@Authority		INT OUTPUT,
	@IsEnabled		BIT OUTPUT,
	@IsLocked		BIT OUTPUT,
	@AuthMismatch	BIT OUTPUT,
	@StatusMismatch	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId uniqueidentifier, @IsApproved BIT, @IsProvider BIT, @IsAdmin BIT

	SELECT 
		@AccountName = AU.UserName, 
		@FullName = O.FullName, 
		@EMail = O.EMail,
		@UserId = AU.UserId,
		@Authority = O.Authority,
		@IsEnabled = O.[Enabled]
	FROM Softnet_Owners O INNER JOIN aspnet_Users AU ON O.ANUserId = AU.UserId
	WHERE O.OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return -1

	SELECT @IsApproved = IsApproved, @IsLocked = IsLockedOut FROM aspnet_Membership WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -1

	DECLARE @ApplicationId uniqueidentifier, @RoleId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return -4

	SELECT @RoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider'
	if @@ROWCOUNT = 0
		return -4			
	
	IF EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
		SET @IsProvider = 1
	ELSE
		SET @IsProvider = 0
		
	SELECT @RoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return -4			
	
	IF EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @RoleId)
		SET @IsAdmin = 1
	ELSE
		SET @IsAdmin = 0
	
	IF @IsAdmin = 1
	begin
		IF @Authority = 2
			SET @AuthMismatch = 0
		else
		begin
			UPDATE Softnet_Owners SET Authority = 2 WHERE OwnerId = @OwnerId
			SET @Authority = 2
			SET @AuthMismatch = 1
		end		
	end 
	ELSE IF @IsProvider = 1
	begin
		IF @Authority = 1
			SET @AuthMismatch = 0
		else
		begin
			UPDATE Softnet_Owners SET Authority = 1 WHERE OwnerId = @OwnerId
			SET @Authority = 1
			SET @AuthMismatch = 1
		end
	end else
	begin
		IF @Authority = 0
			SET @AuthMismatch = 0
		else
		begin
			UPDATE Softnet_Owners SET Authority = 0 WHERE OwnerId = @OwnerId
			SET @Authority = 0
			SET @AuthMismatch = 1
		end
	end	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_MgtUsers_RemoveRoleProvider]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_MgtUsers_RemoveRoleProvider]
	@OwnerId	BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserId uniqueidentifier

	SELECT @UserId = ANUserId FROM Softnet_Owners WHERE OwnerId = @OwnerId
	if @@ROWCOUNT = 0
		return
	
	DECLARE @ApplicationId uniqueidentifier, @ProviderRoleId uniqueidentifier, @AdministratorRoleId uniqueidentifier

	SELECT @ApplicationId = ApplicationId FROM aspnet_Applications WHERE ApplicationName = N'Softnet'
	if @@ROWCOUNT = 0
		return

	SELECT @ProviderRoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Provider'
	if @@ROWCOUNT = 0
		return			

	SELECT @AdministratorRoleId = RoleId FROM aspnet_Roles WHERE ApplicationId = @ApplicationId AND RoleName = N'Administrator'
	if @@ROWCOUNT = 0
		return			

	DELETE aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @ProviderRoleId

	IF NOT EXISTS(SELECT 1 FROM aspnet_UsersInRoles WHERE UserId = @UserId AND RoleId = @AdministratorRoleId)
		UPDATE Softnet_Owners SET Authority = 0 WHERE OwnerId = @OwnerId
	ELSE
		UPDATE Softnet_Owners SET Authority = 2 WHERE OwnerId = @OwnerId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_RBMembership_GetGuestStatus]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_RBMembership_GetGuestStatus]
	@SiteId		BIGINT,
	@Allowed	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @DomainId BIGINT, @GuestEnabled BIT, @GuestAllowed BIT 
	SELECT @DomainId = DomainId, @GuestAllowed = GuestAllowed FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -1
	
	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -5
	
	if @GuestEnabled = 1 AND @GuestAllowed = 1
		SET @Allowed = 1
	else
		SET @Allowed = 0
			
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_RBMembership_GetUserData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_RBMembership_GetUserData]	
	@UserId		BIGINT,
	@SiteId		BIGINT,
	@UserName	NVARCHAR(256) OUTPUT,
	@UserKind	INT OUTPUT,
	@ContactId	BIGINT = NULL OUTPUT,
	@ConsumerId	BIGINT = NULL OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @UserEnabled BIT, @UserDedicated BIT
	
	SELECT
		@UserName = UserName,
		@UserEnabled = [Enabled],
		@UserDedicated = Dedicated,
		@UserKind = UserKind,
		@ContactId = ContactId
	FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -1
	
	if @UserEnabled = 0
		return 1
	
	if @UserKind = 3
	begin		
		if @ContactId IS NULL
			return 1

		SELECT @UserEnabled = O.[Enabled], @ConsumerId = C.ConsumerId 
		FROM Softnet_Contacts C INNER JOIN Softnet_Owners O
		ON C.ConsumerId = O.OwnerId
		WHERE ContactId = @ContactId AND C.[Status] = 0
		if @@ROWCOUNT = 0
			return 1

		if @UserEnabled = 0
			return 1
	end

	DECLARE @UserRoles TABLE (RoleId BIGINT)
	DECLARE @DefaultRoleId BIGINT, @RoleCount INT

	if @UserKind = 2 OR @UserKind = 3
	begin
		if @UserDedicated = 0
		begin
			SELECT @DefaultRoleId = DefaultRoleId FROM Softnet_Sites WHERE SiteId = @SiteId
			if @@ROWCOUNT = 1 AND @DefaultRoleId IS NOT NULL
			begin
				INSERT INTO @UserRoles(RoleId)
				VALUES(@DefaultRoleId)
			end
		end
		
		INSERT INTO @UserRoles(RoleId)
		SELECT UR.RoleId FROM Softnet_UsersInRoles UR INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId 
		WHERE UR.UserId = @UserId AND R.SiteId = @SiteId
		
		SELECT @RoleCount = COUNT(*) FROM @UserRoles
		if @RoleCount = 0
			return 1
		
		SELECT DISTINCT RoleId FROM @UserRoles
		return 0
	end	
	else if @UserKind = 1
	begin	
		SELECT @DefaultRoleId = DefaultRoleId FROM Softnet_Sites WHERE SiteId = @SiteId
		if @@ROWCOUNT = 1 AND @DefaultRoleId IS NOT NULL
		begin
			INSERT INTO @UserRoles(RoleId)
			VALUES(@DefaultRoleId)
		end
		
		INSERT INTO @UserRoles(RoleId)
		SELECT UR.RoleId FROM Softnet_UsersInRoles UR INNER JOIN Softnet_Roles R ON UR.RoleId = R.RoleId 
		WHERE UR.UserId = @UserId AND R.SiteId = @SiteId
		
		SELECT @RoleCount = COUNT(*) FROM @UserRoles
		if @RoleCount = 0
			return 1
			
		SELECT DISTINCT RoleId FROM @UserRoles
		return 0
	end 
	
	return -2
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_RBMembership_GetUserList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_RBMembership_GetUserList]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DomainId BIGINT, @DefaultRoleId BIGINT
	
	SELECT @DomainId = DomainId, @DefaultRoleId = DefaultRoleId
	FROM Softnet_Sites WHERE SiteId = @SiteId		
	if @@Rowcount = 0
		return -1
	
	DECLARE @Membership TABLE(UserId BIGINT, RoleId BIGINT, UserName NVARCHAR(256), UserKind INT, ContactId BIGINT NULL, ConsumerId BIGINT NULL)
	
	if @DefaultRoleId IS NOT NULL
	begin
		INSERT INTO @Membership(UserId, RoleId, UserName, UserKind)
		SELECT UserId, @DefaultRoleId, UserName, UserKind 
		FROM Softnet_Users 
		WHERE DomainId = @DomainId AND [Enabled] = 1 AND (UserKind = 1 OR (UserKind = 2 AND Dedicated = 0))

		INSERT INTO @Membership(UserId, RoleId, UserName, UserKind, ContactId, ConsumerId)
		SELECT UserId, @DefaultRoleId, UserName, UserKind, C.ContactId, C.ConsumerId
		FROM Softnet_Users U 
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Owners O ON O.OwnerId = C.ConsumerId
		WHERE DomainId = @DomainId AND U.[Enabled] = 1 AND UserKind = 3 AND Dedicated = 0 AND C.[Status] = 0 AND O.[Enabled] = 1
	end
	
	INSERT INTO @Membership(UserId, RoleId, UserName, UserKind)
	SELECT U.UserId, UiR.RoleId, U.UserName, U.UserKind FROM Softnet_Users U 
	JOIN Softnet_UsersInRoles UiR ON U.UserId = UiR.UserId
	JOIN Softnet_Roles R ON UiR.RoleId = R.RoleId
	WHERE R.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)

	INSERT INTO @Membership(UserId, RoleId, UserName, UserKind, ContactId, ConsumerId)
	SELECT U.UserId, UiR.RoleId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
	INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
	INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
	INNER JOIN Softnet_UsersInRoles UiR ON U.UserId = UiR.UserId
	INNER JOIN Softnet_Roles R ON UiR.RoleId = R.RoleId
	WHERE R.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
		
	SELECT DISTINCT UserId, UserName, UserKind, ContactId, ConsumerId FROM @Membership
	SELECT RoleId, RoleName FROM Softnet_Roles WHERE SiteId = @SiteId
	SELECT DISTINCT UserId, RoleId FROM @Membership	

	return 0	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Service_GetIData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Service_GetIData]
	@ServiceUid			UNIQUEIDENTIFIER,
	@SiteUid			UNIQUEIDENTIFIER OUTPUT,
	@SiteId				BIGINT OUTPUT,	
	@ServiceId			BIGINT OUTPUT,
	@ServiceType		NVARCHAR(256) OUTPUT,
	@ContractAuthor		NVARCHAR(256) OUTPUT,
	@Version			NVARCHAR(64) OUTPUT,
	@SSHash				VARCHAR(64) OUTPUT,
	@StorageUid			UNIQUEIDENTIFIER OUTPUT,
	@SaltedPassword		VARCHAR(64) OUTPUT,
	@Salt				VARCHAR(64) OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		@SiteUid			= ST.SiteUid,
		@SiteId				= S.SiteId,		
		@ServiceId			= S.ServiceId,
		@ServiceType		= S.ServiceType,
		@ContractAuthor		= S.ContractAuthor,
		@Version			= S.[Version],
		@SSHash				= S.SSHash,
		@StorageUid			= S.StorageUid,
		@SaltedPassword		= S.SaltedPassword,
		@Salt				= S.Salt
	FROM Softnet_Services S INNER JOIN Softnet_Sites ST ON S.SiteId = ST.SiteId WHERE ServiceUid = @ServiceUid
	if @@Rowcount = 0
		return -1			
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Service_SaveEventAcknowledgment]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Service_SaveEventAcknowledgment]
	@SiteId			BIGINT,
	@ServiceId		BIGINT,
	@EventName		NVARCHAR(256),
	@InstanceUid	UNIQUEIDENTIFIER	
AS
BEGIN	
	SET NOCOUNT ON;
	
	if NOT EXISTS(SELECT 1 FROM Softnet_Events WHERE SiteId = @SiteId AND EventName = @EventName)
		return -1
	
	DECLARE @RecordId BIGINT, @ExistingInstanceUid UNIQUEIDENTIFIER
	
	SELECT @RecordId = RecordId, @ExistingInstanceUid = InstanceUid FROM Softnet_AcknowledgedEvents WHERE ServiceId = @ServiceId AND EventName = @EventName
	if @@ROWCOUNT = 1
	begin
		if @InstanceUid = @ExistingInstanceUid
			return 1
		UPDATE Softnet_AcknowledgedEvents SET InstanceUid = @InstanceUid WHERE RecordId = @RecordId
	end else
	begin
		INSERT INTO Softnet_AcknowledgedEvents(ServiceId, EventName, InstanceUid)
		VALUES(@ServiceId, @EventName, @InstanceUid)
	end
	
    return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Service_SaveStructure]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Service_SaveStructure] 
	@ServiceId			BIGINT,		
	@ServiceType		NVARCHAR(256),
	@ContractAuthor		NVARCHAR(256),
	@Version			NVARCHAR(64),
	@SSHash				VARCHAR(64),
	@SSXml				NVARCHAR(4000)
AS
BEGIN
	UPDATE Softnet_Services SET
		ServiceType		= @ServiceType,
		ContractAuthor	= @ContractAuthor,
		[Version]		= @Version,
		SSHash			= @SSHash,
		SSXml			= @SSXml
	WHERE ServiceId = @ServiceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Service_UpdateStorageUid]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Service_UpdateStorageUid]
	@ServiceId		BIGINT,
	@StorageUid		UNIQUEIDENTIFIER
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Services SET StorageUid = @StorageUid WHERE ServiceId = @ServiceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Service_UpdateVersion]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Service_UpdateVersion] 
	@ServiceId			BIGINT,	
	@Version			NVARCHAR(64)
AS
BEGIN
	UPDATE Softnet_Services SET [Version] = @Version WHERE ServiceId = @ServiceId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ServiceGroup_GetItemData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ServiceGroup_GetItemData]
	@ServiceId		BIGINT,
	@Hostname		NVARCHAR(256) OUTPUT,	
	@EnabledStatus	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @Hostname = HostName, @EnabledStatus = [Enabled] FROM Softnet_Services WHERE ServiceId = @ServiceId
	if @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ServiceParams_GetData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ServiceParams_GetData] 
	@ServiceId		BIGINT,
	@PingPeriod		INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @PingPeriod = PingPeriod FROM Softnet_Services WHERE ServiceId = @ServiceId
	IF @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ServiceParams_GetPingPeriod]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ServiceParams_GetPingPeriod] 
	@ServiceId		BIGINT,
	@PingPeriod		INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT @PingPeriod = PingPeriod FROM Softnet_Services WHERE ServiceId = @ServiceId
	IF @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_ServiceParams_SetPingPeriod]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_ServiceParams_SetPingPeriod]
	@ServiceId		BIGINT,
	@PingPeriod		INT
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE Softnet_Services SET PingPeriod = @PingPeriod WHERE ServiceId = @ServiceId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Site_GetDataset]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Site_GetDataset]
	@SiteId				BIGINT,
	@RolesSupported		BIT,
	@EventsSupported	BIT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DomainId BIGINT
	
	if @RolesSupported = 1
	begin
		DECLARE @DefaultRoleId BIGINT
	
		SELECT @DomainId = DomainId, @DefaultRoleId = DefaultRoleId
		FROM Softnet_Sites WHERE SiteId = @SiteId		
		if @@Rowcount = 0
			return -1
	
		SELECT ServiceId, HostName, [Version], [Enabled] FROM Softnet_Services WHERE SiteId = @SiteId
	
		DECLARE @RBMembership TABLE(UserId BIGINT, RoleId BIGINT, UserName NVARCHAR(256), UserKind INT, ContactId BIGINT NULL, ConsumerId BIGINT NULL)
		
		if @DefaultRoleId IS NOT NULL
		begin
			INSERT INTO @RBMembership(UserId, RoleId, UserName, UserKind)
			SELECT UserId, @DefaultRoleId, UserName, UserKind 
			FROM Softnet_Users 
			WHERE DomainId = @DomainId AND [Enabled] = 1 AND (UserKind = 1 OR (UserKind = 2 AND Dedicated = 0))
			
			INSERT INTO @RBMembership(UserId, RoleId, UserName, UserKind, ContactId, ConsumerId)
			SELECT UserId, @DefaultRoleId, UserName, UserKind, C.ContactId, C.ConsumerId
			FROM Softnet_Users U 
			INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
			INNER JOIN Softnet_Owners O ON O.OwnerId = C.ConsumerId
			WHERE DomainId = @DomainId AND U.[Enabled] = 1 AND UserKind = 3 AND Dedicated = 0 AND C.[Status] = 0 AND O.[Enabled] = 1
		end
		
		INSERT INTO @RBMembership(UserId, RoleId, UserName, UserKind)
		SELECT U.UserId, UiR.RoleId, U.UserName, U.UserKind FROM Softnet_Users U 
		JOIN Softnet_UsersInRoles UiR ON U.UserId = UiR.UserId
		JOIN Softnet_Roles R ON UiR.RoleId = R.RoleId
		WHERE R.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)
		
		INSERT INTO @RBMembership(UserId, RoleId, UserName, UserKind, ContactId, ConsumerId)
		SELECT U.UserId, UiR.RoleId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
		INNER JOIN Softnet_UsersInRoles UiR ON U.UserId = UiR.UserId
		INNER JOIN Softnet_Roles R ON UiR.RoleId = R.RoleId
		WHERE R.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
		
		SELECT DISTINCT UserId, UserName, UserKind, ContactId, ConsumerId FROM @RBMembership
		SELECT RoleId, RoleName FROM Softnet_Roles WHERE SiteId = @SiteId
		SELECT DISTINCT UserId, RoleId FROM @RBMembership	
		
		if @EventsSupported = 1
		begin
			SELECT EventId, EventName, EventKind, LifeTicks, QueueSize, GuestAccess FROM Softnet_Events WHERE SiteId = @SiteId
			SELECT ER.EventId, ER.RoleId FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.CreatedTimeTicks,
				EI.CreatedDate, 
				EI.IsNullEvent,
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 128 THEN EI.Arguments ELSE NULL END AS VARBINARY(128)) AS Arguments
			FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.CreatedTimeTicks,
				EI.CreatedDate, 
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 128 THEN EI.Arguments ELSE NULL END AS VARBINARY(128)) AS Arguments
			FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.ClientId,
				EI.CreatedTimeTicks,
				EI.CreatedDate,
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 64 THEN EI.Arguments ELSE NULL END AS VARBINARY(64)) AS Arguments
			FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
		end		
	end else
	begin
		DECLARE @ImplicitUsersAllowed BIT
	
		SELECT @DomainId = DomainId, @ImplicitUsersAllowed = ImplicitUsersAllowed
		FROM Softnet_Sites WHERE SiteId = @SiteId		
		if @@Rowcount = 0
			return -1
	
		SELECT ServiceId, HostName, [Version], [Enabled] FROM Softnet_Services WHERE SiteId = @SiteId
	
		if @ImplicitUsersAllowed = 0
		begin
			SELECT U.UserId, U.UserName, U.UserKind, NULL, NULL FROM Softnet_Users U 
			JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
			WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)
			UNION
			SELECT U.UserId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
			INNER JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
			INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
			INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
			WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
		end	else
		begin
			DECLARE @UBMembership TABLE (UserId BIGINT, UserName NVARCHAR(256), UserKind INT, ContactId BIGINT NULL, ConsumerId BIGINT NULL)
			
			INSERT INTO @UBMembership(UserId, UserName, UserKind, ContactId, ConsumerId)
			SELECT UserId, UserName, UserKind, NULL, NULL FROM Softnet_Users 
			WHERE DomainId = @DomainId AND [Enabled] = 1 AND (UserKind = 1 OR (UserKind = 2 AND Dedicated = 0))
			
			INSERT INTO @UBMembership(UserId, UserName, UserKind, ContactId, ConsumerId)
			SELECT UserId, UserName, UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U
			INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
			INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
			WHERE DomainId = @DomainId AND U.[Enabled] = 1 AND UserKind = 3 AND Dedicated = 0 AND C.[Status] = 0 AND O.[Enabled] = 1
			
			INSERT INTO @UBMembership(UserId, UserName, UserKind, ContactId, ConsumerId)
			SELECT U.UserId, U.UserName, U.UserKind, NULL, NULL FROM Softnet_Users U 
			JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
			WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)
			
			INSERT INTO @UBMembership(UserId, UserName, UserKind, ContactId, ConsumerId)
			SELECT U.UserId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
			INNER JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
			INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
			INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
			WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
			
			SELECT DISTINCT UserId, UserName, UserKind, ContactId, ConsumerId FROM @UBMembership		
		end
		
		if @EventsSupported = 1
		begin
			SELECT EventId, EventName, EventKind, LifeTicks, QueueSize, GuestAccess FROM Softnet_Events WHERE SiteId = @SiteId
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.CreatedTimeTicks,
				EI.CreatedDate,
				EI.IsNullEvent,
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 128 THEN EI.Arguments ELSE NULL END AS VARBINARY(128)) AS Arguments
			FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.CreatedTimeTicks,
				EI.CreatedDate,
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 128 THEN EI.Arguments ELSE NULL END AS VARBINARY(128)) AS Arguments
			FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
			SELECT 
				EI.InstanceId, 
				EI.EventId, 
				EI.ServiceId, 
				EI.ClientId,
				EI.CreatedTimeTicks,
				EI.CreatedDate,
				CAST(CASE WHEN EI.Arguments IS NOT NULL THEN 1 ELSE 0 END AS BIT) AS HasArguments,
				CAST(CASE WHEN EI.Arguments IS NOT NULL AND DATALENGTH(EI.Arguments) <= 64 THEN EI.Arguments ELSE NULL END AS VARBINARY(64)) AS Arguments
			FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId ORDER BY EI.InstanceId ASC
		end		
	end
	
	Return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Site_GetParams]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Site_GetParams]
	@SiteId					BIGINT,
	@SiteKind				INT OUTPUT,
	@SiteUid				UNIQUEIDENTIFIER OUTPUT,
	@Structured				BIT OUTPUT,
	@ServiceType			NVARCHAR(256) OUTPUT,
	@ContractAuthor			NVARCHAR(256) OUTPUT,
	@SSHash					VARCHAR(64) OUTPUT,	
	@GuestSupported			BIT OUTPUT,
	@GuestAllowed			BIT OUTPUT,
	@GuestEnabled			BIT OUTPUT,
	@StatelessGuestSupported	BIT OUTPUT,
	@SiteEnabled			BIT OUTPUT,
	@OwnerEligible			BIT OUTPUT,
	@RolesSupported			BIT OUTPUT,	
	@EventsSupported		BIT	OUTPUT
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @DomainId BIGINT
	
	SELECT
		@DomainId				= DomainId,
		@SiteUid				= SiteUid,
		@ServiceType			= ServiceType,
		@ContractAuthor			= ContractAuthor,
		@SiteKind				= SiteKind,
		@Structured				= Structured,
		@GuestSupported			= GuestSupported,
		@GuestAllowed			= GuestAllowed,
		@StatelessGuestSupported	= StatelessGuestSupported,
		@RolesSupported			= RolesSupported,		
		@EventsSupported		= EventsSupported,		
		@SSHash					= SSHash,
		@SiteEnabled			= [Enabled]
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return -1	

	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -5
	
	DECLARE @OwnerAuthority INT, @OwnerEnabled BIT
	
	SELECT @OwnerAuthority = Authority, @OwnerEnabled = O.[Enabled]
	FROM Softnet_Domains D 
	INNER JOIN Softnet_Owners O ON D.OwnerId = O.OwnerId	
	WHERE DomainId = @DomainId
	if @@Rowcount = 0 
		return -1
	
	if @OwnerAuthority >= 1 AND @OwnerEnabled = 1
		SET @OwnerEligible = 1
	else
		SET @OwnerEligible = 0
		
	Return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_Site_GetServiceList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_Site_GetServiceList]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT ServiceId, HostName, [Version], [Enabled] FROM Softnet_Services WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddDEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddDEvent]
	@SiteId			BIGINT,
	@EventName		NVARCHAR(256),
	@GuestAccess	INT,
	@EventId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	INSERT INTO Softnet_Events(SiteId, EventKind, EventName, LifeTicks, QueueSize, GuestAccess)
	VALUES(@SiteId, 3, @EventName, 6, 1, @GuestAccess)
	SET @EventId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddEventRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddEventRole]
	@EventId		BIGINT,
	@SiteId			BIGINT,
	@RoleName		NVARCHAR(256)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @RoleId	BIGINT
	
	SELECT @RoleId = RoleId FROM Softnet_Roles WHERE SiteId = @SiteId AND RoleName = @RoleName
	IF @@ROWCOUNT = 0
		Return -1
	
	INSERT INTO Softnet_EventRoles(EventId, RoleId)
	VALUES(@EventId, @RoleId)	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddPEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddPEvent]
	@SiteId			BIGINT,
	@EventName		NVARCHAR(256),
	@LifeTime		INT
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO Softnet_Events(SiteId, EventKind, EventName, LifeTicks, QueueSize, GuestAccess)
	VALUES(@SiteId, 4, @EventName, @LifeTime / 10, 1, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddQEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddQEvent]
	@SiteId			BIGINT,
	@EventName		NVARCHAR(256),
	@LifeTime		INT,
	@QueueSize		INT,
	@GuestAccess	INT,
	@EventId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO Softnet_Events(SiteId, EventKind, EventName, LifeTicks, QueueSize, GuestAccess)
	VALUES(@SiteId, 2, @EventName, @LifeTime / 10, @QueueSize, @GuestAccess)
	
	SET @EventId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddREvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddREvent]
	@SiteId			BIGINT,
	@EventName		NVARCHAR(256),
	@GuestAccess	INT,
	@EventId		BIGINT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	INSERT INTO Softnet_Events(SiteId, EventKind, EventName, LifeTicks, QueueSize, GuestAccess)
	VALUES(@SiteId, 1, @EventName, 6, 1, @GuestAccess)
	
	SET @EventId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_AddRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_AddRole]
	@SiteId			BIGINT,
	@RoleName		NVARCHAR(256),
	@Index			INT
AS
BEGIN
	INSERT INTO Softnet_Roles(SiteId, RoleName, Idx)
	VALUES(@SiteId, @RoleName, @Index)
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_GetSiteParams]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_GetSiteParams]
	@SiteId				BIGINT,
	@Structured		BIT OUTPUT,
	@ServiceType		NVARCHAR(256) OUTPUT,
	@ContractAuthor		NVARCHAR(256) OUTPUT,
	@RolesSupported		BIT OUTPUT,
	@EventsSupported	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		@Structured			= Structured,
		@ServiceType		= ServiceType,
		@ContractAuthor		= ContractAuthor,
		@RolesSupported		= RolesSupported,
		@EventsSupported	= EventsSupported
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -1
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_GetSSData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_GetSSData]
	@ServiceId		BIGINT, 
	@SSXml			NVARCHAR(4000) OUT,
	@SSHash			VARCHAR(64) OUT
AS
BEGIN
	SELECT @SSXml = SSXml, @SSHash = SSHash FROM Softnet_Services	WHERE ServiceId = @ServiceId
	IF @@Rowcount = 0
		Return -1
	Return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_RBSiteBegin]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_RBSiteBegin]
	@SiteId					BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION		
			UPDATE Softnet_Sites SET Structured = 0 WHERE SiteId = @SiteId	
			
			if EXISTS(SELECT TOP 1 EventId FROM Softnet_Events WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId			
				DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE Softnet_Events WHERE SiteId = @SiteId
			end
		
			if EXISTS(SELECT TOP 1 RoleId FROM Softnet_Roles WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE UIR FROM Softnet_UsersInRoles UIR INNER JOIN Softnet_Roles R ON UIR.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE Softnet_Roles WHERE SiteId = @SiteId
			end
			
			DELETE Softnet_SiteUsers WHERE SiteId = @SiteId	
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_RBSiteEnd]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_RBSiteEnd]
	@SiteId					BIGINT,	
	@ServiceType			NVARCHAR(256),
	@ContractAuthor			NVARCHAR(256),
	@SSHash					VARCHAR(64),
	@GuestSupported			BIT = 0,
	@StatelessGuestSupported	BIT = 0,
	@EventsSupported		BIT = 0,
	@OwnerDefaultRole		NVARCHAR(256) = NULL
AS
BEGIN
	SET NOCOUNT ON;
	
	if @OwnerDefaultRole IS NOT NULL
	Begin
		DECLARE @UserId BIGINT, @RoleId BIGINT, @DomainId BIGINT
		
		SELECT @DomainId = DomainId FROM Softnet_Sites WHERE SiteId = @SiteId
		if @@Rowcount = 0
			return
			
		SELECT @RoleId = RoleId FROM Softnet_Roles WHERE SiteId = @SiteId AND RoleName = @OwnerDefaultRole
		if @@Rowcount = 0
			SET @RoleId = NULL
		SELECT @UserId = UserId FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 1
		if @@Rowcount = 0
			SET @UserId = NULL
		
		if(@UserId IS NOT NULL AND @RoleId IS NOT NULL)
		begin
			INSERT INTO Softnet_UsersInRoles(UserId, RoleId)
			VALUES(@UserId, @RoleId)
		end
	End
	
	UPDATE Softnet_Sites SET
		ServiceType				= @ServiceType,
		ContractAuthor			= @ContractAuthor,
		SSHash					= @SSHash,
		GuestSupported			= @GuestSupported,
		GuestAllowed			= 0,
		StatelessGuestSupported	= @StatelessGuestSupported,			
		RolesSupported			= 1,
		EventsSupported			= @EventsSupported,
		Structured				= 1
	WHERE SiteId = @SiteId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_UBSiteBegin]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_UBSiteBegin]
	@SiteId					BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION		
			UPDATE Softnet_Sites SET Structured = 0 WHERE SiteId = @SiteId	
		
			if EXISTS(SELECT TOP 1 EventId FROM Softnet_Events WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId			
				DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE EI FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
				DELETE Softnet_Events WHERE SiteId = @SiteId
			end
		
			if EXISTS(SELECT TOP 1 RoleId FROM Softnet_Roles WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE UIR FROM Softnet_UsersInRoles UIR INNER JOIN Softnet_Roles R ON UIR.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE Softnet_Roles WHERE SiteId = @SiteId
			end
			
			DELETE Softnet_SiteUsers WHERE SiteId = @SiteId	
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteConstruction_UBSiteEnd]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteConstruction_UBSiteEnd]
	@SiteId					BIGINT,
	@ServiceType			NVARCHAR(256),
	@ContractAuthor			NVARCHAR(256),
	@SSHash					VARCHAR(64),
	@GuestSupported			BIT = 0,
	@StatelessGuestSupported	BIT = 0,
	@EventsSupported		BIT = 0
AS
BEGIN
	SET NOCOUNT ON;	
	DECLARE @UserId BIGINT, @RoleId BIGINT, @DomainId BIGINT

	SELECT @DomainId = DomainId FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return
		
	SELECT @UserId = UserId FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 1
	if @@Rowcount > 0
	begin
		INSERT INTO Softnet_SiteUsers(SiteId, UserId)
		VALUES(@SiteId, @UserId)
	end
	
	UPDATE Softnet_Sites SET
		ServiceType				= @ServiceType,
		ContractAuthor			= @ContractAuthor,
		SSHash					= @SSHash,
		GuestSupported			= @GuestSupported,
		GuestAllowed			= 0,
		StatelessGuestSupported	= @StatelessGuestSupported,			
		RolesSupported			= 0,
		ImplicitUsersAllowed	= 0,
		EventsSupported			= @EventsSupported,
		Structured				= 1
	WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_DeleteEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_DeleteEvent]
	@EventId		BIGINT
AS
BEGIN
	DELETE Softnet_EventSubscriptions WHERE EventId = @EventId
	DELETE Softnet_REventInstances WHERE EventId = @EventId
	DELETE Softnet_QEventInstances WHERE EventId = @EventId
	DELETE Softnet_PEventInstances WHERE EventId = @EventId
	DELETE Softnet_Events WHERE EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_DeleteRole]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_DeleteRole]
	@RoleId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DELETE Softnet_UsersInRoles WHERE RoleId = @RoleId
	DELETE Softnet_EventRoles WHERE RoleId = @RoleId
	DELETE Softnet_Roles WHERE RoleId = @RoleId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_RBSiteBegin]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_RBSiteBegin]
	@SiteId					BIGINT,	
	@EventsSupported		BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION		
			UPDATE Softnet_Sites SET Structured = 0 WHERE SiteId = @SiteId
									
			if EXISTS(SELECT TOP 1 * FROM Softnet_Events WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId			
				if @EventsSupported = 0
				begin
					DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE Softnet_Events WHERE SiteId = @SiteId
				end
			end
			
			DELETE Softnet_SiteUsers WHERE SiteId = @SiteId			
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_RBSiteBegin2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_RBSiteBegin2]
	@SiteId					BIGINT,	
	@EventsSupported		BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE Softnet_Sites SET Structured = 0 WHERE SiteId = @SiteId
									
			if EXISTS(SELECT TOP 1 * FROM Softnet_Events WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId			
				if @EventsSupported = 0
				begin
					DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE Softnet_Events WHERE SiteId = @SiteId
				end
			end
			
			if EXISTS(SELECT TOP 1 * FROM Softnet_Roles WHERE SiteId = @SiteId)
			begin			
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE UIR FROM Softnet_UsersInRoles UIR INNER JOIN Softnet_Roles R ON UIR.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE Softnet_Roles WHERE SiteId = @SiteId			
			end
					
			DELETE Softnet_SiteUsers WHERE SiteId = @SiteId			
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH		
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_RBSiteEnd]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_RBSiteEnd]
	@SiteId						BIGINT,
	@SSHash						VARCHAR(64),
	@GuestSupported				BIT = 0,
	@StatelessGuestSupported	BIT = 0,
	@EventsSupported			BIT = 0
AS
BEGIN
	DECLARE 
		@OrigGuestSupported BIT,
		@GuestAllowed BIT,
		@DefaultRoleId	BIGINT

	SELECT 
		@OrigGuestSupported		= GuestSupported,
		@GuestAllowed			= GuestAllowed,
		@DefaultRoleId			= DefaultRoleId
	FROM Softnet_Sites WHERE SiteId = @SiteId
	IF @@Rowcount = 0
		Return
	
	if @GuestSupported = 0 OR @OrigGuestSupported = 0
		set @GuestAllowed = 0	
	
	if @DefaultRoleId IS NOT NULL
	begin
		if NOT EXISTS(SELECT 1 FROM Softnet_Roles WHERE RoleId = @DefaultRoleId AND SiteId = @SiteId)
			SET @DefaultRoleId = NULL
	end
	
	UPDATE Softnet_Sites SET
		SSHash					= @SSHash,
		GuestSupported			= @GuestSupported,
		GuestAllowed			= @GuestAllowed,
		StatelessGuestSupported	= @StatelessGuestSupported,
		RolesSupported			= 1,
		DefaultRoleId			= @DefaultRoleId,
		ImplicitUsersAllowed	= 0,
		EventsSupported			= @EventsSupported,
		Structured				= 1
	WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_RBSiteEnd2]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_RBSiteEnd2]
	@SiteId						BIGINT,
	@SSHash						VARCHAR(64),
	@GuestSupported				BIT = 0,
	@StatelessGuestSupported	BIT = 0,
	@EventsSupported			BIT = 0,
	@OwnerDefaultRole			NVARCHAR(256) = NULL
AS
BEGIN
	DECLARE @DomainId BIGINT, @OrigGuestSupported BIT, @GuestAllowed BIT
	
	SELECT 
		@DomainId				= DomainId,
		@OrigGuestSupported		= GuestSupported,
		@GuestAllowed			= GuestAllowed
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return
		
	if @GuestSupported = 0 OR @OrigGuestSupported = 0
		set @GuestAllowed = 0		

	if @OwnerDefaultRole IS NOT NULL
	begin
		DECLARE @RoleId	BIGINT, @UserId BIGINT
		
		SELECT @RoleId = RoleId FROM Softnet_Roles WHERE SiteId = @SiteId AND RoleName = @OwnerDefaultRole
		if @@Rowcount = 0
			SET @RoleId = NULL
		SELECT @UserId = UserId FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 1
		if @@Rowcount = 0
			SET @UserId = NULL
			
		if(@UserId IS NOT NULL AND @RoleId IS NOT NULL)
		begin
			INSERT INTO Softnet_UsersInRoles(UserId, RoleId)
			VALUES(@UserId, @RoleId)
		end
	end
		
	UPDATE Softnet_Sites SET
		SSHash					= @SSHash,
		GuestSupported			= @GuestSupported,
		GuestAllowed			= @GuestAllowed,
		StatelessGuestSupported	= @StatelessGuestSupported,
		RolesSupported			= 1,
		DefaultRoleId			= NULL,
		ImplicitUsersAllowed	= 0,
		EventsSupported			= @EventsSupported,
		Structured				= 1
	WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_SelectEvents]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_SelectEvents]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT EventId, EventKind, EventName FROM Softnet_Events WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_SelectRoles]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_SelectRoles]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT RoleId, RoleName FROM Softnet_Roles WHERE SiteId = @SiteId	
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UBSiteBegin]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UBSiteBegin]
	@SiteId					BIGINT,	
	@EventsSupported		BIT = 0
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE Softnet_Sites SET Structured = 0 WHERE SiteId = @SiteId
									
			if EXISTS(SELECT TOP 1 * FROM Softnet_Events WHERE SiteId = @SiteId)
			begin
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Events E ON ER.EventId = E.EventId WHERE E.SiteId = @SiteId			
				if @EventsSupported = 0
				begin
					DELETE ES FROM Softnet_EventSubscriptions ES INNER JOIN Softnet_Events E ON ES.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_REventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_QEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE EI FROM Softnet_PEventInstances EI INNER JOIN Softnet_Events E ON EI.EventId = E.EventId WHERE E.SiteId = @SiteId
					DELETE Softnet_Events WHERE SiteId = @SiteId
				end
			end
			
			if EXISTS(SELECT TOP 1 * FROM Softnet_Roles WHERE SiteId = @SiteId)
			begin			
				DELETE ER FROM Softnet_EventRoles ER INNER JOIN Softnet_Roles R ON ER.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE UIR FROM Softnet_UsersInRoles UIR INNER JOIN Softnet_Roles R ON UIR.RoleId = R.RoleId WHERE R.SiteId = @SiteId
				DELETE Softnet_Roles WHERE SiteId = @SiteId			
			end					
		COMMIT TRANSACTION
		return 0
	END TRY
	BEGIN CATCH
		if @@TRANCOUNT > 0
			ROLLBACK TRANSACTION
		DECLARE 
			@ErrorMessage  NVARCHAR(4000), 
			@ErrorSeverity INT, 
			@ErrorState    INT;
		SELECT
			@ErrorMessage = ERROR_MESSAGE(), 
			@ErrorSeverity = ERROR_SEVERITY(), 
			@ErrorState = ERROR_STATE();
		RAISERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UBSiteEnd]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UBSiteEnd]
	@SiteId						BIGINT,
	@SSHash						VARCHAR(64),
	@GuestSupported				BIT = 0,
	@StatelessGuestSupported	BIT = 0,
	@EventsSupported			BIT = 0
AS
BEGIN
	DECLARE 
		@OrigGuestSupported BIT, 
		@GuestAllowed BIT,
		@OrigRolesSupported BIT,
		@ImplicitUsersAllowed	BIT
		
	SELECT 
		@OrigGuestSupported			= GuestSupported,
		@GuestAllowed				= GuestAllowed,
		@OrigRolesSupported			= RolesSupported,
		@ImplicitUsersAllowed		= ImplicitUsersAllowed
	FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@Rowcount = 0
		return

	if @GuestSupported = 0 OR @OrigGuestSupported = 0
		set @GuestAllowed = 0

	IF @OrigRolesSupported = 1
		SET @ImplicitUsersAllowed = 0

	UPDATE Softnet_Sites SET
		SSHash					= @SSHash,
		GuestSupported			= @GuestSupported,
		GuestAllowed			= @GuestAllowed,
		StatelessGuestSupported	= @StatelessGuestSupported,
		RolesSupported			= 0,
		ImplicitUsersAllowed	= @ImplicitUsersAllowed,
		EventsSupported			= @EventsSupported,
		Structured				= 1
	WHERE SiteId = @SiteId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UpdateDEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UpdateDEvent]
	@EventId		BIGINT,
	@GuestAccess	INT
AS
BEGIN
	UPDATE Softnet_Events SET GuestAccess = @GuestAccess WHERE EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UpdatePEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UpdatePEvent]
	@EventId		BIGINT,
	@LifeTime		INT
AS
BEGIN
	UPDATE Softnet_Events SET LifeTicks	= @LifeTime / 10 WHERE EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UpdateQEvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UpdateQEvent]
	@EventId		BIGINT,
	@LifeTime		INT,
	@QueueSize		INT,
	@GuestAccess	INT
AS
BEGIN
	UPDATE Softnet_Events SET
		LifeTicks	= @LifeTime / 10,
		QueueSize	= @QueueSize,
		GuestAccess	= @GuestAccess
	WHERE EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UpdateREvent]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UpdateREvent]
	@EventId		BIGINT,
	@GuestAccess	INT
AS
BEGIN
	UPDATE Softnet_Events SET GuestAccess = @GuestAccess WHERE EventId = @EventId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_SiteReconstruction_UpdateRoleIndex]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_SiteReconstruction_UpdateRoleIndex]
	@RoleId		BIGINT,
	@Index		INT
AS
BEGIN
	UPDATE Softnet_Roles SET Idx = @Index WHERE RoleId = @RoleId
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_UBMembership_GetGuestStatus]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_UBMembership_GetGuestStatus]
	@SiteId		BIGINT,
	@Allowed	BIT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @DomainId BIGINT, @GuestSupported BIT, @GuestEnabled BIT, @GuestAllowed BIT 
	SELECT @DomainId = DomainId, @GuestSupported = GuestSupported, @GuestAllowed = GuestAllowed FROM Softnet_Sites WHERE SiteId = @SiteId
	if @@ROWCOUNT = 0
		return -1
	
	SELECT @GuestEnabled = [Enabled] FROM Softnet_Users WHERE DomainId = @DomainId AND UserKind = 4
	if @@ROWCOUNT <> 1
		return -2
	
	if @GuestEnabled = 1 AND @GuestSupported = 1 AND @GuestAllowed = 1
		SET @Allowed = 1
	else
		SET @Allowed = 0
			
	return 0
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_UBMembership_GetUserData]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_UBMembership_GetUserData]
	@UserId		BIGINT,
	@SiteId		BIGINT,
	@UserName	NVARCHAR(256) OUTPUT,
	@UserKind	INT OUTPUT,
	@ContactId	BIGINT = NULL OUTPUT,
	@ConsumerId	BIGINT = NULL OUTPUT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserEnabled BIT, @UserDedicated BIT
	
	SELECT
		@UserName = UserName,
		@UserEnabled = [Enabled],
		@UserDedicated = Dedicated,
		@UserKind = UserKind,
		@ContactId = ContactId
	FROM Softnet_Users WHERE UserId = @UserId
	if @@ROWCOUNT = 0
		return -1
	
	if @UserEnabled = 0
		return 1
	
	DECLARE @ImplicitUsersAllowed BIT	
	
	if @UserKind = 2
	begin
		if @UserDedicated = 0
		begin
			SELECT @ImplicitUsersAllowed = ImplicitUsersAllowed FROM Softnet_Sites WHERE SiteId = @SiteId
			if @@ROWCOUNT = 1 AND @ImplicitUsersAllowed = 1
				return 0
		end
		
		if EXISTS(SELECT 1 FROM Softnet_SiteUsers WHERE UserId = @UserId AND SiteId = @UserId)
			return 0
			
		return 1
	end
	else if @UserKind = 3
	begin
		SELECT @ConsumerId = C.ConsumerId, @UserEnabled = O.[Enabled] 
		FROM Softnet_Contacts C 
		INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
		WHERE C.ContactId = @ContactId AND C.[Status] = 0
		if @@ROWCOUNT = 0
			return 1
			
		if @UserEnabled = 0
			return 1
			
		if @UserDedicated = 0
		begin
			SELECT @ImplicitUsersAllowed = ImplicitUsersAllowed FROM Softnet_Sites WHERE SiteId = @SiteId
			if @@ROWCOUNT = 1 AND @ImplicitUsersAllowed = 1
				return 0
		end
		
		if EXISTS(SELECT 1 FROM Softnet_SiteUsers WHERE UserId = @UserId AND SiteId = @UserId)
			return 0
			
		return 1
	end
	else if @UserKind = 1
	begin
		SELECT @ImplicitUsersAllowed = ImplicitUsersAllowed FROM Softnet_Sites WHERE SiteId = @SiteId
		if @@ROWCOUNT = 1 AND @ImplicitUsersAllowed = 1
			return 0
			
		if EXISTS(SELECT 1 FROM Softnet_SiteUsers WHERE UserId = @UserId AND SiteId = @UserId)
			return 0
			
		return 1
	end  
	
	return -2
END
GO
/****** Object:  StoredProcedure [dbo].[Softnet_UBMembership_GetUserList]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Softnet_UBMembership_GetUserList]
	@SiteId		BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @DomainId BIGINT, @ImplicitUsersAllowed BIT
	
	SELECT @DomainId = DomainId, @ImplicitUsersAllowed = ImplicitUsersAllowed
	FROM Softnet_Sites WHERE SiteId = @SiteId		
	if @@Rowcount = 0
		return -1
	
	if @ImplicitUsersAllowed = 0
	begin
		SELECT U.UserId, U.UserName, U.UserKind, NULL, NULL FROM Softnet_Users U 
		JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
		WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)
		UNION
		SELECT U.UserId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
		INNER JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
		WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
	end	else
	begin
		DECLARE @Membership TABLE (UserId BIGINT, UserName NVARCHAR(256), UserKind INT, ContactId BIGINT NULL, ConsumerId BIGINT NULL)
			
		INSERT INTO @Membership(UserId, UserName, UserKind, ContactId, ConsumerId)
		SELECT UserId, UserName, UserKind, NULL, NULL FROM Softnet_Users 
		WHERE DomainId = @DomainId AND [Enabled] = 1 AND (UserKind = 1 OR (UserKind = 2 AND Dedicated = 0))
			
		INSERT INTO @Membership(UserId, UserName, UserKind, ContactId, ConsumerId)
		SELECT UserId, UserName, UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
		WHERE DomainId = @DomainId AND U.[Enabled] = 1 AND UserKind = 3 AND Dedicated = 0 AND C.[Status] = 0 AND O.[Enabled] = 1
			
		INSERT INTO @Membership(UserId, UserName, UserKind, ContactId, ConsumerId)
		SELECT U.UserId, U.UserName, U.UserKind, NULL, NULL FROM Softnet_Users U 
		JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
		WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND (UserKind = 1 OR UserKind = 2)
			
		INSERT INTO @Membership(UserId, UserName, UserKind, ContactId, ConsumerId)
		SELECT U.UserId, U.UserName, U.UserKind, C.ContactId, C.ConsumerId FROM Softnet_Users U 
		INNER JOIN Softnet_SiteUsers SU ON U.UserId = SU.UserId
		INNER JOIN Softnet_Contacts C ON U.ContactId = C.ContactId
		INNER JOIN Softnet_Owners O ON C.ConsumerId = O.OwnerId
		WHERE SU.SiteId = @SiteId AND U.[Enabled] = 1 AND UserKind = 3 AND C.[Status] = 0 AND O.[Enabled] = 1
			
		SELECT DISTINCT UserId, UserName, UserKind, ContactId, ConsumerId FROM @Membership		
	end
	return 0	
END
GO

USE [master]
GO
ALTER DATABASE [Softnet] SET  READ_WRITE 
GO
USE [Softnet]
GO

DECLARE @ApplicationId uniqueidentifier
EXEC aspnet_Applications_CreateApplication N'Softnet', @ApplicationId OUT
EXEC aspnet_Roles_CreateRole N'Softnet', N'Administrator'
EXEC aspnet_Roles_CreateRole N'Softnet', N'Provider'

INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'common', N'1', 1)

INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'health monitoring', N'1', 1)
					
INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'membership', N'1', 1)

INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'personalization', N'1', 1)

INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'profile', N'1', 1)

INSERT INTO aspnet_SchemaVersions(Feature, CompatibleSchemaVersion, IsCurrentVersion)
VALUES(N'role manager', N'1', 1)

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'AnyoneCanRegister', N'0')

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'AssignProviderRole', N'0')

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'UserPasswordMinLength', N'10')

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'ClientKeyLength', N'8')

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'ClientPasswordLength', N'10')

INSERT INTO Softnet_Settings(ParamName, ParamValue)
VALUES(N'ServicePasswordLength', N'10')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(1, 100, N'The maximum number of domains')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(2, 200, N'The maximum number of sites')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(3, 500, N'The maximum number of services')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(4, 50, N'The maximum number of services on a site')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(5, 1000, N'The maximum number of users allowed to have for a provider')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(6, 100, N'The maximum number of users in a domain')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(7, 2000, N'The maximum number of private clients allowed to have for a provider in their domains')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(8, 2000, N'The maximum number of contact clients allowed to have for a provider in their domains')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(9, 3000, N'The maximum number of guest clients allowed to have for a provider in their domains')

INSERT INTO Softnet_HPlanParamIndexes(ParamIndex, DefaultValue, ParamName)
VALUES(10, 4000, N'The maximum number of clients allowed to have for a creator')

