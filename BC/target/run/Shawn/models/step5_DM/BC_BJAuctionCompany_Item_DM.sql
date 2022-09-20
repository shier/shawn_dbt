
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view as
    
SELECT
    [No_],
    [No_2],
    [Description],
    [SearchDescription],
    [Description2],
    [BaseUnitofMeasure],
    [PriceUnitConversion],
    [Type],
    [InventoryPostingGroup],
    [ShelfNo_],
    [ItemDisc_Group],
    [AllowInvoiceDisc_],
    [StatisticsGroup],
    [CommissionGroup],
    [UnitPrice],
    [Price_ProfitCalculation],
    [Profit_],
    [CostingMethod],
    [UnitCost],
    [StandardCost],
    [LastDirectCost],
    [IndirectCost_],
    [CostisAdjusted],
    [AllowOnlineAdjustment],
    [VendorNo_],
    [VendorItemNo_],
    [LeadTimeCalculation],
    [ReorderPoint],
    [MaximumInventory],
    [ReorderQuantity],
    [AlternativeItemNo_],
    [UnitListPrice],
    [DutyDue_],
    [DutyCode],
    [GrossWeight],
    [NetWeight],
    [UnitsperParcel],
    [UnitVolume],
    [Durability],
    [FreightType],
    [TariffNo_],
    [DutyUnitConversion],
    [Country_RegionPurchasedCode],
    [BudgetQuantity],
    [BudgetedAmount],
    [BudgetProfit],
    [Blocked],
    [BlockReason],
    [LastDateTimeModified],
    [LastDateModified],
    [LastTimeModified],
    [PriceIncludesVAT],
    [VATBus_PostingGr_Price],
    [Gen_Prod_PostingGroup],
    [Picture],
    [Country_RegionofOriginCode],
    [AutomaticExt_Texts],
    [No_Series],
    [TaxGroupCode],
    [VATProd_PostingGroup],
    [Reserve],
    [GlobalDimension1Code],
    [GlobalDimension2Code],
    [StockoutWarning],
    [PreventNegativeInventory],
    [ApplicationWksh_UserID],
    [AssemblyPolicy],
    [GTIN],
    [DefaultDeferralTemplateCode],
    [Low-LevelCode],
    [LotSize],
    [SerialNos_],
    [LastUnitCostCalc_Date],
    [Rolled-upMaterialCost],
    [Rolled-upCapacityCost],
    [Scrap_],
    [InventoryValueZero],
    [DiscreteOrderQuantity],
    [MinimumOrderQuantity],
    [MaximumOrderQuantity],
    [SafetyStockQuantity],
    [OrderMultiple],
    [SafetyLeadTime],
    [FlushingMethod],
    [ReplenishmentSystem],
    [RoundingPrecision],
    [SalesUnitofMeasure],
    [Purch_UnitofMeasure],
    [TimeBucket],
    [ReorderingPolicy],
    [IncludeInventory],
    [ManufacturingPolicy],
    [ReschedulingPeriod],
    [LotAccumulationPeriod],
    [DampenerPeriod],
    [DampenerQuantity],
    [OverflowLevel],
    [ManufacturerCode],
    [ItemCategoryCode],
    [CreatedFromNonstockItem],
    [ProductGroupCode],
    [ServiceItemGroup],
    [ItemTrackingCode],
    [LotNos_],
    [ExpirationCalculation],
    [WarehouseClassCode],
    [SpecialEquipmentCode],
    [Put-awayTemplateCode],
    [Put-awayUnitofMeasureCode],
    [PhysInvtCountingPeriodCode],
    [LastCountingPeriodUpdate],
    [UseCross-Docking],
    [NextCountingStartDate],
    [NextCountingEndDate],
    [Id],
    [UnitofMeasureId],
    [TaxGroupId],
    [DutyClass],
    [SATItemClassification],
    [RoutingNo_],
    [ProductionBOMNo_],
    [Single-LevelMaterialCost],
    [Single-LevelCapacityCost],
    [Single-LevelSubcontrd_Cost],
    [Single-LevelCap_OvhdCost],
    [Single-LevelMfg_OvhdCost],
    [OverheadRate],
    [Rolled-upSubcontractedCost],
    [Rolled-upMfg_OvhdCost],
    [Rolled-upCap_OverheadCost],
    [OrderTrackingPolicy],
    [Critical],
    [CommonItemNo_],
    [SalesBlocked],
    [PurchasingBlocked],
    [ItemCategoryId],
    [PurchasingCode],
    [Over-ReceiptCode]

    -- [$systemId],
    -- [$systemCreatedAt],
    -- [$systemCreatedBy],
    -- [$systemModifiedAt],
    -- [$systemModifiedBy],
from [stg].[BC_BJAuctionCompany_Item_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_Item_DM__dbt_tmp_temp_view"
    end


