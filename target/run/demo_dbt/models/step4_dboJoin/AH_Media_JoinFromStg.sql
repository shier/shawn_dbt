
  
  if object_id ('"dbo"."AH_Media_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Media_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Media_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Media_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_Media_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	H_LCM.[ID],
	cast(H_LCM.[UpdatedOn] as datetime) [UpdatedDate_AHListingCommentsMedias],
	cast(H_LCM.[DeletedOn] as datetime) [DeletedDate_AHListingCommentsMedias],
	cast(H_LCM.[CreatedOn] as datetime) [Created_AHListingCommentsMedias],
	H_LCM.[CommentID],
	H_LCM.[DisplayOrder],
	H_M.[ID] [MediaID],
	cast(H_M.[CreatedOn] as datetime) [Created_RWXMedia],
	cast(H_M.[UpdatedOn] as datetime) [UpdatedDate_RWXMedia],
	cast(H_M.[DeletedOn] as datetime) [DeletedDate_RWXMedia],
	cast(H_M.[GUID] as uniqueidentifier) [GUID],
	cast(H_M.[DefaultvariationName] as nvarchar(500)) [DefaultVariationName],
	cast(H_M.[Loader] as nvarchar(500)) [Loader],
	cast(H_M.[Saver] as nvarchar(500)) [Saver],
	cast(H_M.[LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast(H_M.[ConText] as nvarchar(4000)) [Context],
	cast(H_M.[Status] as nvarchar(100)) [Status]
FROM [stg].[AH_ListingCommentsMedias_FinalView] AS H_LCM 
JOIN [stg].[AH_Media_FinalView] AS H_M ON H_M.[ID]=H_LCM.[MediaID]
    ');

  CREATE TABLE "dbo"."AH_Media_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Media_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Media_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Media_JoinFromStg__dbt_tmp_temp_view"
    end


