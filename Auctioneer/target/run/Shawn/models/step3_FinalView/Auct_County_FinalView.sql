create view "stg"."Auct_County_FinalView__dbt_tmp" as
    
Select
	[StateAbbreviation],[County] 
From [Auct_County_Incr]