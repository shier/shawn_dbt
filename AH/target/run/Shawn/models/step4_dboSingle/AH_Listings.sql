
  
  if object_id ('"dbo"."AH_Listings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listings__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Listings__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Listings__dbt_tmp"
    end


   EXEC('create view dbo.AH_Listings__dbt_tmp_temp_view as
    
Select
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([PrimaryImageURI] as nvarchar(2048)) [PrimaryImageURI],
	cast([OwnerUserName] as nvarchar(500)) [OwnerUserName],
	cast([CurrentListingActionUserName] as nvarchar(500)) [CurrentListingActionUserName],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Description] as nvarchar(4000)) [Description],
	cast([SubTitle] as nvarchar(4000)) [Subtitle],
	cast([Location] as nvarchar(4000)) [Location],
	cast([Status] as nvarchar(100)) [Status],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Enddttm] as datetime) [EndDTTM],
	cast([Startdttm] as datetime) [StartDTTM],
	cast([AutoreListrEMAining] as int) [AutoRelistRemaining],
	cast([CurrentQuantity] as int) [CurrentQuantity],
	cast([OriginalQuantity] as int) [OriginalQuantity],
	cast([ReListiteration] as int) [RelistIteration],
	cast([LotID] as int) [LotId],
	cast([AcceptedActionCount] as int) [AcceptedActionCount],
	cast([OwnerID] as int) [OwnerId],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([Duration] as int) [Duration],
	cast([Version] as int) [Version],
	cast([CurrencyID] as money) [CurrencyId],
	cast([PrimaryCategoryID] as int) [PrimaryCategoryId],
	cast([CurrentListingActionID] as int) [CurrentListingActionID],
	cast([OfferCount] as int) [OfferCount],
	cast([ID] as int) [Id],
	cast([OriginalreListCount] as int) [OriginalRelistCount],
	cast([Hits] as int) [Hits],
	cast([CurrentPrice] as decimal(24,2)) [CurrentPrice],
	cast([Increment] as decimal(24,2)) [Increment],
	cast([OriginalPrice] as money) [OriginalPrice] 
From stg.[AH_Listings_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Listings__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Listings__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Listings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Listings__dbt_tmp_temp_view"
    end


