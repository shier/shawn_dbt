create view "stg"."AH_Increments_FinalView__dbt_tmp" as
    
Select
	[ID],[LastUpdatedUser],[PriceLevel],[Amount],[ListingTypeID],[AuctionEventID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Increments_Incr] 
Where [dbt_valid_to] is null