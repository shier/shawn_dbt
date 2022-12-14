{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([Priority] as int) [Priority],
	cast([EventID] as int) [EventID],
	cast([SqlDaTestamp] as datetime) [SQLDateStamp],
	cast([EntryDaTestamp] as datetime) [EntryDateStamp],
	cast([MachineName] as nvarchar(4000)) [MachineName],
	cast([Message] as nvarchar(4000)) [Message],
	cast([Title] as nvarchar(4000)) [Title],
	cast([FunctionalArea] as nvarchar(4000)) [FunctionalArea],
	cast([Severity] as nvarchar(4000)) [Severity],
	cast([Actor] as nvarchar(4000)) [Actor],
	cast([ExceptionClass] as nvarchar(4000)) [ExceptionClass],
	cast([Stacktrace] as nvarchar(4000)) [StackTrace],
	cast([Properties] as nvarchar(4000)) [Properties] 
From stg.[AH_Logentries_FinalView]