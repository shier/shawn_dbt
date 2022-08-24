create view "dbo_stg"."Auct_PhotoType_InterView__dbt_tmp" as
    
Select
	[PHOTOTYPEID] [PhotoTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ITEMTYPEID] [ItemTypeID],
	cast([PHOTOFILENAME] as nvarchar(4000)) [PhotoFileName]
From stg.[Auct_PhotoType_Raw]