create view "stg"."AH_CustomFieldenums_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CustomFieldId] [CustomFieldID],
	[Enabled] [Enabled]
From stg.[AH_CustomFieldenums_Raw]
