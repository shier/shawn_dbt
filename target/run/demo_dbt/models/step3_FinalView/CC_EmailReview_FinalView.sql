create view "stg"."CC_EmailReview_FinalView__dbt_tmp" as
    
Select
	[ID],[ReviewReason],[ReviewInFormation],[SentFrom],[Replyto],[IpAddress],[Template],[ContentFields],[Meta],[ReviewedBy],[ReviewerAction],[IsActive],[CreateDate],[ModifyDate],[Source] 
From stg.[CC_EmailReview_Incr] 
Where [dbt_valid_to] is null
