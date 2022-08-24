create view "dbo_stg"."Auct_BlockSale_InterView__dbt_tmp" as
    
Select
	[BLOCKSALEID] [BlockSaleID],
	[AUCTIONBIDDERID] [AuctionBidderID],
	[DOCKETID] [DocketID],
	[SALESTATUSID] [SaleStatusID],
	[AUCTIONEERID] [AuctioneerID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[BUYERCOMMOVERRIDE] [BuyerCommOverride],
	[SELLERCOMMOVERRIDE] [SellerCommOverride],
	[RUNDATE] [RunDate],
	[TAXOVERRIDE] [TaxOverride],
	cast([TAXEXEMPTCODE] as nvarchar(4000)) [TaxExemptCode],
	[PRICE] [Price],
	[BUYERCOMMPERC] [BuyerCommPerc],
	[BUYERCOMMDOLLARS] [BuyerCommDollars],
	[COMMPERC] [CommPerc],
	[CITYTAXRATE] [CityTaxRate],
	[COMMDOLLARS] [CommDollars],
	[STATETAXDOLLARS] [StateTaxDollars],
	[STATETAXRATE] [StateTaxRate],
	[COUNTYTAXDOLLARS] [CountyTaxDollars],
	[COUNTYTAXRATE] [CountyTaxRate],
	[CITYTAXDOLLARS] [CityTaxDollars]
From stg.[Auct_BlockSale_Raw]
