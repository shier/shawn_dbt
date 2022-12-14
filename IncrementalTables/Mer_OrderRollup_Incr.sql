{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([Qty] as varchar), Cast([Cnt] as varchar), Cast([In_Nav] as varchar), Cast([Document_Type] as varchar), Cast([In_Nav_Date] as varchar), Cast([Price] as varchar), Cast([Ship_Amount] as varchar), Cast([Tax_Amount] as varchar), Cast([Discount] as varchar), [Merchant_ID], [Customer_No], [SKU], [Date_Nav], [Document_No], [Ship_Gl_No], [Tax_State], [Tax_Gl_No], [Discount_Gl_No])) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_valid_at,
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[Mer_OrderRollup_InterView]
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
