
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(ItemTaxTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ItemMake_Inter]
	)
Select * From hashData