
Select
	[SaleAdjustmentID],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[CityTaxRate],[SteveCommDollars],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[CommDollars],[StateTaxDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[SaleID],[BlockSaleID],[ShipDateVerified],[CarrierID],[Comments],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[Created],[UpdateEventID],[BillofLading],[BillofLadingText],[BMA],[Legacy],[ShipDate],[Navision],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[AdjustmentDate],[CarrierName] 
From stg.[Auct_SaleAdjustment_Incr] 
Where [dbt_valid_to] is null