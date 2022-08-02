
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SearchFor_Inter]
	)
Select * From hashData
