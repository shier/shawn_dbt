{{ config(materialized='view',schema='stg')}}
Select
	[systemId] as [$systemId] ,
	[timestamp] ,
	[Quantity] ,
	[DirectUnitCost] ,
	[UnitCostLCY] ,
	[VAT] as [VAT_] ,
	[LineDiscount] as [LineDiscount_] ,
	[JobTotalPriceLCY] ,
	[JobLineAmountLCY] ,
	[JobLineDisc_AmountLCY] ,
	[JobCurrencyFactor] ,
	[Pmt_DiscountAmount] ,
	[JobUnitPrice] ,
	[JobTotalPrice] ,
	[JobLineAmount] ,
	[JobLineDiscountAmount] ,
	[JobLineDiscount] as [JobLineDiscount_] ,
	[JobUnitPriceLCY] ,
	[LineAmount] ,
	[VATDifference] ,
	[Qty_perUnitofMeasure] ,
	[QuantityBase] ,
	[SalvageValue] ,
	[OverheadRate] ,
	[UnitsperParcel] ,
	[UnitVolume] ,
	[IndirectCost] as [IndirectCost_] ,
	[Inv_DiscountAmount] ,
	[VATBaseAmount] ,
	[UnitCost] ,
	[LineDiscountAmount] ,
	[Amount] ,
	[AmountIncludingVAT] ,
	[UnitPriceLCY] ,
	[GrossWeight] ,
	[NetWeight] ,
	[LineNo_S] as [LineNo_] ,
	[Type] ,
	[AllowInvoiceDisc] as [AllowInvoiceDisc_] ,
	[Appl__toItemEntry] as [Appl_-toItemEntry] ,
	[VATCalculationType] ,
	[JobLineType] ,
	[OrderLineNo] as [OrderLineNo_] ,
	[ItemReferenceType] ,
	[PriceCalculationMethod] ,
	[IRS1099Liable] ,
	[Prod_OrderLineNo] as [Prod_OrderLineNo_] ,
	[RoutingReferenceNo] as [RoutingReferenceNo_] ,
	[ReceiptLineNo] as [ReceiptLineNo_] ,
	[PrepaymentLine] ,
	[DimensionSetID] ,
	[FAPostingType] ,
	[Depr_untilFAPostingDate] ,
	[Depr_AcquisitionCost] ,
	[UseDuplicationList] ,
	[Cross_ReferenceType] as [Cross-ReferenceType] ,
	[Nonstock] ,
	[AttachedtoLineNo] as [AttachedtoLineNo_] ,
	[TaxLiable] ,
	[UseTax] ,
	[BlanketOrderLineNo] as [BlanketOrderLineNo_] ,
	[System_CreatedEntry] as [System-CreatedEntry] ,
	[ICPartnerRef_Type] ,
	[ExpectedReceiptDate] ,
	[FAPostingDate] ,
	[PostingDate] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[JobCurrencyCode] ,
	[ProvincialTaxAreaCode] ,
	[DeferralCode] ,
	[OrderNo] as [OrderNo_] ,
	[ICCross_ReferenceNo] as [ICCross-ReferenceNo_] ,
	[OperationNo] as [OperationNo_] ,
	[WorkCenterNo] as [WorkCenterNo_] ,
	[ReceiptNo] as [ReceiptNo_] ,
	[Pay_toVendorNo] as [Pay-toVendorNo_] ,
	[ICPartnerCode] ,
	[JobTaskNo] as [JobTaskNo_] ,
	[Cross_ReferenceTypeNo] as [Cross-ReferenceTypeNo_] ,
	[ItemCategoryCode] ,
	[PurchasingCode] ,
	[ProductGroupCode] ,
	[ReturnReasonCode] ,
	[RoutingNo] as [RoutingNo_] ,
	[InsuranceNo] as [InsuranceNo_] ,
	[BudgetedFANo] as [BudgetedFANo_] ,
	[DuplicateinDepreciationBook] ,
	[ResponsibilityCenter] ,
	[Cross_ReferenceNo] as [Cross-ReferenceNo_] ,
	[UnitofMeasureCrossRef] as [UnitofMeasureCrossRef_] ,
	[Prod_OrderNo] as [Prod_OrderNo_] ,
	[VariantCode] ,
	[BinCode] ,
	[UnitofMeasureCode] ,
	[DepreciationBookCode] ,
	[MaintenanceCode] ,
	[TaxGroupCode] ,
	[VATBus_PostingGroup] ,
	[VATProd_PostingGroup] ,
	[BlanketOrderNo] as [BlanketOrderNo_] ,
	[VATIdentifier] ,
	[ICPartnerReference] ,
	[TransactionType] ,
	[TransportMethod] ,
	[EntryPoint] ,
	[Area] ,
	[TransactionSpecification] ,
	[TaxAreaCode] ,
	[ShortcutDimension1Code] ,
	[ShortcutDimension2Code] ,
	[JobNo] as [JobNo_] ,
	[VendorItemNo] as [VendorItemNo_] ,
	[Gen_Bus_PostingGroup] ,
	[Gen_Prod_PostingGroup] ,
	[No] as [No_] ,
	[LocationCode] ,
	[PostingGroup] ,
	[Description] ,
	[Description2] ,
	[UnitofMeasure] ,
	[DocumentNo] as [DocumentNo_] ,
	[Buy_fromVendorNo] as [Buy-fromVendorNo_] ,
	[ItemReferenceNo] as [ItemReferenceNo_] ,
	[ItemReferenceUnitofMeasure] ,
	[ItemReferenceTypeNo] as [ItemReferenceTypeNo_] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] 
From stg.[BC_BJAuctionCompany_PurchInvLine_0972_Incr] 
Where [dbt_valid_to] is null