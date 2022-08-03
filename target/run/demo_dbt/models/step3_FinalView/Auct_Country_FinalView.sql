create view "stg"."Auct_Country_FinalView__dbt_tmp" as
    
Select
	[CountryID],[Name],[CountryCode],[Created],[UpdateEventID],[DisplayOrder],[SynchID] 
From stg.[Auct_Country_Incr] 
Where [dbt_valid_to] is null