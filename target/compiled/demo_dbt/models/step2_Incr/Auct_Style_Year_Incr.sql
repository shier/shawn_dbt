
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([StyleID] as varchar), Cast([YearID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Style_Year_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Style_Year_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)