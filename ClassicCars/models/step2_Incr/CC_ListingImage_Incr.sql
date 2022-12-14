{{ config(materialized='incremental',schema='stg',unique_key='dbt_scd_id')}}
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat([Hashorig], [Computedsrcset], [URLThuMbnailwIDE], [URLsrcsetretinaxs], [URLsrcsetretinasm], [URLsrcsetretinamd], [URLsrcsetretinalg], [URLsrcsetretinaxl], [URLsrcsetretinaxxl], [URLsrcsetsm], [URLsrcsetmd], [URLsrcsetlg], [URLsrcsetxl], [URLsrcsetxxl], [URLsrcsetretinaxxs], [URLCarouselCompressed], [URLjumboCompressed], [URLThuMbnailCompressed], [URLstandardCompressed], [URLsrcsetxxs], [URLsrcsetxs], [URLorig], [URLstandard], [URLThuMbnail], [URLjumbo], [FullURL], [URLCarousel], Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([ListingImageTypeID] as varchar), Cast([Sequence] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([IsActive] as varchar), Cast([LetterBox] as varchar), Cast([UseCompressedImages] as varchar), Cast([SrcsetComputed] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_ListingImage_InterView]
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
