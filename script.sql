USE [master]
GO
/****** Object:  Database [Banking]    Script Date: 5/20/2017 9:34:58 PM ******/
CREATE DATABASE [Banking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Banking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.BRILLIANT\MSSQL\DATA\Banking.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Banking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.BRILLIANT\MSSQL\DATA\Banking_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Banking] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Banking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Banking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Banking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Banking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Banking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Banking] SET ARITHABORT OFF 
GO
ALTER DATABASE [Banking] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Banking] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Banking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Banking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Banking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Banking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Banking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Banking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Banking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Banking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Banking] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Banking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Banking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Banking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Banking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Banking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Banking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Banking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Banking] SET RECOVERY FULL 
GO
ALTER DATABASE [Banking] SET  MULTI_USER 
GO
ALTER DATABASE [Banking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Banking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Banking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Banking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Banking', N'ON'
GO
USE [Banking]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 5/20/2017 9:34:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] NOT NULL,
	[accountName] [varchar](20) NULL,
	[mainCustomerID] [int] NULL,
	[moneyLeft] [bigint] NULL,
	[ngay_tao_tai_khoan] [int] NULL,
	[thang_tao_tai_khoan] [int] NULL,
	[nam_tao_tai_khoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChangeMoney]    Script Date: 5/20/2017 9:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChangeMoney](
	[customerID] [int] NULL,
	[accountID] [int] NULL,
	[moneyChanged] [bigint] NULL,
	[theDay] [int] NULL,
	[theMonth] [int] NULL,
	[theYear] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/20/2017 9:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[customerID] [int] NOT NULL,
	[customerName] [varchar](30) NULL,
	[cusPassword] [varchar](20) NULL,
	[phoneNumber] [int] NULL,
	[soCMT] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NormalCustomer]    Script Date: 5/20/2017 9:34:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NormalCustomer](
	[accID] [int] NULL,
	[cusID] [int] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (1, N'moneyamount', 2, 29371000, 10, 1, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (2, N'moneymoneymoney', 2, 9822345, 3, 10, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (3, N'tien', 1, 58000, 30, 4, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (4, N'dolgopolov-alex', 4, 2983749, 22, 3, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (5, N'tk thu 2', 4, 1000000, 16, 12, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (6, N'aaa', 5, 80278, 6, 11, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (8, N'xuanphuc', 3, 4995000, 23, 6, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (9, N'xd', 3, 7300000, 15, 12, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (10, N'chess king', 2, 9817428, 4, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (11, N'svbk1', 6, 15000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (12, N'svbk2', 6, 20000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (13, N'phat_1', 9, 2147500000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (14, N'phat_2', 9, 5000000000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (15, N'phat_3', 9, 1000001360000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (16, N'thang', 6, 100000000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (17, N'trump', 10, 120000000000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (18, N'donald_trump', 10, 9999001000000, 7, 5, 2017)
INSERT [dbo].[Account] ([accountID], [accountName], [mainCustomerID], [moneyLeft], [ngay_tao_tai_khoan], [thang_tao_tai_khoan], [nam_tao_tai_khoan]) VALUES (19, N'obama', 11, 1000000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (6, 9, 44, 5, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (3, 9, -60044, 5, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, -20000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, 100000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 13, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 13, -83647, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, -497232, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, -240000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, 10000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, -1316134912, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, -1000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 1000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, -45000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, -98999955130000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 50, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, -27000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, 100000000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 15, 1230000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (10, 18, 1000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 13, 100000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (10, 18, -1000000000, 7, 5, 2017)
INSERT [dbo].[ChangeMoney] ([customerID], [accountID], [moneyChanged], [theDay], [theMonth], [theYear]) VALUES (9, 14, 5000000000, 7, 5, 2017)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (1, N'Trang Quynh', N'3741784368', 82734618, 2873687)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (2, N'marshall', N'87654321', 88342835, 2346879)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (3, N'nguyen xuan phuc', N'thu tuong', 21327834, 7523749)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (4, N'alexander dolgopolov', N'so 20 the gioi', 28734834, 2739476)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (5, N'abc', N'1234', 52345683, 6483645)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (6, N'nguyen tan dung', N'passpass', 17264814, 714687)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (7, N'muahaha', N'holyshit', 27846, 1783678)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (8, N'thang', N'123', 12345678, 54677)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (9, N'phat_nguyen', N'12345', 123456789, 987654321)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (10, N'Donald Trump', N'123', 1111111111, 0)
INSERT [dbo].[Customer] ([customerID], [customerName], [cusPassword], [phoneNumber], [soCMT]) VALUES (11, N'Obama', N'1234', 12345, 12345)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (3, 2)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (1, 1)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (4, 3)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (6, 3)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (6, 2)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (6, 2)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (9, 6)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (11, 8)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (14, 4)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (1, 4)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (9, 2)
INSERT [dbo].[NormalCustomer] ([accID], [cusID]) VALUES (14, 10)
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([mainCustomerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[ChangeMoney]  WITH CHECK ADD FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[ChangeMoney]  WITH CHECK ADD FOREIGN KEY([customerID])
REFERENCES [dbo].[Customer] ([customerID])
GO
ALTER TABLE [dbo].[NormalCustomer]  WITH CHECK ADD FOREIGN KEY([accID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[NormalCustomer]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Customer] ([customerID])
GO
USE [master]
GO
ALTER DATABASE [Banking] SET  READ_WRITE 
GO
