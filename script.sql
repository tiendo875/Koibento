USE [master]
GO
/****** Object:  Database [KoiBento]    Script Date: 07/01/2020 16:22:53 ******/
CREATE DATABASE [KoiBento] ON  PRIMARY 
( NAME = N'KoiBento', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\KoiBento.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'KoiBento_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\KoiBento_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [KoiBento] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KoiBento].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KoiBento] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [KoiBento] SET ANSI_NULLS OFF
GO
ALTER DATABASE [KoiBento] SET ANSI_PADDING OFF
GO
ALTER DATABASE [KoiBento] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [KoiBento] SET ARITHABORT OFF
GO
ALTER DATABASE [KoiBento] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [KoiBento] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [KoiBento] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [KoiBento] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [KoiBento] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [KoiBento] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [KoiBento] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [KoiBento] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [KoiBento] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [KoiBento] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [KoiBento] SET  DISABLE_BROKER
GO
ALTER DATABASE [KoiBento] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [KoiBento] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [KoiBento] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [KoiBento] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [KoiBento] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [KoiBento] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [KoiBento] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [KoiBento] SET  READ_WRITE
GO
ALTER DATABASE [KoiBento] SET RECOVERY SIMPLE
GO
ALTER DATABASE [KoiBento] SET  MULTI_USER
GO
ALTER DATABASE [KoiBento] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [KoiBento] SET DB_CHAINING OFF
GO
USE [KoiBento]
GO
/****** Object:  Table [dbo].[FoodItem]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodItem](
	[FoodId] [int] NOT NULL,
	[Name] [nchar](10) NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
	[ItemCategory] [nvarchar](50) NULL,
 CONSTRAINT [PK_FoodItem] PRIMARY KEY CLUSTERED 
(
	[FoodId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Amount] [float] NULL,
	[CreateAt] [date] NULL,
	[address] [nvarchar](50) NULL,
	[BirthDate] [date] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User] ([UserId], [Username], [Password], [Amount], [CreateAt], [address], [BirthDate]) VALUES (1, N'anhtu', N'1999', NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([UserId], [Username], [Password], [Amount], [CreateAt], [address], [BirthDate]) VALUES (2, N'tien', N'1234', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[Menu]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[MenuId] [int] NOT NULL,
	[Price] [float] NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[FoodId] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItem]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItem](
	[OrderId] [int] NOT NULL,
	[FoodId] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
 CONSTRAINT [PK_OrderItem] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] NOT NULL,
	[OrderDate] [date] NULL,
	[UserId] [int] NULL,
	[Quantity] [nvarchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[AdminId] [int] NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Username] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[MenuId] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 07/01/2020 16:22:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] NOT NULL,
	[UserId] [int] NULL,
	[OrderId] [int] NULL,
	[PaymentDate] [date] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_Menu_FoodItem]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_FoodItem] FOREIGN KEY([FoodId])
REFERENCES [dbo].[FoodItem] ([FoodId])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_FoodItem]
GO
/****** Object:  ForeignKey [FK_OrderItem_FoodItem]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[OrderItem]  WITH CHECK ADD  CONSTRAINT [FK_OrderItem_FoodItem] FOREIGN KEY([FoodId])
REFERENCES [dbo].[FoodItem] ([FoodId])
GO
ALTER TABLE [dbo].[OrderItem] CHECK CONSTRAINT [FK_OrderItem_FoodItem]
GO
/****** Object:  ForeignKey [FK_Order_OrderItem]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_OrderItem] FOREIGN KEY([OrderId])
REFERENCES [dbo].[OrderItem] ([OrderId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_OrderItem]
GO
/****** Object:  ForeignKey [FK_Order_User]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
/****** Object:  ForeignKey [FK_Admin_Menu]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_Menu] FOREIGN KEY([MenuId])
REFERENCES [dbo].[Menu] ([MenuId])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_Menu]
GO
/****** Object:  ForeignKey [FK_Payment_Order]    Script Date: 07/01/2020 16:22:53 ******/
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_Order]
GO
