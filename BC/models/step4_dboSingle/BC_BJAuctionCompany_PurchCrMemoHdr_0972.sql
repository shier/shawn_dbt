{{ config(materialized='table',schema='dbo')}}
Select
	cast([DimensionSetID] as int) [DimensionSetID],
	cast([Bal_AccountType] as int) [Bal_AccountType],
	cast([Applies-toDoc_Type] as int) [Applies-toDoc_Type],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([Pmt_DiscountDate] as datetime) [Pmt_DiscountDate],
	cast([ExpectedReceiptDate] as datetime) [ExpectedReceiptDate],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([CurrencyFactor] as numeric(19,4)) [CurrencyFactor],
	cast([Pay-toAddress2] as nvarchar(4000)) [Pay-toAddress2],
	cast([Ship-toAddress] as nvarchar(4000)) [Ship-toAddress],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([PostingDescription] as nvarchar(4000)) [PostingDescription],
	cast([Ship-toCity] as nvarchar(4000)) [Ship-toCity],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([ShortcutDimension2Code] as nvarchar(4000)) [ShortcutDimension2Code],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([Applies-toDoc_No_] as nvarchar(4000)) [Applies-toDoc_No_],
	cast([PurchaserCode] as nvarchar(4000)) [PurchaserCode],
	cast([TransportMethod] as nvarchar(4000)) [TransportMethod],
	cast([Sell-toCustomerNo_] as nvarchar(4000)) [Sell-toCustomerNo_],
	cast([Buy-fromCity] as nvarchar(4000)) [Buy-fromCity],
	cast([Buy-fromVendorName2] as nvarchar(4000)) [Buy-fromVendorName2],
	cast([VATCountry_RegionCode] as nvarchar(4000)) [VATCountry_RegionCode],
	cast([Buy-fromPostCode] as nvarchar(4000)) [Buy-fromPostCode],
	cast([Pay-toCounty] as nvarchar(4000)) [Pay-toCounty],
	cast([OrderAddressCode] as nvarchar(4000)) [OrderAddressCode],
	cast([Ship-toCountry_RegionCode] as nvarchar(4000)) [Ship-toCountry_RegionCode],
	cast([Ship-toPostCode] as nvarchar(4000)) [Ship-toPostCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([Area] as nvarchar(4000)) [Area],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([SourceCode] as nvarchar(4000)) [SourceCode],
	cast([ReturnOrderNo_Series] as nvarchar(4000)) [ReturnOrderNo_Series],
	cast([Pay-toContactNo_] as nvarchar(4000)) [Pay-toContactNo_],
	cast([CampaignNo_] as nvarchar(4000)) [CampaignNo_],
	cast([IRS1099Code] as nvarchar(4000)) [IRS1099Code],
	cast([ProvincialTaxAreaCode] as nvarchar(4000)) [ProvincialTaxAreaCode],
	cast([Ship-toUPSZone] as nvarchar(4000)) [Ship-toUPSZone],
	cast([No_] as nvarchar(4000)) [No_],
	cast([TaxLiable] as int) [TaxLiable],
	cast([DocumentDate] as datetime) [DocumentDate],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([Pay-toName2] as nvarchar(4000)) [Pay-toName2],
	cast([Pay-toVendorNo_] as nvarchar(4000)) [Pay-toVendorNo_],
	cast([Ship-toName2] as nvarchar(4000)) [Ship-toName2],
	cast([Pay-toContact] as nvarchar(4000)) [Pay-toContact],
	cast([Bal_AccountNo_] as nvarchar(4000)) [Bal_AccountNo_],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Buy-fromAddress] as nvarchar(4000)) [Buy-fromAddress],
	cast([Buy-fromContact] as nvarchar(4000)) [Buy-fromContact],
	cast([Pre-AssignedNo_] as nvarchar(4000)) [Pre-AssignedNo_],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([Buy-fromVendorNo_] as nvarchar(4000)) [Buy-fromVendorNo_],
	cast([VendorLedgerEntryNo_] as int) [VendorLedgerEntryNo_],
	cast([PrepaymentCreditMemo] as int) [PrepaymentCreditMemo],
	cast([Correction] as int) [Correction],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([No_Printed] as int) [No_Printed],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([DueDate] as datetime) [DueDate],
	cast([PostingDate] as datetime) [PostingDate],
	cast([VATBaseDiscount_] as numeric(19,4)) [VATBaseDiscount_],
	cast([PaymentDiscount_] as numeric(19,4)) [PaymentDiscount_],
	cast([Pay-toCity] as nvarchar(4000)) [Pay-toCity],
	cast([Pay-toAddress] as nvarchar(4000)) [Pay-toAddress],
	cast([Pay-toName] as nvarchar(4000)) [Pay-toName],
	cast([Ship-toName] as nvarchar(4000)) [Ship-toName],
	cast([YourReference] as nvarchar(4000)) [YourReference],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([Ship-toContact] as nvarchar(4000)) [Ship-toContact],
	cast([Ship-toAddress2] as nvarchar(4000)) [Ship-toAddress2],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([VendorPostingGroup] as nvarchar(4000)) [VendorPostingGroup],
	cast([ShortcutDimension1Code] as nvarchar(4000)) [ShortcutDimension1Code],
	cast([VendorCr_MemoNo_] as nvarchar(4000)) [VendorCr_MemoNo_],
	cast([OnHold] as nvarchar(4000)) [OnHold],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([TransactionType] as nvarchar(4000)) [TransactionType],
	cast([ReasonCode] as nvarchar(4000)) [ReasonCode],
	cast([Buy-fromVendorName] as nvarchar(4000)) [Buy-fromVendorName],
	cast([Buy-fromCounty] as nvarchar(4000)) [Buy-fromCounty],
	cast([Pay-toCountry_RegionCode] as nvarchar(4000)) [Pay-toCountry_RegionCode],
	cast([Pay-toPostCode] as nvarchar(4000)) [Pay-toPostCode],
	cast([EntryPoint] as nvarchar(4000)) [EntryPoint],
	cast([Ship-toCounty] as nvarchar(4000)) [Ship-toCounty],
	cast([Buy-fromCountry_RegionCode] as nvarchar(4000)) [Buy-fromCountry_RegionCode],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([Pre-AssignedNo_Series] as nvarchar(4000)) [Pre-AssignedNo_Series],
	cast([TransactionSpecification] as nvarchar(4000)) [TransactionSpecification],
	cast([PrepaymentOrderNo_] as nvarchar(4000)) [PrepaymentOrderNo_],
	cast([Prepmt_Cr_MemoNo_Series] as nvarchar(4000)) [Prepmt_Cr_MemoNo_Series],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([UserID] as nvarchar(4000)) [UserID],
	cast([ReturnOrderNo_] as nvarchar(4000)) [ReturnOrderNo_],
	cast([Buy-fromContactNo_] as nvarchar(4000)) [Buy-fromContactNo_],
	cast([FiscalInvoiceNumberPAC] as nvarchar(4000)) [FiscalInvoiceNumberPAC],
	cast([STETransactionID] as nvarchar(4000)) [STETransactionID],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([Buy-fromAddress2] as nvarchar(4000)) [Buy-fromAddress2],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([$systemId] as nvarchar(4000)) [$systemId] 
From stg.[BC_BJAuctionCompany_PurchCrMemoHdr_0972_FinalView]