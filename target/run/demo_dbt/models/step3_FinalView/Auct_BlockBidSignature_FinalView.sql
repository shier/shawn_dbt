create view "stg"."Auct_BlockBidSignature_FinalView__dbt_tmp" as
    
Select
	[BlockBidSignatureID],[AuctionID],[AuctionBidderNumber],[SignaturePath],[BlockBidID] 
From stg.[Auct_BlockBidSignature_Incr] 
Where [dbt_valid_to] is null
