create view "stg"."Auct_AuctionBidderCompleteStatus_FinalView__dbt_tmp" as
    
Select
	[AuctionBidderCompleteStatusID],[Name] 
From stg.[Auct_AuctionBidderCompleteStatus_Incr] 
Where [dbt_valid_to] is null
