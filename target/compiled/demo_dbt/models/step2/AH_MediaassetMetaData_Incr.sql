
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_MediaassetMetaData_Inter]
	)
Select * From hashData