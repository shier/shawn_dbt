create view "stg"."Auct_TaskCategories_FinalView__dbt_tmp" as
    
Select
	[TaskCategoryID],[Active],[Name] 
From stg.[Auct_TaskCategories_Incr] 
Where [dbt_valid_to] is null