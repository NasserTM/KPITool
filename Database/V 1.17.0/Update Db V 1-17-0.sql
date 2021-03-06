/* 
	Updates de the KPIDB database to version 1.17.0 
*/

Use [Master]
GO 

IF  NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'KPIDB')
	RAISERROR('KPIDB database Doesn´t exists. Create the database first',16,127)
GO

PRINT 'Updating KPIDB database to version 1.17.0'

Use [KPIDB]
GO
PRINT 'Verifying database version'

/*
 * Verify that we are using the right database version
 */

IF  NOT ((EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetVersionMajor]') AND type in (N'P', N'PC'))) 
	AND 
	(EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetVersionMinor]') AND type in (N'P', N'PC'))))
		RAISERROR('KPIDB database has not been initialized.  Cant find version stored procedures',16,127)


declare @smiMajor smallint 
declare @smiMinor smallint

exec [dbo].[usp_GetVersionMajor] @smiMajor output
exec [dbo].[usp_GetVersionMinor] @smiMinor output

IF NOT (@smiMajor = 1 AND @smiMinor = 16) 
BEGIN
	RAISERROR('KPIDB database is not in version 1.16 This program only applies to version 1.16',16,127)
	RETURN;
END

PRINT 'KPIDB Database version OK'
GO

--===================================================================================================


USE [KPIDB]
GO

ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] ADD [orden] int DEFAULT(0)
GO

ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] ADD [hasMeasure] BIT DEFAULT(0)
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Currency
-- =============================================
ALTER PROCEDURE [dbo].[usp_CLA_GetCurrencyUnitByCurrency]
	@varLanguage VARCHAR(5),
	@varCurrencyID VARCHAR(5)
AS
BEGIN
	
	SELECT [a].[currencyID], [d].[currencyUnitID], [l].[name], [a].[hasMeasure]
    FROM [dbo].[tbl_CurrencyUnits] d 
    INNER JOIN [dbo].[tbl_CurrencyUnitsLabels] [l] ON [d].[currencyUnitID] = [l].[currencyUnitID]
    INNER JOIN [dbo].[tbl_UnitsAllowedForCurrency] [a] ON [a].[currencyUnitID] = [d].[currencyUnitID] 
    WHERE [l].[language] = @varLanguage
    AND   [a].[currencyID] = @varCurrencyID
    ORDER BY [a].[orden]
    
END
GO


/****** Object:  StoredProcedure [dbo].[usp_CURRENCY_GetCurrencyUnitsByID]    Script Date: 07/25/2016 10:22:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CURRENCY_GetCurrencyUnitsByID]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_CURRENCY_GetCurrencyUnitsByID]
GO


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: July 25 2016
-- Description:	Get a currency units by ID
-- =============================================
CREATE PROCEDURE [dbo].[usp_CURRENCY_GetCurrencyUnitsByID]
	@language char(3),
	@currencyId char(3),
	@currencyUnitId char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select u.[currencyID], u.[currencyUnitID], ul.name, [u].[hasMeasure]
	from [dbo].[tbl_UnitsAllowedForCurrency] as u
	inner join [dbo].[tbl_CurrencyUnitsLabels] as ul on u.[currencyUnitID] = ul.[currencyUnitID]
	where ul.language = @language
	and   ul.currencyUnitID = @currencyUnitId
	and   u.currencyID = @currencyId
END

GO

USE [KPIDB]
GO

/****** Object:  StoredProcedure [dbo].[usp_CURRENCY_GetCurrencyUnitsAcceptableForAllCurrencies]    Script Date: 07/25/2016 10:24:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 26 2016>
-- Description:	Get a list of currency units that can be used for all currencies
-- =============================================
ALTER PROCEDURE [dbo].[usp_CURRENCY_GetCurrencyUnitsAcceptableForAllCurrencies]
	@language char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select u.[currencyID], u.[currencyUnitID], ul.name, [u].[hasMeasure]
		from [dbo].[tbl_UnitsAllowedForCurrency] as u
		join [dbo].[tbl_CurrencyUnitsLabels] as ul on u.[currencyUnitID] = ul.[currencyUnitID]
		where ul.language = @language
END

GO

--=================================================================================================

/*
 * We are done, mark the database as a 1.17.0 database.
 */
DELETE FROM [dbo].[tbl_DatabaseInfo] 
INSERT INTO [dbo].[tbl_DatabaseInfo] 
	([majorversion], [minorversion], [releaseversion])
	VALUES (1,17,0)
GO

