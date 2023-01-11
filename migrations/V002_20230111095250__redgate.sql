SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] ADD
[ShipCountryCode] [int] NULL
GO
PRINT N'Altering [dbo].[CustomerDemographics]'
GO
ALTER TABLE [dbo].[CustomerDemographics] ADD
[nationality] [nvarchar] (20) NULL
GO
PRINT N'Altering [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] ADD
[RegionCode] [nvarchar] (20) NULL,
[CityCode] [nvarchar] (20) NULL,
[Twitter] [nvarchar] (50) NULL
GO
PRINT N'Altering [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] ADD
[Nationality] [nvarchar] (20) NULL,
[NationalityCode] [nvarchar] (20) NULL
GO
PRINT N'Altering [dbo].[Shippers]'
GO
ALTER TABLE [dbo].[Shippers] ADD
[id] [int] NULL,
[ShipId] [int] NULL
GO
PRINT N'Altering [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] ADD
[date] [date] NULL
GO
PRINT N'Altering [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] ADD
[RegionName] [nvarchar] (20) NULL,
[foo] [nvarchar] (20) NULL,
[foo2] [int] NULL,
[RegionContact] [nvarchar] (50) NULL
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
GO
PRINT N'Refreshing [dbo].[Customer and Suppliers by City]'
GO
EXEC sp_refreshview N'[dbo].[Customer and Suppliers by City]'
GO
PRINT N'Refreshing [dbo].[Invoices]'
GO
EXEC sp_refreshview N'[dbo].[Invoices]'
GO
PRINT N'Refreshing [dbo].[Orders Qry]'
GO
EXEC sp_refreshview N'[dbo].[Orders Qry]'
GO
PRINT N'Refreshing [dbo].[Products by Category]'
GO
EXEC sp_refreshview N'[dbo].[Products by Category]'
GO
PRINT N'Refreshing [dbo].[Quarterly Orders]'
GO
EXEC sp_refreshview N'[dbo].[Quarterly Orders]'
GO
PRINT N'Refreshing [dbo].[Sales by Category]'
GO
EXEC sp_refreshview N'[dbo].[Sales by Category]'
GO
PRINT N'Refreshing [dbo].[Sales Totals by Amount]'
GO
EXEC sp_refreshview N'[dbo].[Sales Totals by Amount]'
GO
PRINT N'Refreshing [dbo].[Summary of Sales by Quarter]'
GO
EXEC sp_refreshview N'[dbo].[Summary of Sales by Quarter]'
GO
PRINT N'Refreshing [dbo].[Summary of Sales by Year]'
GO
EXEC sp_refreshview N'[dbo].[Summary of Sales by Year]'
GO

