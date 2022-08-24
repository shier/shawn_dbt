
  
  if object_id ('"dbo"."Auct_Sale__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sale__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Sale__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Sale__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Sale__dbt_tmp_temp_view as
    
Select
	cast([SaleID] as int) [SaleID],
	cast([CommDollars] as money) [CommDollars],
	cast([StateTaxDollars] as money) [StateTaxDollars],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([CountyTaxDollars] as money) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as money) [CityTaxDollars],
	cast([HoldWire] as bit) [HasHoldWire],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([SteveCommDollars] as money) [SteveCommDollars],
	cast([SteveCommPerc] as numeric(18,6)) [SteveCommPct],
	cast([AsSiterCommDollars] as money) [AssiterCommDollars],
	cast([AsSiterCommPerc] as numeric(18,6)) [AssiterCommPct],
	cast([Price] as money) [Price],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPct],
	cast([BuyerCommDollars] as money) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPct],
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([ShipDateVerified] as char(1)) [ShipDateVerified],
	cast([CarrierID] as int) [CarrierID],
	cast([Comments] as varchar(512)) [Comments],
	cast([BuyerCustomerAccountID] as int) [BidderID],
	cast([SellerCustomerAccountID] as int) [SellerCustomerAccountID],
	cast([ShiptoAddressID] as int) [ShipToAddressID],
	cast([ShiptoContactID] as int) [ShipToContactID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([BillofLading] as char(1)) [BillOfLading],
	cast([BillofLadingText] as varchar(100)) [BillOfLadingText],
	cast([BMA] as varchar(255)) [BMA],
	cast([Legacy] as int) [Legacy],
	cast([ShipDate] as datetime) [ShipDateTime],
	cast([Navision] as char(1)) [NAVISION],
	cast([BuyerdealerID] as int) [BuyerDealerID],
	cast([SellerAddressID] as int) [SellerAddressID],
	cast([SellerDealerID] as int) [SellerDealerID],
	cast([AlternateSaleType] as int) [AlternateSaleType],
	cast([SaleStatusID] as int) [SaleStatusID],
	cast([AuctionBidderID] as int) [AuctionBidderID],
	cast([TaxExemptCode] as varchar(4)) [TaxExemptCode],
	cast([ArBitrated] as char(1)) [Arbitrated],
	cast([AdjustmentReason] as nvarchar(4000)) [AdjustmentReason],
	cast([AdjustedByUserName] as nvarchar(500)) [AdjustedByUsername],
	cast([AdjustmentDate] as datetime) [AdjustmentDateTime],
	cast([CarrierName] as varchar(500)) [CarrierName] 
From stg.[Auct_Sale_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Sale__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Sale__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Sale__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Sale__dbt_tmp_temp_view"
    end


