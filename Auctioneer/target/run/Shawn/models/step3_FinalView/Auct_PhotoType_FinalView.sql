create view "stg"."Auct_PhotoType_FinalView__dbt_tmp" as
    
Select
	[PhotoTypeID],[Name],[Created],[UpdateEventID],[ItemTypeID],[PhotoFileName] 
From stg.[Auct_PhotoType_Incr] 
Where [dbt_valid_to] is null