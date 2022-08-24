
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([No_], [No_2], [Description], [Description_2], [Base_Unit_Of_Measure], [Item_Category_Code], Cast([Unit_Price] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Spirits_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Mer_Spirits_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)