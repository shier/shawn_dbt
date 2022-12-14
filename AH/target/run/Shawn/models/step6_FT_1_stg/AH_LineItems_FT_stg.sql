
  
  if object_id ('"stg"."AH_LineItems_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_LineItems_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_LineItems_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.AH_LineItems_FT_stg__dbt_tmp_temp_view as
    
SELECT
		[Id] AS [LineItemsID],
		[OwnerId] AS [OwnerID],
		[PayerId] AS [PayerID],
		[InvoiceId] AS [InvoiceID],
		[ListingId] AS [ListingID],
		[Description],
		[LastUpdatedUser],
		[Currency],
		[Status],
		[Type],
		[TotalAmount],
		[Quantity] AS [QTY],
		[PerUnitAmount],
		[Taxable] AS [IsTaxable],
		[IsArchived],
		[Relistiteration],
		[BuyersPremiumApplies] AS [HasBuyerPremiumApplies],
		[IsPayerArchived],
		[DateStamp],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate],
		[DeletedOn] AS [DeletedDate]
FROM [stg].[AH_LineItems_FinalView];
    ');

  CREATE TABLE "stg"."AH_LineItems_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_LineItems_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_LineItems_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_LineItems_FT_stg__dbt_tmp_temp_view"
    end


