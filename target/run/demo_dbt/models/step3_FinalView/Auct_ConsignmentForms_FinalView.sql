create view "stg"."Auct_ConsignmentForms_FinalView__dbt_tmp" as
    
Select
	[ConsignmentFormID],[ConsignmentID],[FormName],[FormKey],[FilePath],[SignStartedDateTime],[SignfinishedDateTime],[UserID] 
From stg.[Auct_ConsignmentForms_Incr] 
Where [dbt_valid_to] is null
