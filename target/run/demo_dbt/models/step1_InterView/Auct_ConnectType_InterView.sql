create view "stg"."Auct_ConnectType_InterView__dbt_tmp" as
    
Select
	[CONNECTTYPEID] [ConnectTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ConnectType_Raw]
