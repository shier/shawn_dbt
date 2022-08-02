
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(Active as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Auctioneer_Inter]
	)
Select * From hashData
