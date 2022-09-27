
Select
	cast([No_] as nvarchar(4000)) [No_],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([VendorItemNo_] as nvarchar(4000)) [VendorItemNo_],
	cast([ItemDisc_Group] as nvarchar(4000)) [ItemDisc_Group],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([Picture] as nvarchar(4000)) [Picture],
	cast([DefaultDeferralTemplateCode] as nvarchar(4000)) [DefaultDeferralTemplateCode],
	cast([ApplicationWksh_UserID] as nvarchar(4000)) [ApplicationWksh_UserID],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([SalesUnitofMeasure] as nvarchar(4000)) [SalesUnitofMeasure],
	cast([ServiceItemGroup] as nvarchar(4000)) [ServiceItemGroup],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode],
	cast([DampenerPeriod] as nvarchar(4000)) [DampenerPeriod],
	cast([Put-awayTemplateCode] as nvarchar(4000)) [Put-awayTemplateCode],
	cast([ExpirationCalculation] as nvarchar(4000)) [ExpirationCalculation],
	cast([ItemTrackingCode] as nvarchar(4000)) [ItemTrackingCode],
	cast([TaxGroupId] as nvarchar(4000)) [TaxGroupId],
	cast([Put-awayUnitofMeasureCode] as nvarchar(4000)) [Put-awayUnitofMeasureCode],
	cast([ItemCategoryId] as nvarchar(4000)) [ItemCategoryId],
	cast([ProductionBOMNo_] as nvarchar(4000)) [ProductionBOMNo_],
	cast([SATItemClassification] as nvarchar(4000)) [SATItemClassification],
	cast([Rolled-upCap_OverheadCost] as numeric(19,4)) [Rolled-upCap_OverheadCost],
	cast([OverheadRate] as numeric(19,4)) [OverheadRate],
	cast([ReorderQuantity] as numeric(19,4)) [ReorderQuantity],
	cast([ReorderPoint] as numeric(19,4)) [ReorderPoint],
	cast([BudgetQuantity] as numeric(19,4)) [BudgetQuantity],
	cast([UnitVolume] as numeric(19,4)) [UnitVolume],
	cast([NetWeight] as numeric(19,4)) [NetWeight],
	cast([Rolled-upMaterialCost] as numeric(19,4)) [Rolled-upMaterialCost],
	cast([BudgetedAmount] as numeric(19,4)) [BudgetedAmount],
	cast([MaximumOrderQuantity] as numeric(19,4)) [MaximumOrderQuantity],
	cast([Single-LevelMfg_OvhdCost] as numeric(19,4)) [Single-LevelMfg_OvhdCost],
	cast([Single-LevelSubcontrd_Cost] as numeric(19,4)) [Single-LevelSubcontrd_Cost],
	cast([OverflowLevel] as numeric(19,4)) [OverflowLevel],
	cast([StandardCost] as numeric(19,4)) [StandardCost],
	cast([UnitPrice] as numeric(19,4)) [UnitPrice],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([NextCountingStartDate] as datetime) [NextCountingStartDate],
	cast([LastDateTimeModified] as datetime) [LastDateTimeModified],
	cast([CostisAdjusted] as int) [CostisAdjusted],
	cast([Price_ProfitCalculation] as int) [Price_ProfitCalculation],
	cast([StockoutWarning] as int) [StockoutWarning],
	cast([AutomaticExt_Texts] as int) [AutomaticExt_Texts],
	cast([DiscreteOrderQuantity] as int) [DiscreteOrderQuantity],
	cast([AssemblyPolicy] as int) [AssemblyPolicy],
	cast([UseCross-Docking] as int) [UseCross-Docking],
	cast([Critical] as int) [Critical],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([Over-ReceiptCode] as nvarchar(4000)) [Over-ReceiptCode],
	cast([BaseUnitofMeasure] as nvarchar(4000)) [BaseUnitofMeasure],
	cast([SearchDescription] as nvarchar(4000)) [SearchDescription],
	cast([LeadTimeCalculation] as nvarchar(4000)) [LeadTimeCalculation],
	cast([ShelfNo_] as nvarchar(4000)) [ShelfNo_],
	cast([Country_RegionPurchasedCode] as nvarchar(4000)) [Country_RegionPurchasedCode],
	cast([FreightType] as nvarchar(4000)) [FreightType],
	cast([DutyCode] as nvarchar(4000)) [DutyCode],
	cast([VATBus_PostingGr_Price] as nvarchar(4000)) [VATBus_PostingGr_Price],
	cast([GTIN] as nvarchar(4000)) [GTIN],
	cast([ReschedulingPeriod] as nvarchar(4000)) [ReschedulingPeriod],
	cast([Purch_UnitofMeasure] as nvarchar(4000)) [Purch_UnitofMeasure],
	cast([SafetyLeadTime] as nvarchar(4000)) [SafetyLeadTime],
	cast([WarehouseClassCode] as nvarchar(4000)) [WarehouseClassCode],
	cast([LotNos_] as nvarchar(4000)) [LotNos_],
	cast([DutyClass] as nvarchar(4000)) [DutyClass],
	cast([UnitofMeasureId] as nvarchar(4000)) [UnitofMeasureId],
	cast([PhysInvtCountingPeriodCode] as nvarchar(4000)) [PhysInvtCountingPeriodCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([CommonItemNo_] as nvarchar(4000)) [CommonItemNo_],
	cast([RoutingNo_] as nvarchar(4000)) [RoutingNo_],
	cast([DutyDue_] as numeric(19,4)) [DutyDue_],
	cast([UnitsperParcel] as numeric(19,4)) [UnitsperParcel],
	cast([GrossWeight] as numeric(19,4)) [GrossWeight],
	cast([Rolled-upCapacityCost] as numeric(19,4)) [Rolled-upCapacityCost],
	cast([LotSize] as numeric(19,4)) [LotSize],
	cast([RoundingPrecision] as numeric(19,4)) [RoundingPrecision],
	cast([SafetyStockQuantity] as numeric(19,4)) [SafetyStockQuantity],
	cast([MinimumOrderQuantity] as numeric(19,4)) [MinimumOrderQuantity],
	cast([Single-LevelMaterialCost] as numeric(19,4)) [Single-LevelMaterialCost],
	cast([UnitCost] as numeric(19,4)) [UnitCost],
	cast([LastUnitCostCalc_Date] as datetime) [LastUnitCostCalc_Date],
	cast([LastDateModified] as datetime) [LastDateModified],
	cast([CostingMethod] as int) [CostingMethod],
	cast([CommissionGroup] as int) [CommissionGroup],
	cast([PreventNegativeInventory] as int) [PreventNegativeInventory],
	cast([Reserve] as int) [Reserve],
	cast([PriceIncludesVAT] as int) [PriceIncludesVAT],
	cast([ReplenishmentSystem] as int) [ReplenishmentSystem],
	cast([Low-LevelCode] as int) [Low-LevelCode],
	cast([ManufacturingPolicy] as int) [ManufacturingPolicy],
	cast([ReorderingPolicy] as int) [ReorderingPolicy],
	cast([SalesBlocked] as int) [SalesBlocked],
	cast([AllowInvoiceDisc_] as int) [AllowInvoiceDisc_],
	cast([PriceUnitConversion] as int) [PriceUnitConversion],
	cast([PurchasingCode] as nvarchar(4000)) [PurchasingCode],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AlternativeItemNo_] as nvarchar(4000)) [AlternativeItemNo_],
	cast([VendorNo_] as nvarchar(4000)) [VendorNo_],
	cast([BlockReason] as nvarchar(4000)) [BlockReason],
	cast([TariffNo_] as nvarchar(4000)) [TariffNo_],
	cast([Country_RegionofOriginCode] as nvarchar(4000)) [Country_RegionofOriginCode],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([TimeBucket] as nvarchar(4000)) [TimeBucket],
	cast([SerialNos_] as nvarchar(4000)) [SerialNos_],
	cast([ProductGroupCode] as nvarchar(4000)) [ProductGroupCode],
	cast([ManufacturerCode] as nvarchar(4000)) [ManufacturerCode],
	cast([LotAccumulationPeriod] as nvarchar(4000)) [LotAccumulationPeriod],
	cast([SpecialEquipmentCode] as nvarchar(4000)) [SpecialEquipmentCode],
	cast([Id] as nvarchar(4000)) [Id],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([Rolled-upSubcontractedCost] as numeric(19,4)) [Rolled-upSubcontractedCost],
	cast([UnitListPrice] as numeric(19,4)) [UnitListPrice],
	cast([MaximumInventory] as numeric(19,4)) [MaximumInventory],
	cast([IndirectCost_] as numeric(19,4)) [IndirectCost_],
	cast([DutyUnitConversion] as numeric(19,4)) [DutyUnitConversion],
	cast([BudgetProfit] as numeric(19,4)) [BudgetProfit],
	cast([DampenerQuantity] as numeric(19,4)) [DampenerQuantity],
	cast([OrderMultiple] as numeric(19,4)) [OrderMultiple],
	cast([Single-LevelCap_OvhdCost] as numeric(19,4)) [Single-LevelCap_OvhdCost],
	cast([Single-LevelCapacityCost] as numeric(19,4)) [Single-LevelCapacityCost],
	cast([LastDirectCost] as numeric(19,4)) [LastDirectCost],
	cast([Profit_] as numeric(19,4)) [Profit_],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([NextCountingEndDate] as datetime) [NextCountingEndDate],
	cast([AllowOnlineAdjustment] as int) [AllowOnlineAdjustment],
	cast([StatisticsGroup] as int) [StatisticsGroup],
	cast([Blocked] as int) [Blocked],
	cast([FlushingMethod] as int) [FlushingMethod],
	cast([InventoryValueZero] as int) [InventoryValueZero],
	cast([OrderTrackingPolicy] as int) [OrderTrackingPolicy],
	cast([CreatedFromNonstockItem] as int) [CreatedFromNonstockItem],
	cast([InventoryPostingGroup] as nvarchar(4000)) [InventoryPostingGroup],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([Durability] as nvarchar(4000)) [Durability],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([Rolled-upMfg_OvhdCost] as numeric(19,4)) [Rolled-upMfg_OvhdCost],
	cast([Scrap_] as numeric(19,4)) [Scrap_],
	cast([LastCountingPeriodUpdate] as datetime) [LastCountingPeriodUpdate],
	cast([LastTimeModified] as datetime) [LastTimeModified],
	cast([IncludeInventory] as int) [IncludeInventory],
	cast([PurchasingBlocked] as int) [PurchasingBlocked],
	cast([Type] as int) [Type] 
From stg.[BC_BJAuctionCompany_Item_0972_FinalView]