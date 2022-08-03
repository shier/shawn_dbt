
With hashData as (
		Select
			HASHBYTES('MD5', concat(AllowDropDown, Cast(Created as varchar), Cast(CarOptionID as varchar), Cast(CarModelID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AvailableOptions_Inter]
	)
Select * From hashData