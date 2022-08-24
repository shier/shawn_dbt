create view "dbo_stg"."Auct_Invoice_InterView__dbt_tmp" as
    
Select
	[INVOICEID] [InvoiceID],
	cast([INVOICENAME] as nvarchar(4000)) [InvoiceName],
	[AUCTIONID] [AuctionID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Invoice_Raw]
