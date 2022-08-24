
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DocumentType] as varchar), [AuctionDocumentno], Cast([Lneno] as varchar), Cast([Type] as varchar), [No], [Description], [Description2], Cast([Quantity] as varchar), Cast([DirectUnitcostexclTax] as varchar), Cast([Status] as varchar), [StatusMessage], [Globaldim1Code], [Globaldim2Code], [ShortCutdim4Code], [ShortCutdim5Code], [ShortCutdim8Code], [ShortCutdim3Code], [BusinessUnit], Cast([WrotetoNavision] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NavisionPurchaseLine_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_NavisionPurchaseLine_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
