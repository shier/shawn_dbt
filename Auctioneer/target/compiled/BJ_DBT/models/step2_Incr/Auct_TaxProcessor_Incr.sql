
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([NexusState], [PurchaseState], [ClassName], Cast([ItemTaxTypeID] as varchar), [TaxruleDescription], Cast([AuctionTypeBit] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxProcessor_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_TaxProcessor_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)