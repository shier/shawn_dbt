create view "stg"."Auct_EventSite_FinalView__dbt_tmp" as
    
Select
	[EventID],[SiteID] 
From [Auct_EventSite_Incr]