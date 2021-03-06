/****** Script for SelectTopNRows command from SSMS  ******/
USE KPIDB
Go

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Overall Equipment Effectiveness (OEE) quantifies how well a manufacturing unit performs relative to its designed capacity, during the periods when it is scheduled to run.  OEE is calculated with the formula (Availability)*(Performance)*(Quality), where each of these terms is measured as a percentage. Alternatively, and often easier, OEE is calculated by dividing the minimum time needed to produce the parts under optimal conditions by the actual time needed to produce the parts.'
  where kpiTypeID = 'OVEEQUEFF' and [language] = 'EN'

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Availability is the proportion of time a system or equipment is in a functioning condition, and is typically defined as Run Time / Total Time.'
  where kpiTypeID = 'OVEEQUEFF' and [language] = 'EN'
  
UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Usually defined as Total Count / Target Counter, this KPI measures the performance of the organization in terms of percentage towards a goal, where a higher value is more desirable. For example, Percentage of people trained, where 100% is the most desirable and 0% is the least desirable.'
  where kpiTypeID = 'PERF' and [language] = 'EN'

INSERT INTO [dbo].[tbl_KPITypes]
           ([kpiTypeID]
           ,[directionID]
           ,[strategyID]
           ,[unitID])
    VALUES
           ('ACCOMPLISH'
           ,'MIN'
           ,'AVG'
           ,'PERCENT')

INSERT INTO [dbo].[tbl_KPITypesLabels]
           ([kpiTypeID]
           ,[language]
           ,[typeName]
           ,[description])
     VALUES
           ('ACCOMPLISH'
           ,'ES'
           ,'Accomplishment'
           ,'')

INSERT INTO [dbo].[tbl_KPITypesLabels]
           ([kpiTypeID]
           ,[language]
           ,[typeName]
           ,[description])
     VALUES
           ('ACCOMPLISH'
           ,'EN'
           ,'Accomplishment'
           ,'Usually defined as Total Count / Target Counter, this KPI measures the performance of the organization in terms of percentage towards a goal, where a lower value is more desirable. For example, Percentage of people without health insurance, where 0% is the most desirable and 100% is the least desirable.  We call this type Accomplishment because they are used when measuring compliance with some standard and the objective is to minimize the percentage to meet the target.')

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Usually defined as good count / total count, this is the percentage of good parts out of the total parts produced.'
  where kpiTypeID = 'QUAL' and [language] = 'EN'

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Usually measured as Actual Use / Capacity, Utilization measures the percentage of the time that a resource is used.  A utilization of 100% means that the resource is used to its full capacity, and a utilization of 0% means that the resource is not used at all.'
  where kpiTypeID = 'UTIL' and [language] = 'EN'

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'Mean Time to Repair (MTTR) is a basic measure of the maintainability of repairable items. It represents the average time required to repair a failed component or device. Expressed mathematically, it is the total corrective maintenance time for failures divided by the total number of corrective maintenance actions for failures during a given period of time.  For this type of KPI you must record the "average time required to repair a failed component or device” and the system will automatically compute the MTTR from these values.'
  where kpiTypeID = 'MTTR' and [language] = 'EN'

UPDATE [dbo].[tbl_KPITypesLabels]
	SET [description] = 'The Average Time to Deliver is a measure of the total time that it takes to deliver a product or service. '
  where kpiTypeID = 'DELIVER' and [language] = 'EN'
  
GO

--=================================================================================================

/*
 * We are done, mark the database as a 1.21.2 database.
 */
DELETE FROM [dbo].[tbl_DatabaseInfo] 
INSERT INTO [dbo].[tbl_DatabaseInfo] 
	([majorversion], [minorversion], [releaseversion])
	VALUES (1,21,2)
GO

