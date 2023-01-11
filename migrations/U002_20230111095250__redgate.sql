SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
PRINT N'Altering [dbo].[CustomerDemographics]'
GO
ALTER TABLE [dbo].[CustomerDemographics] DROP
COLUMN [nationality]
GO
PRINT N'Altering [dbo].[Customers]'
GO
ALTER TABLE [dbo].[Customers] DROP
COLUMN [RegionCode],
COLUMN [CityCode],
COLUMN [Twitter]
GO
PRINT N'Altering [dbo].[Territories]'
GO
ALTER TABLE [dbo].[Territories] DROP
COLUMN [Nationality],
COLUMN [NationalityCode]
GO
PRINT N'Altering [dbo].[Orders]'
GO
ALTER TABLE [dbo].[Orders] DROP
COLUMN [ShipCountryCode]
GO
PRINT N'Altering [dbo].[Shippers]'
GO
ALTER TABLE [dbo].[Shippers] DROP
COLUMN [id],
COLUMN [ShipId]
GO
PRINT N'Altering [dbo].[Categories]'
GO
ALTER TABLE [dbo].[Categories] DROP
COLUMN [date]
GO
PRINT N'Altering [dbo].[Region]'
GO
ALTER TABLE [dbo].[Region] DROP
COLUMN [RegionName],
COLUMN [foo],
COLUMN [foo2],
COLUMN [RegionContact]
GO
PRINT N'Refreshing [dbo].[Customer and Suppliers by City]'
GO
EXEC sp_refreshview N'[dbo].[Customer and Suppliers by City]'
GO
PRINT N'Refreshing [dbo].[Alphabetical list of products]'
GO
EXEC sp_refreshview N'[dbo].[Alphabetical list of products]'
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
PRINT N'Refreshing [dbo].[Invoices]'
GO
EXEC sp_refreshview N'[dbo].[Invoices]'
GO
PRINT N'Refreshing [dbo].[Product Sales for 1997]'
GO
EXEC sp_refreshview N'[dbo].[Product Sales for 1997]'
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

