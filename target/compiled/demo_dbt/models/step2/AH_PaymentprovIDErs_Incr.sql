
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_PaymentprovIDErs_Inter]
	)
Select * From hashData
