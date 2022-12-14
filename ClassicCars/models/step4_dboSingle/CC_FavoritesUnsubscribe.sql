{{ config(materialized='table',schema='dbo')}}
Select
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	cast([FavoritesUnsubscribePK] as int) [FavoritesUnsubscribePK],
	cast([UserFK] as int) [UserFK],
	cast([UnsubscribeDateUTC] as datetime) [UnsubscribeDateUTC] 
From stg.[CC_FavoritesUnsubscribe_FinalView]