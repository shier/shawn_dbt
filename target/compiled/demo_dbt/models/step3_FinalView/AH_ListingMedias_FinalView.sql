
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaID],[ListingID],[DisplayOrder] 
From stg.[AH_ListingMedias_Incr] 
Where [dbt_valid_to] is null