{{ config(materialized='view',schema='stg')}}
Select
	[systemId] as [$systemId] ,
	[DocumentNo] as [DocumentNo_] ,
	[Sell_toCustomerNo] as [Sell-toCustomerNo_] ,
	[No] as [No_] ,
	[LocationCode] ,
	[ItemReferenceNo] as [ItemReferenceNo_] ,
	[ItemReferenceUnitofMeasure] ,
	[ItemReferenceTypeNo] as [ItemReferenceTypeNo_] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] ,
	[PackageTrackingNo] as [PackageTrackingNo_] ,
	[TaxCategory] ,
	[DeferralCode] ,
	[OrderNo] as [OrderNo_] ,
	[ICItemReferenceNo] as [ICItemReferenceNo_] ,
	[ItemCategoryCode] ,
	[PurchasingCode] ,
	[ProductGroupCode] ,
	[ReturnReceiptNo] as [ReturnReceiptNo_] ,
	[ReturnReasonCode] ,
	[CustomerDisc_Group] ,
	[DepreciationBookCode] ,
	[DuplicateinDepreciationBook] ,
	[ResponsibilityCenter] ,
	[Cross_ReferenceNo] as [Cross-ReferenceNo_] ,
	[UnitofMeasureCrossRef] as [UnitofMeasureCrossRef_] ,
	[Cross_ReferenceTypeNo] as [Cross-ReferenceTypeNo_] ,
	[ICPartnerReference] ,
	[ICPartnerCode] ,
	[JobTaskNo] as [JobTaskNo_] ,
	[VariantCode] ,
	[BinCode] ,
	[UnitofMeasureCode] ,
	[TaxGroupCode] ,
	[VATClauseCode] ,
	[VATBus_PostingGroup] ,
	[VATProd_PostingGroup] ,
	[BlanketOrderNo] as [BlanketOrderNo_] ,
	[VATIdentifier] ,
	[TransactionType] ,
	[TransportMethod] ,
	[ExitPoint] ,
	[Area] ,
	[TransactionSpecification] ,
	[TaxAreaCode] ,
	[CustomerPriceGroup] ,
	[JobNo] as [JobNo_] ,
	[WorkTypeCode] ,
	[Bill_toCustomerNo] as [Bill-toCustomerNo_] ,
	[Gen_Bus_PostingGroup] ,
	[Gen_Prod_PostingGroup] ,
	[PostingGroup] ,
	[Description] ,
	[Description2] ,
	[UnitofMeasure] ,
	[ShortcutDimension1Code] ,
	[ShortcutDimension2Code] ,
	[LineNo_S] as [LineNo_] ,
	[Type] ,
	[LineDiscountCalculation] ,
	[OrderLineNo] as [OrderLineNo_] ,
	[ItemReferenceType] ,
	[PriceCalculationMethod] ,
	[UseDuplicationList] ,
	[Cross_ReferenceType] as [Cross-ReferenceType] ,
	[Nonstock] ,
	[Appl__fromItemEntry] as [Appl_-fromItemEntry] ,
	[ReturnReceiptLineNo] as [ReturnReceiptLineNo_] ,
	[AllowLineDisc] as [AllowLineDisc_] ,
	[System_CreatedEntry] as [System-CreatedEntry] ,
	[ICPartnerRef_Type] ,
	[PrepaymentLine] ,
	[DimensionSetID] ,
	[JobContractEntryNo] as [JobContractEntryNo_] ,
	[Depr_untilFAPostingDate] ,
	[AllowInvoiceDisc] as [AllowInvoiceDisc_] ,
	[Appl__toItemEntry] as [Appl_-toItemEntry] ,
	[VATCalculationType] ,
	[AttachedtoLineNo] as [AttachedtoLineNo_] ,
	[TaxLiable] ,
	[BlanketOrderLineNo] as [BlanketOrderLineNo_] ,
	[ShipmentDate] ,
	[PostingDate] ,
	[FAPostingDate] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[timestamp] ,
	[Quantity] ,
	[UnitPrice] ,
	[UnitCostLCY] ,
	[VAT] as [VAT_] ,
	[UnitsperParcel] ,
	[UnitVolume] ,
	[Inv_DiscountAmount] ,
	[VATBaseAmount] ,
	[UnitCost] ,
	[LineAmount] ,
	[LineDiscount] as [LineDiscount_] ,
	[LineDiscountAmount] ,
	[Amount] ,
	[AmountIncludingVAT] ,
	[GrossWeight] ,
	[NetWeight] ,
	[VATDifference] ,
	[Qty_perUnitofMeasure] ,
	[QuantityBase] ,
	[Pmt_DiscountAmount] 
From stg.[BC_BJAuctionCompany_SalesCrMemoLine_0972_Incr] 
Where [dbt_valid_to] is null