
Select
	cast(Oid as nvarchar(4000)) OID,
	cast(TargetKey as nvarchar(4000)) TargetKey,
	TargetType TargetType,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType
From CC_XpweakReference_Raw