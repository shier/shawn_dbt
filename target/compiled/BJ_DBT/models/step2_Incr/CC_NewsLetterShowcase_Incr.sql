
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([IsActive] as varchar), Cast([NewsLetterissueFK] as varchar), Cast([ListingFK] as varchar), Cast([ShowcaseSequence] as varchar), Cast([CreateDateUTC] as varchar), Cast([ModifyDateUTC] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_NewsLetterShowcase_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."CC_NewsLetterShowcase_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
