{{ config(materialized='table',schema='stg')}}
SELECT
		li.[LineItemsID],
		c.[Consignor_Skey],
		b.[Buyer_Skey],
		li.[OwnerID],
		li.[PayerID],
		li.[InvoiceID],
		li.[ListingID],
		li.[Description],
		li.[LastUpdatedUser],
		li.[Currency],
		li.[Status],
		li.[Type],
		li.[TotalAmount],
		li.[QTY],
		li.[PerUnitAmount],
		li.[IsTaxable],
		li.[IsArchived],
		li.[Relistiteration],
		li.[HasBuyerPremiumApplies],
		li.[IsPayerArchived],
		li.[DateStamp],
		li.[CreatedDate],
		li.[UpdatedDate],
		li.[DeletedDate]
FROM
	[stg].[AH_LineItems_FT_stg] li
left join [dbo].[AH_Buyers_DM] b on li.PayerID=b.UserID
left join [dbo].[AH_Consignors_DM] c on li.OwnerID=c.UserID
