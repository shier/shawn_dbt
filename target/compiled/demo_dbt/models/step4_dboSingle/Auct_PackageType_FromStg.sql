
Select
	cast([PackageTypeID] as int) [PackageTypeID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_PackageType_FinalView]