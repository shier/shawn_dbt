{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportFormID] as varchar), Cast([ReportID] as varchar), Cast([FormID] as varchar), [EventID], Cast([PackageOrder] as varchar), Cast([AuctionID] as varchar), Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Report_Form_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}