
Select
	[ID],[ListingTypeID],[Enabled],[CreatedOn],[UpdatedOn],[DeletedOn],[MediaassetName],[Scope] 
From stg.[AH_ListingTypeMedia_Incr] 
Where [dbt_valid_to] is null