
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), Cast([IsinplaceReport] as varchar), [OID], [OBJectTypeName], [Name], [ParaMetersoBJectTypeName], [PredefinedReportType], Cast([Content] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ReportDatav2_Inter]
	)
Select * From hashData
