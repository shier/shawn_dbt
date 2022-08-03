
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([ChildRoles], [ParentRoles], [OID], Cast([OptimisticLockField] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Securitysystemrolechildroles_Inter]
	)
Select * From hashData