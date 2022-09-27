
Select
	cast([ID] as int) [Id],
	cast([ParentCategoryID] as int) [ParentCategoryId],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Lft] as int) [lft],
	cast([Rgt] as int) [rgt],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([RolesAllowed] as nvarchar(100)) [RolesAllowed],
	cast([EnabledCustomProperty] as nvarchar(100)) [EnabledCustomProperty],
	cast([MetaKeyWords] as nvarchar(4000)) [MetaKeywords],
	cast([MetaDescription] as nvarchar(4000)) [MetaDescription],
	cast([PageTitle] as nvarchar(4000)) [PageTitle],
	cast([Pagecontent] as nvarchar(4000)) [PageContent],
	cast([Name] as nvarchar(500)) [Name],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Type] as nvarchar(50)) [Type],
	cast([MvcAction] as nvarchar(100)) [MVCAction] 
From stg.[AH_Categories_FinalView]