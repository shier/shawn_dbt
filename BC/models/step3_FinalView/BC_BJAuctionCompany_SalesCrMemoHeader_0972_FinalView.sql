{{ config(materialized='view',schema='stg')}}
Select
	[No] as [No_] ,
	[ShippingAgentServiceCode] ,
	[DraftCr_MemoSystemId] ,
	[systemCreatedBy] as [$systemCreatedBy] ,
	[systemModifiedBy] as [$systemModifiedBy] ,
	[Sell_toE_Mail] as [Sell-toE-Mail] ,
	[CFDIPurpose] ,
	[CFDIRelation] ,
	[systemId] as [$systemId] ,
	[ShippingAgentCode] ,
	[PackageTrackingNo] as [PackageTrackingNo_] ,
	[ErrorCode] ,
	[ErrorDescription] ,
	[PACWebServiceName] ,
	[FiscalInvoiceNumberPAC] ,
	[Date_TimeFirstReq_Sent] ,
	[Sell_toPhoneNo] as [Sell-toPhoneNo_] ,
	[TaxExemptionNo] as [TaxExemptionNo_] ,
	[STETransactionID] ,
	[CertificateSerialNo] as [CertificateSerialNo_] ,
	[Date_TimeStamped] ,
	[Date_TimeSent] ,
	[Date_TimeCanceled] ,
	[OpportunityNo] as [OpportunityNo_] ,
	[ResponsibilityCenter] ,
	[ReturnOrderNo] as [ReturnOrderNo_] ,
	[ReturnOrderNo_Series] ,
	[Id] ,
	[Ship_toUPSZone] as [Ship-toUPSZone] ,
	[PrepaymentOrderNo] as [PrepaymentOrderNo_] ,
	[DocumentExchangeIdentifier] ,
	[Doc_Exch_OriginalIdentifier] ,
	[CampaignNo] as [CampaignNo_] ,
	[Sell_toContactNo] as [Sell-toContactNo_] ,
	[Bill_toContactNo] as [Bill-toContactNo_] ,
	[Pre_AssignedNo] as [Pre-AssignedNo_] ,
	[UserID] ,
	[SourceCode] ,
	[TaxAreaCode] ,
	[VATBus_PostingGroup] ,
	[Prepmt_Cr_MemoNo_Series] ,
	[ExternalDocumentNo] as [ExternalDocumentNo_] ,
	[Area] ,
	[TransactionSpecification] ,
	[PaymentMethodCode] ,
	[Pre_AssignedNo_Series] as [Pre-AssignedNo_Series] ,
	[No_Series] ,
	[Sell_toCounty] as [Sell-toCounty] ,
	[Sell_toCountry_RegionCode] as [Sell-toCountry_RegionCode] ,
	[Ship_toPostCode] as [Ship-toPostCode] ,
	[Ship_toCounty] as [Ship-toCounty] ,
	[Ship_toCountry_RegionCode] as [Ship-toCountry_RegionCode] ,
	[ExitPoint] ,
	[Sell_toCity] as [Sell-toCity] ,
	[Sell_toContact] as [Sell-toContact] ,
	[Bill_toPostCode] as [Bill-toPostCode] ,
	[Bill_toCounty] as [Bill-toCounty] ,
	[Bill_toCountry_RegionCode] as [Bill-toCountry_RegionCode] ,
	[Sell_toPostCode] as [Sell-toPostCode] ,
	[TransportMethod] ,
	[VATCountry_RegionCode] ,
	[Sell_toCustomerName] as [Sell-toCustomerName] ,
	[Sell_toCustomerName2] as [Sell-toCustomerName2] ,
	[Sell_toAddress] as [Sell-toAddress] ,
	[Sell_toAddress2] as [Sell-toAddress2] ,
	[Applies_toDoc_No] as [Applies-toDoc_No_] ,
	[Bal_AccountNo] as [Bal_AccountNo_] ,
	[VATRegistrationNo] as [VATRegistrationNo_] ,
	[ReasonCode] ,
	[Gen_Bus_PostingGroup] ,
	[TransactionType] ,
	[CustomerPriceGroup] ,
	[InvoiceDisc_Code] ,
	[CustomerDisc_Group] ,
	[LanguageCode] ,
	[SalespersonCode] ,
	[OnHold] ,
	[ShipmentMethodCode] ,
	[LocationCode] ,
	[ShortcutDimension1Code] ,
	[ShortcutDimension2Code] ,
	[CustomerPostingGroup] ,
	[CurrencyCode] ,
	[Ship_toAddress] as [Ship-toAddress] ,
	[Ship_toAddress2] as [Ship-toAddress2] ,
	[Ship_toCity] as [Ship-toCity] ,
	[Ship_toContact] as [Ship-toContact] ,
	[PostingDescription] ,
	[PaymentTermsCode] ,
	[Bill_toCity] as [Bill-toCity] ,
	[Bill_toContact] as [Bill-toContact] ,
	[YourReference] ,
	[Ship_toCode] as [Ship-toCode] ,
	[Ship_toName] as [Ship-toName] ,
	[Ship_toName2] as [Ship-toName2] ,
	[Sell_toCustomerNo] as [Sell-toCustomerNo_] ,
	[Bill_toCustomerNo] as [Bill-toCustomerNo_] ,
	[Bill_toName] as [Bill-toName] ,
	[Bill_toName2] as [Bill-toName2] ,
	[Bill_toAddress] as [Bill-toAddress] ,
	[Bill_toAddress2] as [Bill-toAddress2] ,
	[PostingDate] ,
	[ShipmentDate] ,
	[DueDate] ,
	[Pmt_DiscountDate] ,
	[DocumentDate] ,
	[systemCreatedAt] as [$systemCreatedAt] ,
	[systemModifiedAt] as [$systemModifiedAt] ,
	[PricesIncludingVAT] ,
	[No_Printed] ,
	[DimensionSetID] ,
	[DocumentExchangeStatus] ,
	[Cust_LedgerEntryNo] as [Cust_LedgerEntryNo_] ,
	[AllowLineDisc] as [AllowLineDisc_] ,
	[GetReturnReceiptUsed] ,
	[ElectronicDocumentSent] ,
	[Applies_toDoc_Type] as [Applies-toDoc_Type] ,
	[EU3_PartyTrade] as [EU3-PartyTrade] ,
	[Bal_AccountType] ,
	[Correction] ,
	[TaxLiable] ,
	[PrepaymentCreditMemo] ,
	[No_ofE_DocumentsSent] as [No_ofE-DocumentsSent] ,
	[ElectronicDocumentStatus] ,
	[PriceCalculationMethod] ,
	[PaymentDiscount] as [PaymentDiscount_] ,
	[CurrencyFactor] ,
	[VATBaseDiscount] as [VATBaseDiscount_] ,
	[timestamp] ,
	[OriginalDocumentXML] ,
	[OriginalString] ,
	[DigitalStampSAT] ,
	[SignedDocumentXML] ,
	[DigitalStampPAC] ,
	[QRCode] ,
	[WorkDescription] 
From stg.[BC_BJAuctionCompany_SalesCrMemoHeader_0972_Incr] 
Where [dbt_valid_to] is null