
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingsReserveHistory_Inter]
	)
Select * From hashData
