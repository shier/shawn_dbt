create view "dbo_stg"."Auct_ContactSuffix_InterView__dbt_tmp" as
    
Select
	[CONTACTSUFFIXID] [ContactSuffixID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactSuffix_Raw]
