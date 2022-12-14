{{ config(materialized='view',schema='stg')}}
Select
	cast([No_] as nvarchar(4000)) [No],
	[LastDateModified] ,
	[LastModifiedDateTime] ,
	[$systemCreatedAt] as [systemCreatedAt],
	[$systemModifiedAt] as [systemModifiedAt],
	[AccountType] ,
	[Income_Balance] ,
	[Debit_Credit] ,
	[Blocked] ,
	[DirectPosting] ,
	[ReconciliationAccount] ,
	[TaxLiable] ,
	[ExchangeRateAdjustment] ,
	[AccountCategory] ,
	[OmitDefaultDescr_inJnl_] as [OmitDefaultDescr_inJnl],
	[AccountSubcategoryEntryNo_] as [AccountSubcategoryEntryNo],
	[APIAccountType] ,
	[NewPage] ,
	[No_ofBlankLines] ,
	[Indentation] ,
	[Consol_TranslationMethod] ,
	[Gen_PostingType] ,
	[AutomaticExt_Texts] ,
	cast([timestamp] as nvarchar(4000)) [timestamp],
	cast([Picture] as nvarchar(4000)) [Picture],
	cast([Name] as nvarchar(4000)) [Name],
	cast([SearchName] as nvarchar(4000)) [SearchName],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([DefaultDeferralTemplateCode] as nvarchar(4000)) [DefaultDeferralTemplateCode],
	cast([Id] as nvarchar(4000)) [Id],
	cast([SATAccountCode] as nvarchar(4000)) [SATAccountCode],
	cast([$systemId] as nvarchar(4000)) [systemId],
	cast([$systemCreatedBy] as nvarchar(4000)) [systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [systemModifiedBy],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([DefaultICPartnerG_LAcc_No] as nvarchar(4000)) [DefaultICPartnerG_LAcc_No],
	cast([CostTypeNo_] as nvarchar(4000)) [CostTypeNo],
	cast([GIFICode] as nvarchar(4000)) [GIFICode],
	cast([Totaling] as nvarchar(4000)) [Totaling],
	cast([Consol_DebitAcc_] as nvarchar(4000)) [Consol_DebitAcc],
	cast([Consol_CreditAcc_] as nvarchar(4000)) [Consol_CreditAcc],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode]
From stg.[BC_BJAuctionCompany_GLAccount_0972_Raw]
