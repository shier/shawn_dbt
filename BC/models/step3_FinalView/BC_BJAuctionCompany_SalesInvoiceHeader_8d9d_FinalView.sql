{{ config(materialized='view',schema='stg')}}
Select
	[No] as [No_] ,
	[timestamp] ,
	[WCI_ImportedDocument] as [WCI-ImportedDocument] ,
	[WCI_AuctionDocumentNo] as [WCI-AuctionDocumentNo_] ,
	[WCI_LotNo] as [WCI-LotNo_] ,
	[WCI_AuctionID] as [WCI-AuctionID] 
From stg.[BC_BJAuctionCompany_SalesInvoiceHeader_8d9d_Incr] 
Where [dbt_valid_to] is null