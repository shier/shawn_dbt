
Select
	cast([ID] as int) [Id],
	cast([DetailID] as int) [DetailID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Queueddttm] as datetime) [QueuedDTTM],
	cast([Statusdttm] as datetime) [StatusDTTM],
	cast([RecipientEmail] as nvarchar(4000)) [RecipientEmail],
	cast([CcEmail] as nvarchar(4000)) [CCEmail],
	cast([BCcEmail] as nvarchar(4000)) [BCCEmail],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Status] as nvarchar(4000)) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([Message] as nvarchar(4000)) [Message],
	cast([DetailType] as nvarchar(4000)) [DetailType],
	cast([ReplytoEmail] as nvarchar(4000)) [ReplyToEmail],
	cast([SEnderUserName] as nvarchar(4000)) [SenderUserName],
	cast([ReceiverUserName] as nvarchar(4000)) [ReceiverUserName],
	cast([Template] as nvarchar(4000)) [Template] 
From stg.[AH_Notifications_FinalView]