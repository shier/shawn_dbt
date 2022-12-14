{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Loopback_Detection] as varchar), Cast([Queued_reinit] as varchar), Cast([ArtID] as varchar), Cast([SrvID] as varchar), [Dest_Db], Cast([Status] as varchar), Cast([Sync_Type] as varchar), [Login_Name], Cast([SubScription_Type] as varchar), Cast([Distribution_JobID] as varchar), Cast([TimeStamp] as varchar), Cast([Update_Mode] as varchar), Cast([NoSync_Type] as varchar), [SrvName])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Auct_SysSubScriptions_InterView]
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
