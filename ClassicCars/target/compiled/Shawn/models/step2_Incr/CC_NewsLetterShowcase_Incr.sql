
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([IsActive] as varchar), Cast([NewsLetterissueFK] as varchar), Cast([ListingFK] as varchar), Cast([ShowcaseSequence] as varchar), Cast([CreateDateUTC] as varchar), Cast([ModifyDateUTC] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_NewsLetterShowcase_InterView]
	)
Select * From hashData

	where not exists 
	(
		select dbt_scd_id 
		from "BJAC_DW_PROD"."stg"."CC_NewsLetterShowcase_Incr" compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
