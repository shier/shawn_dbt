create view "stg"."Auct_DisplayStatus_FinalView__dbt_tmp" as
    
Select
	[DisplayStatusID],[Name] 
From stg.[Auct_DisplayStatus_Incr] 
Where [dbt_valid_to] is null