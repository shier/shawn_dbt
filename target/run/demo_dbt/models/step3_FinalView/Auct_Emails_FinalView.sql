create view "stg"."Auct_Emails_FinalView__dbt_tmp" as
    
Select
	[EmailID],[EmailAddress],[ContactID],[CustomerAccountID],[Use],[Created],[UpdateEventID],[EmailBlastOptin],[EmailBlastOptinPartners],[Active] 
From stg.[Auct_Emails_Incr] 
Where [dbt_valid_to] is null