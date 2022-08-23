
  
  if object_id ('"dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as varchar(64)) [ID],
	cast([Option2] as varchar(50)) [Option2],
	cast([Option3] as varchar(50)) [Option3],
	cast([Barcode] as varchar(102)) [BarCode],
	cast([WEightUnit] as varchar(10)) [WeightUnit],
	cast([InventoryItemID] as varchar(100)) [InventoryItemID],
	cast([ProductID] as varchar(64)) [ProductID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([SKU] as varchar(64)) [SKU],
	cast([FulfillmentService] as varchar(50)) [FulfillmentService],
	cast([Option1] as varchar(50)) [Option1],
	cast([CreatedDate] as datetime) [Created],
	cast([Updateddate] as datetime) [UpdatedDate],
	cast([RemovedDate] as datetime) [DeletedDate],
	cast([Position] as int) [Position],
	cast([Taxable] as int) [Taxable],
	cast([RequiresShipping] as int) [IsShippingRequired],
	cast([Price] as money) [Price],
	cast([CompAreatPrice] as money) [CompareAtPrice],
	cast([Grams] as decimal) [Grams],
	cast([Inventoryqty] as int) [InventoryQTY],
	cast([WEight] as decimal) [Weight],
	cast([DelayedsellOnlineqty] as decimal) [DelayedSellOnlineQTY],
	cast([OldInventoryqty] as decimal) [OldInventoryQTY] 
From stg.[Mer_ShopifyProductVariants_FinalView]
    ');

  CREATE TABLE "dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Mer_ShopifyProductVariants_FromStg__dbt_tmp_temp_view"
    end


