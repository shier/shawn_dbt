
Select
	[SaleID],[CommDollars],[StateTaxDollars],[StateTaxRate],[CountyTaxDollars],[CountyTaxRate],[CityTaxDollars],[HoldWire],[CityTaxRate],[SteveCommDollars],[SteveCommPerc],[AsSiterCommDollars],[AsSiterCommPerc],[Price],[BuyerCommPerc],[BuyerCommDollars],[CommPerc],[BlockSaleID],[ShipDateVerified],[CarrierID],[Comments],[BuyerCustomerAccountID],[SellerCustomerAccountID],[ShiptoAddressID],[ShiptoContactID],[Created],[UpdateEventID],[BillofLading],[BillofLadingText],[BMA],[Legacy],[ShipDate],[Navision],[BuyerdealerID],[SellerAddressID],[SellerDealerID],[AlternateSaleType],[SaleStatusID],[AuctionBidderID],[TaxExemptCode],[ArBitrated],[AdjustmentReason],[AdjustedByUserName],[AdjustmentDate],[CarrierName] 
From stg.[Auct_Sale_Incr] 
Where [dbt_valid_to] is null