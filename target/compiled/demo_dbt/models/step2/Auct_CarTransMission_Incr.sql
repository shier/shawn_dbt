
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Active, Cast(WebActive as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarTransMission_Inter]
	)
Select * From hashData