USE [KPIDB]
GO

INSERT [dbo].[tbl_PAR_Parameter] ([parameterID], [description], [value]) VALUES (1, N'Amount of measurements for the base value to AVG strategy', N'3')
INSERT [dbo].[tbl_PAR_Parameter] ([parameterID], [description], [value]) VALUES (2, N'Amount of measurements for the actual value to AVG strategy', N'3')

DELETE FROM [dbo].[tbl_SEG_ObjectActions] 
WHERE [objectActionID] = 'MAN_AREA'
GO

DELETE FROM [dbo].[tbl_SEG_ObjectPublic] 
WHERE [objectActionID] = 'MAN_AREA'
GO

DELETE FROM [dbo].[tbl_SEG_ObjectPermissions] 
WHERE [objectActionID] = 'MAN_AREA'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 1 
WHERE [objectActionID] = 'OWN'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 2 
WHERE [objectActionID] = 'MAN_PROJECT'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 3 
WHERE [objectActionID] = 'MAN_ACTIVITY'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 4 
WHERE [objectActionID] = 'MAN_PEOPLE'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 5 
WHERE [objectActionID] = 'MAN_KPI'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 6 
WHERE [objectActionID] = 'VIEW_KPI'
GO

UPDATE [dbo].[tbl_SEG_ObjectActions] 
SET [order] = 7 
WHERE [objectActionID] = 'ENTER_DATA'
GO
