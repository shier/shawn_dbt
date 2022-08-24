
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Variant_SKU], [Order_ID], Cast([Total_Sales] as varchar), Cast([Ordered_Item_Quantity] as varchar), Cast([Day] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TimSalesLastMonthShopify_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Mer_TimSalesLastMonthShopify_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
