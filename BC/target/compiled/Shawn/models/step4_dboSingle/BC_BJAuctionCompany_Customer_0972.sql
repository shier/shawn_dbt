
Select
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([PricesIncludingVAT] as int) [PricesIncludingVAT],
	cast([Priority] as int) [Priority],
	cast([LastStatementNo_] as int) [LastStatementNo_],
	cast([PartnerType] as int) [PartnerType],
	cast([Reserve] as int) [Reserve],
	cast([TaxIdentificationType] as int) [TaxIdentificationType],
	cast([CheckDateFormat] as int) [CheckDateFormat],
	cast([BankCommunication] as int) [BankCommunication],
	cast([PriceCalculationMethod] as int) [PriceCalculationMethod],
	cast([DisableSearchbyName] as int) [DisableSearchbyName],
	cast([ValidateEUVatReg_No_] as int) [ValidateEUVatReg_No_],
	cast([Blocked] as int) [Blocked],
	cast([BudgetedAmount] as numeric(19,4)) [BudgetedAmount],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([Address] as nvarchar(4000)) [Address],
	cast([SearchName] as nvarchar(4000)) [SearchName],
	cast([No_] as nvarchar(4000)) [No_],
	cast([OurAccountNo_] as nvarchar(4000)) [OurAccountNo_],
	cast([Contact] as nvarchar(4000)) [Contact],
	cast([CustomerPriceGroup] as nvarchar(4000)) [CustomerPriceGroup],
	cast([CustomerPostingGroup] as nvarchar(4000)) [CustomerPostingGroup],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([SalespersonCode] as nvarchar(4000)) [SalespersonCode],
	cast([LanguageCode] as nvarchar(4000)) [LanguageCode],
	cast([Country_RegionCode] as nvarchar(4000)) [Country_RegionCode],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([TelexAnswerBack] as nvarchar(4000)) [TelexAnswerBack],
	cast([LocationCode] as nvarchar(4000)) [LocationCode],
	cast([No_Series] as nvarchar(4000)) [No_Series],
	cast([CashFlowPaymentTermsCode] as nvarchar(4000)) [CashFlowPaymentTermsCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([UPSZone] as nvarchar(4000)) [UPSZone],
	cast([ServiceZoneCode] as nvarchar(4000)) [ServiceZoneCode],
	cast([GLN] as nvarchar(4000)) [GLN],
	cast([ResponsibilityCenter] as nvarchar(4000)) [ResponsibilityCenter],
	cast([RFCNo_] as nvarchar(4000)) [RFCNo_],
	cast([PaymentMethodId] as nvarchar(4000)) [PaymentMethodId],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([EORINumber] as nvarchar(4000)) [EORINumber],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([ShippingAdvice] as int) [ShippingAdvice],
	cast([CombineShipments] as int) [CombineShipments],
	cast([AllowLineDisc_] as int) [AllowLineDisc_],
	cast([Prepayment_] as numeric(19,4)) [Prepayment_],
	cast([PhoneNo_] as nvarchar(4000)) [PhoneNo_],
	cast([ShipmentMethodCode] as nvarchar(4000)) [ShipmentMethodCode],
	cast([PaymentTermsCode] as nvarchar(4000)) [PaymentTermsCode],
	cast([CollectionMethod] as nvarchar(4000)) [CollectionMethod],
	cast([PlaceofExport] as nvarchar(4000)) [PlaceofExport],
	cast([HomePage] as nvarchar(4000)) [HomePage],
	cast([County] as nvarchar(4000)) [County],
	cast([PrimaryContactNo_] as nvarchar(4000)) [PrimaryContactNo_],
	cast([ICPartnerCode] as nvarchar(4000)) [ICPartnerCode],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode],
	cast([ShippingTime] as nvarchar(4000)) [ShippingTime],
	cast([StateInscription] as nvarchar(4000)) [StateInscription],
	cast([PaymentTermsId] as nvarchar(4000)) [PaymentTermsId],
	cast([Id] as nvarchar(4000)) [Id],
	cast([Ship-toCode] as nvarchar(4000)) [Ship-toCode],
	cast([CFDIPurpose] as nvarchar(4000)) [CFDIPurpose],
	cast([ContactID] as nvarchar(4000)) [ContactID],
	cast([MobilePhoneNo_] as nvarchar(4000)) [MobilePhoneNo_],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([LastModifiedDateTime] as datetime) [LastModifiedDateTime],
	cast([LastDateModified] as datetime) [LastDateModified],
	cast([PrintStatements] as int) [PrintStatements],
	cast([InvoiceCopies] as int) [InvoiceCopies],
	cast([BlockPaymentTolerance] as int) [BlockPaymentTolerance],
	cast([TaxLiable] as int) [TaxLiable],
	cast([CheckDateSeparator] as int) [CheckDateSeparator],
	cast([CopySell-toAddr_toQteFrom] as int) [CopySell-toAddr_toQteFrom],
	cast([UseGLNinElectronicDocument] as int) [UseGLNinElectronicDocument],
	cast([PrivacyBlocked] as int) [PrivacyBlocked],
	cast([ContactType] as int) [ContactType],
	cast([StatisticsGroup] as int) [StatisticsGroup],
	cast([CreditLimitLCY] as numeric(19,4)) [CreditLimitLCY],
	cast([Picture] as varbinary(8000)) [Picture],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([Name2] as nvarchar(4000)) [Name2],
	cast([Name] as nvarchar(4000)) [Name],
	cast([TelexNo_] as nvarchar(4000)) [TelexNo_],
	cast([City] as nvarchar(4000)) [City],
	cast([ChainName] as nvarchar(4000)) [ChainName],
	cast([ShippingAgentCode] as nvarchar(4000)) [ShippingAgentCode],
	cast([Fin_ChargeTermsCode] as nvarchar(4000)) [Fin_ChargeTermsCode],
	cast([Bill-toCustomerNo_] as nvarchar(4000)) [Bill-toCustomerNo_],
	cast([CustomerDisc_Group] as nvarchar(4000)) [CustomerDisc_Group],
	cast([InvoiceDisc_Code] as nvarchar(4000)) [InvoiceDisc_Code],
	cast([VATRegistrationNo_] as nvarchar(4000)) [VATRegistrationNo_],
	cast([FaxNo_] as nvarchar(4000)) [FaxNo_],
	cast([ReminderTermsCode] as nvarchar(4000)) [ReminderTermsCode],
	cast([E-Mail] as nvarchar(4000)) [E-Mail],
	cast([PostCode] as nvarchar(4000)) [PostCode],
	cast([PreferredBankAccountCode] as nvarchar(4000)) [PreferredBankAccountCode],
	cast([BaseCalendarCode] as nvarchar(4000)) [BaseCalendarCode],
	cast([ShippingAgentServiceCode] as nvarchar(4000)) [ShippingAgentServiceCode],
	cast([CURPNo_] as nvarchar(4000)) [CURPNo_],
	cast([TaxExemptionNo_] as nvarchar(4000)) [TaxExemptionNo_],
	cast([CurrencyId] as nvarchar(4000)) [CurrencyId],
	cast([Image] as nvarchar(4000)) [Image],
	cast([CFDIRelation] as nvarchar(4000)) [CFDIRelation],
	cast([ContactGraphId] as nvarchar(4000)) [ContactGraphId],
	cast([TaxAreaID] as nvarchar(4000)) [TaxAreaID],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([ApplicationMethod] as int) [ApplicationMethod],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([TerritoryCode] as nvarchar(4000)) [TerritoryCode],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([PaymentMethodCode] as nvarchar(4000)) [PaymentMethodCode],
	cast([DocumentSendingProfile] as nvarchar(4000)) [DocumentSendingProfile],
	cast([ShipmentMethodId] as nvarchar(4000)) [ShipmentMethodId] 
From stg.[BC_BJAuctionCompany_Customer_0972_FinalView]