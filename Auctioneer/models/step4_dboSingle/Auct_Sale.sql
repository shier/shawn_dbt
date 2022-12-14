{{ config(materialized='table',schema='dbo')}}
Select
	cast([CommDollars] as money) [CommDollars],
	cast([StateTaxDollars] as money) [StateTaxDollars],
	cast([StateTaxRate] as numeric(18,6)) [StateTaxRate],
	cast([CountyTaxDollars] as money) [CountyTaxDollars],
	cast([CountyTaxRate] as numeric(18,6)) [CountyTaxRate],
	cast([CityTaxDollars] as money) [CityTaxDollars],
	cast([HoldWire] as bit) [HoldWire],
	cast([CityTaxRate] as numeric(18,6)) [CityTaxRate],
	cast([SteveCommDollars] as money) [SteveCommDollars],
	cast([SteveCommPerc] as numeric(18,6)) [SteveCommPerc],
	cast([AsSiterCommDollars] as money) [AssiterCommDollars],
	cast([AsSiterCommPerc] as numeric(18,6)) [AssiterCommPerc],
	cast([Price] as money) [Price],
	cast([BuyerCommPerc] as numeric(18,6)) [BuyerCommPerc],
	cast([BuyerCommDollars] as money) [BuyerCommDollars],
	cast([CommPerc] as numeric(18,6)) [CommPerc],
	cast([SaleID] as int) [SALEID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([ShipDateVerified] as char(1)) [SHIPDATEVERIFIED],
	cast([CarrierID] as int) [CARRIERID],
	cast([Comments] as varchar(512)) [COMMENTS],
	cast([BuyerCustomerAccountID] as int) [BUYERCUSTOMERACCOUNTID],
	cast([SellerCustomerAccountID] as int) [SELLERCUSTOMERACCOUNTID],
	cast([ShiptoAddressID] as int) [SHIPTOADDRESSID],
	cast([ShiptoContactID] as int) [SHIPTOCONTACTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([BillofLading] as char(1)) [BILLOFLADING],
	cast([BillofLadingText] as varchar(100)) [BILLOFLADINGTEXT],
	cast([BMA] as varchar(255)) [BMA],
	cast([Legacy] as int) [LEGACY],
	cast([ShipDate] as datetime) [SHIPDATE],
	cast([Navision] as char(1)) [NAVISION],
	cast([BuyerdealerID] as int) [BUYERDEALERID],
	cast([SellerAddressID] as int) [SELLERADDRESSID],
	cast([SellerDealerID] as int) [SELLERDEALERID],
	cast([AlternateSaleType] as int) [AlternateSaleType],
	cast([SaleStatusID] as int) [SaleStatusId],
	cast([AuctionBidderID] as int) [AuctionBidderId],
	cast([TaxExemptCode] as varchar(4)) [TaxExemptCode],
	cast([ArBitrated] as char(1)) [Arbitrated],
	cast([AdjustmentReason] as nvarchar(4000)) [AdjustmentReason],
	cast([AdjustedByUserName] as nvarchar(500)) [AdjustedByUserName],
	cast([AdjustmentDate] as datetime) [AdjustmentDate],
	cast([CarrierName] as varchar(500)) [CARRIERNAME] 
From stg.[Auct_Sale_FinalView]