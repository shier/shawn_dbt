create view "stg"."Auct_PropertyStatus_FinalView__dbt_tmp" as
    
Select
	[PropertyStatusID],[Name],[Active] 
From stg.[Auct_PropertyStatus_Incr] 
Where [dbt_valid_to] is null
