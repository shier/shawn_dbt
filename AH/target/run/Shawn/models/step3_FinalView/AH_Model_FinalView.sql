create view "stg"."AH_Model_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Model_Incr] 
Where [dbt_valid_to] is null