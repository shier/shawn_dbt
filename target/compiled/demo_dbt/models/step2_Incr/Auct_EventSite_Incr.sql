
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([EventID] as varchar), Cast([SiteID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EventSite_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_EventSite_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)