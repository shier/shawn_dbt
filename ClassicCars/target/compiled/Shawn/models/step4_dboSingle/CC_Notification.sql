
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([DeviceID] as nvarchar(4000)) [DeviceID] 
From stg.[CC_Notification_FinalView]