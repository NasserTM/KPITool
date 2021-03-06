USE [KPIDB]
GO

UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = '' WHERE kpiTypeID IN ('OVEEQUEFF','AVAIL','QUAL','UTIL','MTBF','MTTR','REVENUE','COUNT','SALES','PERCEPTION','TTP','GENPER','GENDEC','GENINT','GENMON')
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Usually defined as Total Count / Target Counter, this KPI measures the performance of the organization in terms of percentage towards a goal, where a lower value is more desirable. For example, Percentage of people without health insurance, where 0% is the most desirable and 100% is the least desirable.  We call this type Accomplishment because they are used when measuring compliance with some standard and the objective is to minimize the percentage to meet the target.' 
WHERE kpiTypeID = 'AVAIL' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Mean time between failures (MTBF) is the predicted elapsed time between inherent failures of a system during operation. MTBF is calculated as the arithmetic mean (average) time between failures of a system.   For this type of KPI you must record the "Time between failures" and the system will automatically compute the MTFB from these values.' 
WHERE kpiTypeID = 'MTBF' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Time to Repair (MTTR) is a basic measure of the maintainability of repairable items. It represents the average time required to repair a failed component or device. Expressed mathematically, it is the total corrective maintenance time for failures divided by the total number of corrective maintenance actions for failures during a given period of time.  For this type of KPI you must record the "average time required to repair a failed component or device” and the system will automatically compute the MTTR from these values.' 
WHERE kpiTypeID = 'MTTR' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Revenue is the income that an organization has from its normal business activities. In accounting, revenue is often referred to as the "top line" due to its position on the income statement at the very top. This is to be contrasted with the "bottom line" which denotes net income.</br>For private organizations, revenue usually considers income from the sale of goods and services to customers and is also referred to as sales or turnover.   For non-profit organizations, revenue may be referred to as gross receipts and typically includes donations from individuals and corporations, support from government agencies, income from activities related to the organization''s mission, and income from fundraising activities, membership dues, and financial securities such as stocks, bonds or investment funds. For government institutions (National and Subnational Tax Administrations, Social Security, etc.), the revenue requires a sustainable collection process. Sometimes revenue and collection are used to express the same concept. ' 
WHERE kpiTypeID = 'REVENUE' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'A count of items.' 
WHERE kpiTypeID = 'COUNT' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'The earnings resulting from the sale of goods and/or services.' 
WHERE kpiTypeID = 'SALES' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'A measure of the opinion that people have with regards to an institution, subject or object.   We require that all perception measurement mechanisms transform their measurements into a percentage in the scale 0% to 100% where 0% means a very negative perception and 100% a very favorable perception.</br>For example, if we survey a group of people and ask them three questions: </br>a) are you happy with the services offered (yes/no)</br>b) would you recommend our services (yes/no)</br>c) how helpful was the service desk personnel (not at all, undecided, very helpful)</br>We can calculate a perception measure as (va+vb+vc)/3 where va is 0 if a) is no and 100 if a) is yes, vb is 0 if b) is no and 100 if b) is yes and vc is 0 if c) is not at all, 50% if c) is undecided and 100% if c) is very helpful.' 
WHERE kpiTypeID = 'PERCEPTION' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Time to process (or TTP) is the measure of how long it takes for the organization to process a certain type of event, such as “time required to file a claim” or “time to complete a request”. The time to process usually includes the response time and the wait time.' 
WHERE kpiTypeID = 'TTP' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Specify the direction (minimize or maximize) and whether we calculate averages or sums over the period. For a percentage KPI you must specify whether the system should consider an increase of percentage as a good thing (Maximize) or a decrease (Minimize) and whether the system should average individual values over the period or add them.' 
WHERE kpiTypeID = 'GENPER' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Specify the direction (minimize or maximize) and whether we calculate averages or sums over the period. For a decimal KPI you must specify whether the system should consider an increase in value as a good thing (Maximize) or a decrease (Minimize) and whether the system should average individual values over the period or add them.' 
WHERE kpiTypeID = 'GENDEC' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Specify the direction (minimize or maximize) and whether we calculate averages or sums over the period. For an integer KPI you must specify whether the system should consider an increase in value as a good thing (Maximize) or a decrease (Minimize) and whether the system should average individual values over the period or add them.' 
WHERE kpiTypeID = 'GENINT' AND [language] = 'EN'
UPDATE [dbo].[tbl_KPITypesLabels] SET [description] = 'Specify the direction (minimize or maximize) and whether we calculate averages or sums over the period. For a money KPI you must specify whether the system should consider an increase in value as a good thing (Maximize) or a decrease (Minimize) and whether the system should average individual values over the period or add them.' 
WHERE kpiTypeID = 'GENMON' AND [language] = 'EN'
GO

INSERT INTO [dbo].[tbl_KPITypes]([kpiTypeID],[directionID],[strategyID],[unitID])
     VALUES('SPEND','MIN','SUM','MONEY')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('SPEND','EN','Expenditure','The total amount spent for any given task, project or activity.')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('SPEND','ES','Expenditure','')
GO
INSERT INTO [dbo].[tbl_KPITypes]([kpiTypeID],[directionID],[strategyID],[unitID])
     VALUES('EARN','MAX','SUM','MONEY')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('EARN','EN','Earnings','Earnings are the net benefits of a corporation''s operation, and is usually the amount on which corporate tax is due.')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('EARN','ES','Earnings','')
GO
INSERT INTO [dbo].[tbl_KPITypes]([kpiTypeID],[directionID],[strategyID],[unitID])
     VALUES('DELIVER','MIN','AVG','TIME')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('DELIVER','EN','Average Time to Deliver','')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('DELIVER','ES','Average Time to Deliver','')
GO
INSERT INTO [dbo].[tbl_KPITypes]([kpiTypeID],[directionID],[strategyID],[unitID])
     VALUES('CYCLETIME','MIN','AVG','TIME')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('CYCLETIME','EN','Cycle Time','It is the time it takes to perform a specific function.')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('CYCLETIME','ES','Cycle Time','')
GO
INSERT INTO [dbo].[tbl_KPITypes]([kpiTypeID],[directionID],[strategyID],[unitID])
     VALUES('COVER','MAX','AVG','PERCENT')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('COVER','EN','Coverage','Coverage is defined as Cases Count / Total Cases Count.')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('COVER','ES','Coverage','')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('GENTIME','EN','Generic Time','Specify the direction (minimize or maximize) and whether we calculate averages or sums over the period. For a time-span KPI you must specify whether the system should consider an increase in value as a good thing (Maximize) or a decrease (Minimize) and whether the system should average individual values over the period or add them.')
GO
INSERT INTO [dbo].[tbl_KPITypesLabels]([kpiTypeID],[language],[typeName],[description])
     VALUES('GENTIME','ES','Tiempo genérico','')
GO


