create view "stg"."Auct_ContactMailing_FinalView__dbt_tmp" as
    
Select
	[ContactMailingID],[MailingTypeID],[ContactID],[Created],[UpdateEventID] 
From stg.[Auct_ContactMailing_Incr] 
Where [dbt_valid_to] is null
