{{ config(materialized='view',schema='stg')}}
Select
	[CurrentAuctionID],[AuctionID],[Percentage] 
From [Auct_AuctionSeasonPercentage_Incr] 
Where [dbt_valid_to] is null