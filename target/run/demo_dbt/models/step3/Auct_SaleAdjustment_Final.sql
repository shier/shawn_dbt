
  
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SaleAdjustment_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SaleAdjustment_Final__dbt_tmp_temp_view as
    
Select
	[SaleAdjustmentID],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[SaleID],[BlockSaleID],[ShipDateVerified],[CarrierID],[Comments],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[Created],[UpdateEventID],[BillofLading],[BillofLadingText],[BMA],[Legacy],[ShipDate],[Navision],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[AdjustmentDate],[CarrierName] 
From stg.[Auct_SaleAdjustment_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SaleAdjustment_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SaleAdjustment_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SaleAdjustment_Final__dbt_tmp_temp_view"
    end

