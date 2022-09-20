
      EXEC('
           BEGIN TRANSACTION
           update "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Item_0972_Incr"
          set dbt_valid_to = TMP.dbt_valid_to
          from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_Item_0972_Incr__dbt_tmp" TMP
          where "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Item_0972_Incr".dbt_scd_id = TMP.dbt_scd_id
            and TMP.dbt_change_type in (''update'', ''delete'')
            and "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Item_0972_Incr".dbt_valid_to is null;

            insert into "BJAC_DW_PROD"."stg"."BC_BJAuctionCompany_Item_0972_Incr" (
                  "No", "PriceUnitConversion", "Type", "AllowInvoiceDisc", "Critical", "SalesBlocked", "PurchasingBlocked", "ReorderingPolicy", "IncludeInventory", "ManufacturingPolicy", "CreatedFromNonstockItem", "UseCross_Docking", "OrderTrackingPolicy", "AssemblyPolicy", "Low_LevelCode", "InventoryValueZero", "DiscreteOrderQuantity", "FlushingMethod", "ReplenishmentSystem", "Blocked", "PriceIncludesVAT", "AutomaticExt_Texts", "Reserve", "StockoutWarning", "PreventNegativeInventory", "StatisticsGroup", "CommissionGroup", "Price_ProfitCalculation", "CostingMethod", "CostisAdjusted", "AllowOnlineAdjustment", "LastDateTimeModified", "LastDateModified", "LastTimeModified", "LastUnitCostCalc_Date", "LastCountingPeriodUpdate", "NextCountingStartDate", "NextCountingEndDate", "systemCreatedAt", "systemModifiedAt", "UnitPrice", "Profit", "UnitCost", "StandardCost", "LastDirectCost", "OverflowLevel", "Single_LevelMaterialCost", "Single_LevelCapacityCost", "Single_LevelSubcontrd_Cost", "Single_LevelCap_OvhdCost", "Single_LevelMfg_OvhdCost", "MinimumOrderQuantity", "MaximumOrderQuantity", "SafetyStockQuantity", "OrderMultiple", "RoundingPrecision", "DampenerQuantity", "BudgetedAmount", "BudgetProfit", "LotSize", "Rolled_upMaterialCost", "Rolled_upCapacityCost", "Scrap", "GrossWeight", "NetWeight", "UnitsperParcel", "UnitVolume", "DutyUnitConversion", "BudgetQuantity", "IndirectCost", "ReorderPoint", "MaximumInventory", "ReorderQuantity", "UnitListPrice", "DutyDue", "OverheadRate", "Rolled_upSubcontractedCost", "Rolled_upMfg_OvhdCost", "Rolled_upCap_OverheadCost", "timestamp", "SATItemClassification", "RoutingNo", "ProductionBOMNo", "CommonItemNo", "ItemCategoryId", "systemId", "Put_awayUnitofMeasureCode", "PhysInvtCountingPeriodCode", "Id", "UnitofMeasureId", "TaxGroupId", "DutyClass", "ItemTrackingCode", "LotNos", "ExpirationCalculation", "WarehouseClassCode", "SpecialEquipmentCode", "Put_awayTemplateCode", "LotAccumulationPeriod", "DampenerPeriod", "ManufacturerCode", "ItemCategoryCode", "ProductGroupCode", "ServiceItemGroup", "SerialNos", "SafetyLeadTime", "SalesUnitofMeasure", "Purch_UnitofMeasure", "TimeBucket", "ReschedulingPeriod", "VATProd_PostingGroup", "GlobalDimension1Code", "GlobalDimension2Code", "ApplicationWksh_UserID", "GTIN", "DefaultDeferralTemplateCode", "VATBus_PostingGr_Price", "Gen_Prod_PostingGroup", "Picture", "Country_RegionofOriginCode", "No_Series", "TaxGroupCode", "DutyCode", "Durability", "FreightType", "TariffNo", "Country_RegionPurchasedCode", "BlockReason", "ShelfNo", "ItemDisc_Group", "VendorNo", "VendorItemNo", "LeadTimeCalculation", "AlternativeItemNo", "No_2", "Description", "SearchDescription", "Description2", "BaseUnitofMeasure", "InventoryPostingGroup", "PurchasingCode", "Over_ReceiptCode", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
                  )
            select "No", "PriceUnitConversion", "Type", "AllowInvoiceDisc", "Critical", "SalesBlocked", "PurchasingBlocked", "ReorderingPolicy", "IncludeInventory", "ManufacturingPolicy", "CreatedFromNonstockItem", "UseCross_Docking", "OrderTrackingPolicy", "AssemblyPolicy", "Low_LevelCode", "InventoryValueZero", "DiscreteOrderQuantity", "FlushingMethod", "ReplenishmentSystem", "Blocked", "PriceIncludesVAT", "AutomaticExt_Texts", "Reserve", "StockoutWarning", "PreventNegativeInventory", "StatisticsGroup", "CommissionGroup", "Price_ProfitCalculation", "CostingMethod", "CostisAdjusted", "AllowOnlineAdjustment", "LastDateTimeModified", "LastDateModified", "LastTimeModified", "LastUnitCostCalc_Date", "LastCountingPeriodUpdate", "NextCountingStartDate", "NextCountingEndDate", "systemCreatedAt", "systemModifiedAt", "UnitPrice", "Profit", "UnitCost", "StandardCost", "LastDirectCost", "OverflowLevel", "Single_LevelMaterialCost", "Single_LevelCapacityCost", "Single_LevelSubcontrd_Cost", "Single_LevelCap_OvhdCost", "Single_LevelMfg_OvhdCost", "MinimumOrderQuantity", "MaximumOrderQuantity", "SafetyStockQuantity", "OrderMultiple", "RoundingPrecision", "DampenerQuantity", "BudgetedAmount", "BudgetProfit", "LotSize", "Rolled_upMaterialCost", "Rolled_upCapacityCost", "Scrap", "GrossWeight", "NetWeight", "UnitsperParcel", "UnitVolume", "DutyUnitConversion", "BudgetQuantity", "IndirectCost", "ReorderPoint", "MaximumInventory", "ReorderQuantity", "UnitListPrice", "DutyDue", "OverheadRate", "Rolled_upSubcontractedCost", "Rolled_upMfg_OvhdCost", "Rolled_upCap_OverheadCost", "timestamp", "SATItemClassification", "RoutingNo", "ProductionBOMNo", "CommonItemNo", "ItemCategoryId", "systemId", "Put_awayUnitofMeasureCode", "PhysInvtCountingPeriodCode", "Id", "UnitofMeasureId", "TaxGroupId", "DutyClass", "ItemTrackingCode", "LotNos", "ExpirationCalculation", "WarehouseClassCode", "SpecialEquipmentCode", "Put_awayTemplateCode", "LotAccumulationPeriod", "DampenerPeriod", "ManufacturerCode", "ItemCategoryCode", "ProductGroupCode", "ServiceItemGroup", "SerialNos", "SafetyLeadTime", "SalesUnitofMeasure", "Purch_UnitofMeasure", "TimeBucket", "ReschedulingPeriod", "VATProd_PostingGroup", "GlobalDimension1Code", "GlobalDimension2Code", "ApplicationWksh_UserID", "GTIN", "DefaultDeferralTemplateCode", "VATBus_PostingGr_Price", "Gen_Prod_PostingGroup", "Picture", "Country_RegionofOriginCode", "No_Series", "TaxGroupCode", "DutyCode", "Durability", "FreightType", "TariffNo", "Country_RegionPurchasedCode", "BlockReason", "ShelfNo", "ItemDisc_Group", "VendorNo", "VendorItemNo", "LeadTimeCalculation", "AlternativeItemNo", "No_2", "Description", "SearchDescription", "Description2", "BaseUnitofMeasure", "InventoryPostingGroup", "PurchasingCode", "Over_ReceiptCode", "systemCreatedBy", "systemModifiedBy", "dbt_updated_at", "dbt_valid_from", "dbt_valid_to", "dbt_scd_id"
            from "BJAC_DW_PROD"."stg"."#BC_BJAuctionCompany_Item_0972_Incr__dbt_tmp"
            where dbt_change_type = ''insert'' ;
           COMMIT TRANSACTION;
           ');


  