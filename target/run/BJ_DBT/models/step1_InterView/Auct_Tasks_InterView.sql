create view "stg"."Auct_Tasks_InterView__dbt_tmp" as
    
Select
	[TASKID] [TaskID],
	[ACTIVE] [Active],
	[TASKCATEGORYID] [TaskCategoryID],
	[TASKCATEGORYLINKID] [TaskCategoryLinkID],
	cast([TASKCATEGORYLINKGUID] as nvarchar(4000)) [TaskCategoryLinkGUID]
From stg.[Auct_Tasks_Raw]