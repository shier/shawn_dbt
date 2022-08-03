
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([OID], [GUIDID], [DisplayName], Cast([IntID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AuditeDOBJectweakReference_Inter]
	)
Select * From hashData