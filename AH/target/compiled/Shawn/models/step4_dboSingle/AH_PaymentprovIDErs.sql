
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([Batchcapable] as bit) [BatchCapable],
	cast([ID] as int) [Id] 
From stg.[AH_PaymentprovIDErs_FinalView]