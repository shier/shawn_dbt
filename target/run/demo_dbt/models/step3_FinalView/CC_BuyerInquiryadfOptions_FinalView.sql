create view "stg"."CC_BuyerInquiryadfOptions_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_BuyerInquiryadfOptions_Incr] 
Where [dbt_valid_to] is null
