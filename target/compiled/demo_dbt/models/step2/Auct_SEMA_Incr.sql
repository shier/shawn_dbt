
With hashData as (
		Select
			HASHBYTES('MD5', concat(First_Name, Last_Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SEMA_Inter]
	)
Select * From hashData
