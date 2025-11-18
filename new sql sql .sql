USE [master]
GO
/****** Object:  Database [Sales_System]    Script Date: 4/28/2019 9:49:41 PM ******/
CREATE DATABASE [Sales_System] ON  PRIMARY 
( NAME = N'Sales_System', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Sales_System.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Sales_System_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\Sales_System_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Sales_System] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Sales_System].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Sales_System] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Sales_System] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Sales_System] SET ARITHABORT OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Sales_System] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Sales_System] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Sales_System] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Sales_System] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Sales_System] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Sales_System] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Sales_System] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Sales_System] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Sales_System] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Sales_System] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Sales_System] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Sales_System] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Sales_System] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Sales_System] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Sales_System] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Sales_System] SET RECOVERY FULL 
GO
ALTER DATABASE [Sales_System] SET  MULTI_USER 
GO
ALTER DATABASE [Sales_System] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Sales_System] SET DB_CHAINING OFF 
GO
USE [Sales_System]
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[Money] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_Insert]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_Insert](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Bank_Insert] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bank_Pull]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank_Pull](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Bank_Pull] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barcode_Print]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barcode_Print](
	[Pro_Name] [nvarchar](250) NULL,
	[Pro_Barcode] [nvarchar](250) NULL,
	[Pro_Price] [nvarchar](250) NULL,
	[barcode] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy](
	[Order_ID] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Sup_ID] [int] NULL,
 CONSTRAINT [PK_Buy] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buy_Detalis]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buy_Detalis](
	[Order_ID] [int] NULL,
	[Sup_ID] [int] NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Discount] [real] NULL,
	[Total] [real] NULL,
	[TotalOrder] [real] NULL,
	[Madfou3] [real] NULL,
	[Baky] [real] NULL,
	[Tax_Value] [real] NULL,
	[Price_Tax] [real] NULL,
	[Time] [nvarchar](50) NULL,
	[Unit_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Money]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Money](
	[Order_ID] [int] NULL,
	[Cus_Name] [nvarchar](250) NULL,
	[Price] [real] NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Reminder_Date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer_Report]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Report](
	[Order_ID] [int] NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Cust_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Cust_ID] [nvarchar](250) NOT NULL,
	[Cust_Name] [nvarchar](250) NULL,
	[Cust_Address] [nvarchar](250) NULL,
	[Cust_Phone] [nvarchar](50) NULL,
	[Notes] [nvarchar](350) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Cust_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deserved]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deserved](
	[Des_ID] [int] NOT NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
	[Type_ID] [int] NULL,
 CONSTRAINT [PK_Deserved] PRIMARY KEY CLUSTERED 
(
	[Des_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deserved_Type]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deserved_Type](
	[Des_ID] [int] NOT NULL,
	[Name] [nchar](10) NULL,
 CONSTRAINT [PK_Deserved_Type] PRIMARY KEY CLUSTERED 
(
	[Des_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Emp_ID] [int] NOT NULL,
	[Emp_Name] [nvarchar](250) NULL,
	[Salary] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[National_ID] [nvarchar](250) NULL,
	[Emp_Phone] [nvarchar](250) NULL,
	[Emp_Address] [nvarchar](250) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Emp_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_BorrowItems]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_BorrowItems](
	[Order_ID] [int] NOT NULL,
	[Item_ID] [int] NULL,
	[Emp_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
 CONSTRAINT [PK_Employee_BorrowItems] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_BorrowMoney]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_BorrowMoney](
	[Order_ID] [int] NOT NULL,
	[Borrow_From] [nvarchar](20) NULL,
	[Borrow_To] [nvarchar](250) NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Date_Reminder] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_Employee_BorrowMoney] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_Salary]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Salary](
	[Order_ID] [int] NOT NULL,
	[Emp_ID] [int] NULL,
	[Total_Salary] [real] NULL,
	[Total_Borrow] [real] NULL,
	[Safy_Salary] [real] NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Date_Reminder] [nvarchar](50) NULL,
	[Notes] [nvarchar](250) NULL,
 CONSTRAINT [PK_Employee_Salary] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee_SalaryMinus]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_SalaryMinus](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Emp_ID] [int] NULL,
	[Emp_Name] [nvarchar](250) NULL,
	[Date] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Pay] [nvarchar](50) NULL,
 CONSTRAINT [PK_Employee_SalaryMinus] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderPrintData]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderPrintData](
	[Logo] [image] NULL,
	[Name] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Phone1] [nvarchar](250) NULL,
	[Phone2] [nvarchar](250) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Pro_ID] [int] NOT NULL,
	[Pro_Name] [nvarchar](250) NULL,
	[Qty] [real] NULL,
	[Gomla_Price] [real] NULL,
	[Sale_Price] [real] NULL,
	[Tax_Value] [real] NULL,
	[Sale_PriceTax] [real] NULL,
	[Barcode] [nvarchar](250) NULL,
	[MinQty] [real] NULL,
	[MaxDiscount] [real] NULL,
	[IS_Tax] [nvarchar](250) NULL,
	[Group_ID] [int] NULL,
	[Main_UnitName] [nvarchar](250) NULL,
	[Main_UnitID] [int] NULL,
	[Sale_UnitName] [nvarchar](250) NULL,
	[Sale_UnitID] [int] NULL,
	[Buy_UnitName] [nvarchar](250) NULL,
	[Buy_UnitID] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Group]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Group](
	[Group_ID] [int] NOT NULL,
	[Group_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products_Group] PRIMARY KEY CLUSTERED 
(
	[Group_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_OutStore]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_OutStore](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_ID] [int] NULL,
	[Pro_Name] [nvarchar](250) NULL,
	[Store_Name] [nvarchar](250) NULL,
	[Qty] [real] NULL,
	[Unit] [nvarchar](250) NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products_OutStore] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Qty]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Qty](
	[Pro_ID] [int] NULL,
	[Store_ID] [int] NULL,
	[Store_Name] [nvarchar](250) NULL,
	[Qty] [real] NULL,
	[Buy_Price] [real] NULL,
	[Sale_PriceTax] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Transfire]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Transfire](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pro_ID] [int] NULL,
	[Pro_Name] [nvarchar](250) NULL,
	[Store_From] [nvarchar](250) NULL,
	[Store_To] [nvarchar](250) NULL,
	[Qty] [real] NULL,
	[Unit] [nvarchar](250) NULL,
	[Buy_Price] [real] NULL,
	[Sale_Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Products_Transfire] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products_Unit]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Unit](
	[Pro_ID] [int] NULL,
	[Unit_ID] [int] NULL,
	[Unit_Name] [nvarchar](250) NULL,
	[QtyINmain] [real] NULL,
	[UintSale_Price] [real] NULL,
	[TotalSalePrice] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Random_Barcode]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Random_Barcode](
	[Barcode] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Order_Type] [nvarchar](250) NULL,
 CONSTRAINT [PK_Returns] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Returns_Detalis]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Returns_Detalis](
	[Order_ID] [int] NULL,
	[Sup_Name] [nvarchar](50) NULL,
	[Cust_Name] [nvarchar](250) NULL,
	[Pro_Name] [nvarchar](250) NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[Price] [real] NULL,
	[Total] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Total_Order] [real] NULL,
	[Madfou3] [real] NULL,
	[Baky] [real] NULL,
	[Tax_Value] [real] NULL,
	[Price_Tax] [real] NULL,
	[Unit_Name] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[Order_ID] [int] NOT NULL,
	[Date] [nvarchar](50) NULL,
	[Cust_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sales] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Detalis]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Detalis](
	[Order_ID] [int] NULL,
	[Cust_Name] [nvarchar](250) NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Discount] [real] NULL,
	[Total] [real] NULL,
	[TotalOrder] [real] NULL,
	[Madfou3] [real] NULL,
	[Baky] [real] NULL,
	[Unit] [nvarchar](250) NULL,
	[Tax_Value] [real] NULL,
	[Price_Tax] [real] NULL,
	[Time] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sales_Rb7h]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales_Rb7h](
	[Order_ID] [int] NULL,
	[Cust_Name] [nvarchar](250) NULL,
	[Pro_ID] [int] NULL,
	[Date] [nvarchar](50) NULL,
	[Qty] [real] NULL,
	[User_Name] [nvarchar](50) NULL,
	[Price] [real] NULL,
	[Discount] [real] NULL,
	[Total] [real] NULL,
	[TotalOrder] [real] NULL,
	[Madfou3] [real] NULL,
	[Baky] [real] NULL,
	[Unit] [nvarchar](250) NULL,
	[Tax_Value] [real] NULL,
	[Price_Tax] [real] NULL,
	[Time] [nvarchar](50) NULL,
	[Buy_Price] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanad_Kabd]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanad_Kabd](
	[Order_ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[From_] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sanad_Kabd] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanad_Sarf]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanad_Sarf](
	[Order_ID] [int] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[To_] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sanad_Sarf] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Stock_ID] [int] NULL,
	[Money] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Data]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Data](
	[Stock_ID] [int] NOT NULL,
	[Stock_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Stock_Data] PRIMARY KEY CLUSTERED 
(
	[Stock_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Insert]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Insert](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Stock_ID] [int] NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Stock_Insert] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Pull]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Pull](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Stock_ID] [int] NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Stock_Pull] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock_Transfire]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock_Transfire](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[From_] [int] NULL,
	[To_] [int] NULL,
	[Name] [nvarchar](250) NULL,
	[Reason] [nvarchar](250) NULL,
 CONSTRAINT [PK_Stock_Transfire] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockBank_Transfire]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockBank_Transfire](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Money] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[From_] [nvarchar](250) NULL,
	[To_] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_StockBank_Transfire] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_ID] [int] NOT NULL,
	[Store_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[Store_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Money]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Money](
	[Order_ID] [int] NULL,
	[Sup_ID] [int] NULL,
	[Price] [real] NULL,
	[Order_Date] [nvarchar](50) NULL,
	[Reminder_Date] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier_Report]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Report](
	[Order_ID] [int] NULL,
	[Price] [real] NULL,
	[Date] [nvarchar](50) NULL,
	[Sup_ID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suppliers]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[Sup_ID] [int] NOT NULL,
	[Sup_Name] [nvarchar](250) NULL,
	[Sup_Address] [nvarchar](250) NULL,
	[Sup_Phone] [nvarchar](50) NULL,
	[Notes] [nvarchar](350) NULL,
 CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED 
(
	[Sup_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taxes_Report]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxes_Report](
	[Order_ID] [int] IDENTITY(1,1) NOT NULL,
	[Order_Num] [int] NULL,
	[Order_Type] [nvarchar](250) NULL,
	[Tax_Type] [nvarchar](250) NULL,
	[Sup_Name] [nvarchar](250) NULL,
	[Cust_Name] [nvarchar](250) NULL,
	[Total_Order] [real] NULL,
	[Total_Tax] [real] NULL,
	[Total_AfterTax] [real] NULL,
	[Date] [nvarchar](50) NULL,
 CONSTRAINT [PK_Taxes_Report] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[Unit_ID] [int] NOT NULL,
	[Unit_Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[Unit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_BackUp]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_BackUp](
	[User_ID] [int] NULL,
	[TakeBackUp] [int] NULL,
	[ReturnBackUp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Buy]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Buy](
	[User_ID] [int] NULL,
	[Buy] [int] NULL,
	[BuyReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Customer]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Customer](
	[User_ID] [int] NULL,
	[Customer] [int] NULL,
	[CustomerMoney] [int] NULL,
	[CustomerReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Deserved]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Deserved](
	[User_ID] [int] NULL,
	[Des_Type] [int] NULL,
	[Deserved] [int] NULL,
	[DeservedReport] [int] NULL,
	[SanadKabd] [int] NULL,
	[SanadSarf] [int] NULL,
	[SanadReport] [int] NULL,
	[TaxesReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Emp]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Emp](
	[User_ID] [int] NULL,
	[Add_Emp] [int] NULL,
	[Borrow_Items] [int] NULL,
	[Borrow_Money] [int] NULL,
	[Salary] [int] NULL,
	[Borrow_ItemsReport] [int] NULL,
	[Borrow_MoneyReport] [int] NULL,
	[SalaryReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Report]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Report](
	[User_ID] [int] NULL,
	[Cust_Report] [int] NULL,
	[Sup_Report] [int] NULL,
	[Buy_Report] [int] NULL,
	[Sale_Report] [int] NULL,
	[Return_Report] [int] NULL,
	[Deserved_Report] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Return]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Return](
	[User_ID] [int] NULL,
	[Return_] [int] NULL,
	[ReturnReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Sale]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Sale](
	[User_ID] [int] NULL,
	[Sale] [int] NULL,
	[SaleReport] [int] NULL,
	[SaleRb7h] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Setting]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Setting](
	[User_ID] [int] NULL,
	[Unit] [int] NULL,
	[User_Permisson] [int] NULL,
	[Item_View] [int] NULL,
	[Setting] [int] NULL,
	[Item_Add] [int] NULL,
	[Item_Group] [int] NULL,
	[Store_Add] [int] NULL,
	[Store_Gard] [int] NULL,
	[Store_Transfire] [int] NULL,
	[Store_Out] [int] NULL,
	[Store_TransfireReport] [int] NULL,
	[Store_OutReport] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_StockBank]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_StockBank](
	[User_ID] [int] NULL,
	[Add_Stock] [int] NULL,
	[Stock_Insert] [int] NULL,
	[Bank_Insert] [int] NULL,
	[Stock_Pull] [int] NULL,
	[Bank_Pull] [int] NULL,
	[Transfire_Money] [int] NULL,
	[Transfire_BankStock] [int] NULL,
	[Current_Money] [int] NULL,
	[StockBank_Report] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Supplier]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Supplier](
	[User_ID] [int] NULL,
	[Supp_Data] [int] NULL,
	[Supp_Money] [int] NULL,
	[Supp_Report] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] NOT NULL,
	[User_Name] [nvarchar](250) NULL,
	[User_Password] [nvarchar](250) NULL,
	[Type] [nvarchar](50) NULL,
	[Stock_ID] [int] NULL,
	[Rb7h] [real] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Buy_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Detalis_Buy] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Buy] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buy_Detalis] CHECK CONSTRAINT [FK_Buy_Detalis_Buy]
GO
ALTER TABLE [dbo].[Buy_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Detalis_Products1] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Products] ([Pro_ID])
GO
ALTER TABLE [dbo].[Buy_Detalis] CHECK CONSTRAINT [FK_Buy_Detalis_Products1]
GO
ALTER TABLE [dbo].[Buy_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Buy_Detalis_Suppliers] FOREIGN KEY([Sup_ID])
REFERENCES [dbo].[Suppliers] ([Sup_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buy_Detalis] CHECK CONSTRAINT [FK_Buy_Detalis_Suppliers]
GO
ALTER TABLE [dbo].[Deserved]  WITH CHECK ADD  CONSTRAINT [FK_Deserved_Deserved_Type] FOREIGN KEY([Type_ID])
REFERENCES [dbo].[Deserved_Type] ([Des_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deserved] CHECK CONSTRAINT [FK_Deserved_Deserved_Type]
GO
ALTER TABLE [dbo].[Returns_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Returns_Detalis_Returns] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Returns] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Returns_Detalis] CHECK CONSTRAINT [FK_Returns_Detalis_Returns]
GO
ALTER TABLE [dbo].[Sales_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Detalis_Products] FOREIGN KEY([Pro_ID])
REFERENCES [dbo].[Products] ([Pro_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales_Detalis] CHECK CONSTRAINT [FK_Sales_Detalis_Products]
GO
ALTER TABLE [dbo].[Sales_Detalis]  WITH CHECK ADD  CONSTRAINT [FK_Sales_Detalis_Sales] FOREIGN KEY([Order_ID])
REFERENCES [dbo].[Sales] ([Order_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sales_Detalis] CHECK CONSTRAINT [FK_Sales_Detalis_Sales]
GO
ALTER TABLE [dbo].[User_Deserved]  WITH CHECK ADD  CONSTRAINT [FK_User_Deserved_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[User_Deserved] CHECK CONSTRAINT [FK_User_Deserved_Users]
GO
ALTER TABLE [dbo].[User_Emp]  WITH CHECK ADD  CONSTRAINT [FK_User_Emp_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Emp] CHECK CONSTRAINT [FK_User_Emp_Users]
GO
ALTER TABLE [dbo].[User_Report]  WITH CHECK ADD  CONSTRAINT [FK_User_Report_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[User_Report] CHECK CONSTRAINT [FK_User_Report_Users]
GO
ALTER TABLE [dbo].[User_Return]  WITH CHECK ADD  CONSTRAINT [FK_User_Return_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Return] CHECK CONSTRAINT [FK_User_Return_Users]
GO
ALTER TABLE [dbo].[User_Sale]  WITH CHECK ADD  CONSTRAINT [FK_User_Sale_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Sale] CHECK CONSTRAINT [FK_User_Sale_Users]
GO
ALTER TABLE [dbo].[User_Setting]  WITH CHECK ADD  CONSTRAINT [FK_User_Setting_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[User_Setting] CHECK CONSTRAINT [FK_User_Setting_Users]
GO
ALTER TABLE [dbo].[User_StockBank]  WITH CHECK ADD  CONSTRAINT [FK_User_StockBank_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_StockBank] CHECK CONSTRAINT [FK_User_StockBank_Users]
GO
ALTER TABLE [dbo].[User_Supplier]  WITH CHECK ADD  CONSTRAINT [FK_User_Supplier_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Supplier] CHECK CONSTRAINT [FK_User_Supplier_Users]
GO
/****** Object:  StoredProcedure [dbo].[BuyReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[BuyReport]
AS

SELECT [Order_ID] as 'رقم الفاتورة',Suppliers.Sup_Name as 'اسم المورد',Products.Pro_Name as 'اسم المنتج',[Date] as 'تاريخ الفاتورة',[Buy_Detalis].[Qty] as 'الكمية' ,Unit_Name as 'الوحدة',[Price] as 'السعر قبل الضريبة',[Buy_Detalis].Tax_Value as 'الضريبة',Price_Tax as 'السعر بعد الضريبة',[Discount] as 'الخصم',[Total] as 'اجمالى الصنف',[TotalOrder] as 'الاجمالى العام',[User_Name] as 'اسم المستخدم' ,[Madfou3] as 'المدفوع',[Baky] as 'المبلغ المتبقى' FROM [dbo].[Buy_Detalis],Suppliers,Products where  Suppliers.Sup_ID =[Buy_Detalis].Sup_ID and Products.Pro_ID =[Buy_Detalis].Pro_ID
GO
/****** Object:  StoredProcedure [dbo].[CustomerMoney]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[CustomerMoney]
AS

SELECT [Order_ID] as 'رقم الفاتورة',[Cus_Name] as 'العميل',[Price] as 'المبلغ المستحق',[Order_Date] as 'تاريخ الفاتورة',[Reminder_Date] as 'تاريخ الاستحقاق' FROM [dbo].[Customer_Money]
GO
/****** Object:  StoredProcedure [dbo].[OrderBuy]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderBuy]
AS

SELECT [Order_ID] as 'رقم الفاتورة'
      ,Suppliers.Sup_Name as 'اسم المورد'
      ,Products.Pro_Name as 'اسم المنتج'
      ,[Date] as 'تاريخ الفاتورة'
      ,[Buy_Detalis].[Qty] as 'الكمية'
	  ,Unit_Name as 'الوحدة'
      ,[User_Name] as 'اسم المستخدم'
      ,[Price] as 'السعر قبل الضريبة'
	  ,[Buy_Detalis].Tax_Value as 'الضريبة'
	  ,Price_Tax as 'السعر بعد الضريبة'
      ,[Discount] as 'الخصم'
      ,[Total] as 'اجمالى الصنف'
      ,[TotalOrder] as 'الاجمالى العام'
,[Madfou3] as 'المدفوع',[Baky] as 'المبلغ المتبقى' FROM [dbo].[Buy_Detalis],Suppliers,Products where  Suppliers.Sup_ID =[Buy_Detalis].Sup_ID and Products.Pro_ID =[Buy_Detalis].Pro_ID

GO
/****** Object:  StoredProcedure [dbo].[OrderSales]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[OrderSales]
AS



SELECT [Order_ID] as 'رقم الفاتورة',[Cust_Name] as 'اسم العميل',Products.Pro_Name as 'المنتج',[Sales_Detalis].[Qty] as 'الكمية',Unit as 'الوحدة',[Price_Tax] as 'السعر شامل الضريب',[Discount] as 'الخصم',[Total] as 'الاجمالى',[TotalOrder] as 'اجمالى الفاتورة',[Madfou3] as 'المبلغ المدفوع',[Baky] as 'المتبقى',[User_Name] as 'الكاشير',[Date] as 'التاريخ',[Sales_Detalis].Tax_Value as'الضريبة' FROM [dbo].[Sales_Detalis] , Products where Products.Pro_ID = Sales_Detalis.Pro_ID
GO
/****** Object:  StoredProcedure [dbo].[SalesRb7h]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SalesRb7h]
AS

SELECT [Order_ID] as 'رقم الفاتورة',[Cust_Name] as 'اسم العميل',Products.Pro_Name as 'المنتج',[Unit] as 'الوحدة',[Sales_Rb7h].[Qty] as 'الكمية',[Buy_Price] as 'سعر الشراء',[Discount] as 'الخصم',[Sales_Rb7h].[Tax_Value] as 'قيمة الضريبة',[Price_Tax] as 'السعر بعد الضريبة',([Price_Tax] -  [Buy_Price]) * [Sales_Rb7h].[Qty] as 'الربح',[Total] as 'اجمالى الصنف' ,[TotalOrder] as 'اجمالى الفاتورة',[Madfou3] as 'المبلغ المدفوع',[Baky] as 'المتبقى',[Date]  as 'التاريخ',[User_Name] as 'اسم الكاشير',[Time] as 'الوقت' FROM [dbo].[Sales_Rb7h] ,Products where Products.Pro_ID =Sales_Rb7h.Pro_ID
GO
/****** Object:  StoredProcedure [dbo].[SalesReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SalesReport]
AS



SELECT [Order_ID] as 'رقم الفاتورة',[Cust_Name] as 'اسم العميل',Products.Pro_Name as 'المنتج',[Sales_Detalis].[Qty] as 'الكمية',[Sales_Detalis].[Price_Tax] as 'السعر',[Discount] as 'الخصم',[Total] as 'الاجمالى',[TotalOrder] as 'اجمالى الفاتورة',[Madfou3] as 'المبلغ المدفوع',[Baky] as 'المتبقى',[User_Name] as 'الكاشير',[Date] as 'التاريخ' FROM [dbo].[Sales_Detalis] , Products where Products.Pro_ID = Sales_Detalis.Pro_ID
GO
/****** Object:  StoredProcedure [dbo].[SanadKabd]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[SanadKabd]
AS
SELECT [Order_ID] as 'رقم العملية'
      ,[Name] as 'اسم المسؤل عن القبض'
      ,[Price] as 'المبلغ'
      ,[Date] as 'تاريخ العملية'
      ,[From_] as 'تم القبض من '
      ,[Reason] as 'السبب'
  FROM [dbo].[Sanad_Kabd]
GO
/****** Object:  StoredProcedure [dbo].[Sanadsarf]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Sanadsarf]
AS
SELECT [Order_ID] as 'رقم العملية'
      ,[Name] as 'اسم المسؤل عن الصرف'
      ,[Price] as 'المبلغ'
      ,[Date] as 'تاريخ العملية'
      ,[To_] as 'تم الصر لــ '
      ,[Reason] as 'السبب'
  FROM [dbo].[Sanad_sarf]
GO
/****** Object:  StoredProcedure [dbo].[SupplierMoneyReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SupplierMoneyReport]
AS

SELECT [Order_ID] as 'رقم الفاتورة',Suppliers.Sup_ID as 'رقم المورد' ,Suppliers.Sup_Name as 'اسم المورد',[Price] as 'السعر',[Order_Date] as 'تاريخ الفاتورة',[Reminder_Date] as 'تاريخ الاستحقاق' FROM [dbo].[Supplier_Money],Suppliers where Suppliers.Sup_ID =[Supplier_Money].Sup_ID
GO
/****** Object:  StoredProcedure [dbo].[TaxesBuyReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[TaxesBuyReport] @FromBuy nvarchar (30) ,@ToBuy nvarchar (30)
AS

select ISNULL( sum(Total_Order) , 0) as 'اجمالى فواتير المشتريات' ,ISNULL(sum (Total_Tax) ,0) as 'قيمه الضرائب مشتريات' ,ISNULL( Sum(Total_AfterTax) , 0 ) as 'السعر بعد الضرايب مشترايات' from Taxes_Report where Order_Type =N'فاتورة مشتريات' and Date between @FromBuy and @ToBuy
GO
/****** Object:  StoredProcedure [dbo].[TaxesReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[TaxesReport]
AS

SELECT [Order_ID] as 'رقم العملية',[Order_Num] as 'رقم الفاتورة',[Order_Type] as 'نوع العملية',[Tax_Type] as 'نوع الضريبة',[Sup_Name] as 'اسم المورد',[Cust_Name] as 'اسم العميل',[Total_Order] as 'اجمالى الفاتورة قبل الضريبة',[Total_Tax] as 'اجمالى الضريبة',[Total_AfterTax] as 'اجمالى الفاتورة بعد الضريبة',[Date] as 'التاريخ' FROM [dbo].[Taxes_Report]
GO
/****** Object:  StoredProcedure [dbo].[TaxesReturnBuyReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[TaxesReturnBuyReport] @FromReturnBuy nvarchar (30) ,@ToReturnBuy nvarchar (30)
AS

select ISNULL( sum(Total_Order) , 0) as 'اجمالى فواتير مرتجعات مشتريات' ,ISNULL(sum (Total_Tax) ,0) as 'قيمه الضرائب مرتجعات مشتريات' ,ISNULL( Sum(Total_AfterTax) , 0 ) as 'السعر بعد الضرايب مرتجعات مشتريات' from Taxes_Report where Order_Type =N'مرتجعات مشتريات' and Date between @FromReturnBuy and @ToReturnBuy

GO
/****** Object:  StoredProcedure [dbo].[TaxesReturnSaleReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[TaxesReturnSaleReport] @FromReturnSale nvarchar (30) ,@ToReturnSale nvarchar (30)
AS

select ISNULL( sum(Total_Order) , 0) as 'اجمالى فواتير مرتجعات مبيعات' ,ISNULL(sum (Total_Tax) ,0) as 'قيمه الضرائب مرتجعات مبيعات' ,ISNULL( Sum(Total_AfterTax) , 0 ) as 'السعر بعد الضرايب مرتجعات مبيعات' from Taxes_Report where Order_Type =N'مرتجعات مبيعات' and Date between @FromReturnSale and @ToReturnSale
GO
/****** Object:  StoredProcedure [dbo].[TaxesSaleReport]    Script Date: 4/28/2019 9:49:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[TaxesSaleReport] @FromSale nvarchar (30) ,@ToSale nvarchar (30)
AS

select ISNULL( sum(Total_Order) , 0) as 'اجمالى فواتير المبيعات' ,ISNULL(sum (Total_Tax) ,0) as 'قيمه الضرائب مبيعات' ,ISNULL( Sum(Total_AfterTax) , 0 ) as 'السعر بعد الضرايب مبيعات' from Taxes_Report where Order_Type =N'فاتورة مبيعات' and Date between @FromSale and @ToSale
GO
USE [master]
GO
ALTER DATABASE [Sales_System] SET  READ_WRITE 
GO
ALTER DATABASE [Sales_System]
COLLATE Arabic_CI_AI_KS_WS;
GO
