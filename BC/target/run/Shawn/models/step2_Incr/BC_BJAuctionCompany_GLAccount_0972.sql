
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp"
    end


   EXEC('create view dbo.BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view as
    
Select
	cast([LastDateModified] as datetime) [LastDateModified],
	cast([LastModifiedDateTime] as datetime) [LastModifiedDateTime],
	cast([$systemCreatedAt] as datetime) [$systemCreatedAt],
	cast([$systemModifiedAt] as datetime) [$systemModifiedAt],
	cast([AccountType] as int) [AccountType],
	cast([Income_Balance] as int) [Income_Balance],
	cast([Debit_Credit] as int) [Debit_Credit],
	cast([Blocked] as int) [Blocked],
	cast([DirectPosting] as int) [DirectPosting],
	cast([ReconciliationAccount] as int) [ReconciliationAccount],
	cast([TaxLiable] as int) [TaxLiable],
	cast([ExchangeRateAdjustment] as int) [ExchangeRateAdjustment],
	cast([AccountCategory] as int) [AccountCategory],
	cast([OmitDefaultDescr_inJnl_] as int) [OmitDefaultDescr_inJnl_],
	cast([AccountSubcategoryEntryNo_] as int) [AccountSubcategoryEntryNo_],
	cast([APIAccountType] as int) [APIAccountType],
	cast([NewPage] as int) [NewPage],
	cast([No_ofBlankLines] as int) [No_ofBlankLines],
	cast([Indentation] as int) [Indentation],
	cast([Consol_TranslationMethod] as int) [Consol_TranslationMethod],
	cast([Gen_PostingType] as int) [Gen_PostingType],
	cast([AutomaticExt_Texts] as int) [AutomaticExt_Texts],
	cast([timestamp] as varbinary(8000)) [timestamp],
	cast([Picture] as varbinary(8000)) [Picture],
	cast([No_] as nvarchar(4000)) [No_],
	cast([Name] as nvarchar(4000)) [Name],
	cast([SearchName] as nvarchar(4000)) [SearchName],
	cast([GlobalDimension1Code] as nvarchar(4000)) [GlobalDimension1Code],
	cast([GlobalDimension2Code] as nvarchar(4000)) [GlobalDimension2Code],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([DefaultDeferralTemplateCode] as nvarchar(4000)) [DefaultDeferralTemplateCode],
	cast([Id] as nvarchar(4000)) [Id],
	cast([SATAccountCode] as nvarchar(4000)) [SATAccountCode],
	cast([$systemId] as nvarchar(4000)) [$systemId],
	cast([$systemCreatedBy] as nvarchar(4000)) [$systemCreatedBy],
	cast([$systemModifiedBy] as nvarchar(4000)) [$systemModifiedBy],
	cast([TaxGroupCode] as nvarchar(4000)) [TaxGroupCode],
	cast([VATBus_PostingGroup] as nvarchar(4000)) [VATBus_PostingGroup],
	cast([VATProd_PostingGroup] as nvarchar(4000)) [VATProd_PostingGroup],
	cast([DefaultICPartnerG_LAcc_No] as nvarchar(4000)) [DefaultICPartnerG_LAcc_No],
	cast([CostTypeNo_] as nvarchar(4000)) [CostTypeNo_],
	cast([GIFICode] as nvarchar(4000)) [GIFICode],
	cast([Totaling] as nvarchar(4000)) [Totaling],
	cast([Consol_DebitAcc_] as nvarchar(4000)) [Consol_DebitAcc_],
	cast([Consol_CreditAcc_] as nvarchar(4000)) [Consol_CreditAcc_],
	cast([Gen_Bus_PostingGroup] as nvarchar(4000)) [Gen_Bus_PostingGroup],
	cast([Gen_Prod_PostingGroup] as nvarchar(4000)) [Gen_Prod_PostingGroup],
	cast([TaxAreaCode] as nvarchar(4000)) [TaxAreaCode] 
From stg.[BC_BJAuctionCompany_GLAccount_0972_FinalView]
    ');

  CREATE TABLE "dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."BC_BJAuctionCompany_GLAccount_0972__dbt_tmp_temp_view"
    end


