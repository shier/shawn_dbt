{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([Description], [LastUpdatedUser], [Reason], [Status], Cast([CreatedOn] as varchar), Cast([UpdatedOn] as varchar), Cast([DeletedOn] as varchar), Cast([Actiondttm] as varchar), Cast([Amount] as varchar), Cast([ProxyAmount] as varchar), Cast([Userentered] as varchar), Cast([ID] as varchar), Cast([UserID] as varchar), Cast([ListingID] as varchar), Cast([Quantity] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[AH_ListingActions_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select dbt_scd_id 
		from {{ this }} compareData
		where hashData.dbt_scd_id=compareData.dbt_scd_id
	)
{% endif %}
