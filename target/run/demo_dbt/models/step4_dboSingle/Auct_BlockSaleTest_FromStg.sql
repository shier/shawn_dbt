
  
  if object_id ('"dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BlockSaleTestID] as int) [BlockSaleTestID],
	cast([Price] as numeric(19,4)) [Price],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPerc],
	cast([BuyerCommDollars] as numeric(19,4)) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPerc],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([CommDollars] as numeric(19,4)) [CommDollars],
	cast([StateTaxDollars] as numeric(19,4)) [StateTaxDollars],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([CountyTaxDollars] as numeric(19,4)) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as numeric(19,4)) [CityTaxDollars],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([DocketID] as int) [DocketID],
	cast([SaleStatusID] as int) [SalestatusID],
	cast([AuctioneerID] as int) [AuctioneerID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BuyerCommOverride] as int) [BuyerCommOverride],
	cast([SellerCommOverride] as int) [SellerCommOverride],
	cast([RunDate] as DATETIME) [RunDate],
	cast([TaxOverride] as int) [TaxOverride],
	cast([TaxExemptCode] as nvarchar(4000)) [TaxExemptCode] 
From stg.[Auct_BlockSaleTest_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BlockSaleTest_FromStg__dbt_tmp_temp_view"
    end


