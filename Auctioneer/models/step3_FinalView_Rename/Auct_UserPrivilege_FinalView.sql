{{ config(materialized='view',schema='stg')}}
Select
	[UsersPrivilegeID],[UsersID],[PrivilegeID],[Deny_C] as [Deny],[Created],[UpdateEventID] 
From stg.[Auct_UserPrivilege_Incr] 
Where [dbt_valid_to] is null