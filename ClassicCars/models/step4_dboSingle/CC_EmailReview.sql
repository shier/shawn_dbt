{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReviewReason] as nvarchar(4000)) [ReviewReason],
	cast([ReviewInFormation] as nvarchar(4000)) [ReviewInformation],
	cast([SentFrom] as nvarchar(4000)) [SentFrom],
	cast([Replyto] as nvarchar(4000)) [ReplyTo],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	cast([Template] as nvarchar(4000)) [Template],
	cast([ContentFields] as nvarchar(4000)) [ContentFields],
	cast([Meta] as nvarchar(4000)) [Meta],
	cast([ReviewedBy] as nvarchar(4000)) [ReviewedBy],
	cast([ReviewerAction] as nvarchar(4000)) [ReviewerAction],
	cast([IsActive] as bit) [IsActive],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([Source] as int) [Source] 
From stg.[CC_EmailReview_FinalView]