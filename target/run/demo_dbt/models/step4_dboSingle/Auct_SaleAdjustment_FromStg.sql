
  
  if object_id ('"dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SaleAdjustmentID] as int) [SaleAdjustmentID],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([CountyTaxDollars] as numeric(19,4)) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as numeric(19,4)) [CityTaxDollars],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([SteveCommDollars] as numeric(19,4)) [SteveCommDollars],
	cast([Price] as numeric(19,4)) [Price],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPerc],
	cast([BuyerCommDollars] as numeric(19,4)) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPerc],
	cast([CommDollars] as numeric(19,4)) [CommDollars],
	cast([StateTaxDollars] as numeric(19,4)) [StateTaxDollars],
	cast([SteveCommPerc] as numeric(18,6)) [SteveCommPerc],
	cast([AsSiterCommDollars] as numeric(19,4)) [AssiterCommDollars],
	cast([AsSiterCommPerc] as numeric(18,6)) [AssiterCommPerc],
	cast([SaleID] as int) [SaleID],
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([ShipDateVerified] as nvarchar(4000)) [ShipDateVerified],
	cast([CarrierID] as int) [CarrierID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([BuyerCustomerAccountID] as int) [BuyerCustomerAccountID],
	cast([SellerCustomerAccountID] as int) [SellerCustomerAccountID],
	cast([ShiptoAddressID] as int) [ShiptoAddressID],
	cast([ShiptoContactID] as int) [ShiptoContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BillofLading] as nvarchar(4000)) [BillofLading],
	cast([BillofLadingText] as nvarchar(4000)) [BillofLadingText],
	cast([BMA] as nvarchar(4000)) [BMA],
	cast([Legacy] as int) [Legacy],
	cast([ShipDate] as datetime) [ShipDate],
	cast([Navision] as nvarchar(4000)) [Navision],
	cast([BuyerdealerID] as int) [BuyerdealerID],
	cast([SellerAddressID] as int) [SellerAddressID],
	cast([SellerDealerID] as int) [SellerDealerID],
	cast([AlternateSaleType] as int) [AlternateSaleType],
	cast([SaleStatusID] as int) [SaleStatusID],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([TaxExemptCode] as nvarchar(4000)) [TaxExemptCode],
	cast([ArBitrated] as nvarchar(4000)) [ArBitrated],
	cast([AdjustmentReason] as nvarchar(4000)) [AdjustmentReason],
	cast([AdjustedByUserName] as nvarchar(4000)) [AdjustedByUserName],
	cast([AdjustmentDate] as datetime) [AdjustmentDate],
	cast([CarrierName] as nvarchar(4000)) [CarrierName] 
From stg.[Auct_SaleAdjustment_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_SaleAdjustment_FromStg__dbt_tmp_temp_view"
    end


