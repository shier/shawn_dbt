
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Propertybags_Inter]
	)
Select * From hashData
