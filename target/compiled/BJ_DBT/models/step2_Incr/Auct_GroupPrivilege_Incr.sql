
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([GroupID] as varchar), Cast([PrivilegeID] as varchar), [Deny], Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GroupPrivilege_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_GroupPrivilege_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
