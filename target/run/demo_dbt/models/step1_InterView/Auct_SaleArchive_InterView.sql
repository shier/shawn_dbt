create view "stg"."Auct_SaleArchive_InterView__dbt_tmp" as
    
Select
	[SALEARCHIVEID] [SaleArchiveID],
	[CountyTaxDollars] [CountyTaxDollars],
	[CountyTaxRate] [CountyTaxRate],
	[CityTaxDollars] [CityTaxDollars],
	[CityTaxRate] [CityTaxRate],
	[SteveCommDollars] [SteveCommDollars],
	[SteveCommPerc] [SteveCommPerc],
	[BuyerCommPerc] [BuyerCommPerc],
	[BuyerCommDollars] [BuyerCommDollars],
	[CommPerc] [CommPerc],
	[CommDollars] [CommDollars],
	[StateTaxDollars] [StateTaxDollars],
	[StateTaxRate] [StateTaxRate],
	[AssiterCommDollars] [AsSiterCommDollars],
	[AssiterCommPerc] [AsSiterCommPerc],
	[Price] [Price],
	[SALEID] [SaleID],
	[BLOCKSALEID] [BlockSaleID],
	cast([SHIPDATEVERIFIED] as nvarchar(4000)) [ShipDateVerified],
	[CARRIERID] [CarrierID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[BUYERCUSTOMERACCOUNTID] [BuyerCustomerAccountID],
	[SELLERCUSTOMERACCOUNTID] [SellerCustomerAccountID],
	[SHIPTOADDRESSID] [ShiptoAddressID],
	[SHIPTOCONTACTID] [ShiptoContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([BILLOFLADING] as nvarchar(4000)) [BillofLading],
	cast([BILLOFLADINGTEXT] as nvarchar(4000)) [BillofLadingText],
	cast([BMA] as nvarchar(4000)) [BMA],
	[LEGACY] [Legacy],
	[SHIPDATE] [ShipDate],
	cast([NAVISION] as nvarchar(4000)) [Navision],
	[BUYERDEALERID] [BuyerdealerID],
	[SELLERADDRESSID] [SellerAddressID],
	[SELLERDEALERID] [SellerDealerID],
	[AlternateSaleType] [AlternateSaleType],
	[SaleStatusId] [SaleStatusID],
	[AuctionBidderId] [AuctionBidderID],
	cast([TaxExemptCode] as nvarchar(4000)) [TaxExemptCode],
	cast([Arbitrated] as nvarchar(4000)) [ArBitrated],
	cast([AdjustmentReason] as nvarchar(4000)) [AdjustmentReason],
	cast([AdjustedByUserName] as nvarchar(4000)) [AdjustedByUserName],
	[AdjustmentDate] [AdjustmentDate],
	cast([CARRIERNAME] as nvarchar(4000)) [CarrierName]
From stg.[Auct_SaleArchive_Raw]
