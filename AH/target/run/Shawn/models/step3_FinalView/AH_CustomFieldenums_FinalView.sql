create view "stg"."AH_CustomFieldenums_FinalView__dbt_tmp" as
    
Select
	[ID],[Name],[Value],[CreatedOn],[UpdatedOn],[DeletedOn],[CustomFieldID],[Enabled] 
From stg.[AH_CustomFieldenums_Incr] 
Where [dbt_valid_to] is null