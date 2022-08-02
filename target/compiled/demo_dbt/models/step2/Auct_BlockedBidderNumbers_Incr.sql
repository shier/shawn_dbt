
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([AuctionID] as varchar), Cast([AuctionBidderNumber] as varchar), [Comments], Cast([BlockedByUserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockedBidderNumbers_Inter]
	)
Select * From hashData
