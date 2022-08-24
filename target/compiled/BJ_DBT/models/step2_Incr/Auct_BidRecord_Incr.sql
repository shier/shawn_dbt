
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([LotNumber] as varchar), Cast([AuctionID] as varchar), Cast([EndingBID] as varchar), Cast([ChangeTime] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidRecord_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_BidRecord_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
