{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Wrsp] as varchar), Cast([LotNumber] as varchar), Cast([Wrsh] as varchar), Cast([Wrsscm] as varchar), Cast([AuctionID] as varchar), [Comments], Cast([Created] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_WorldRecords_InterView]
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
