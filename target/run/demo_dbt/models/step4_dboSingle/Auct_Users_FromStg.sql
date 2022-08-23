
  
  if object_id ('"dbo"."Auct_Users_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Users_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Users_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Users_FromStg__dbt_tmp_temp_view as
    
Select
	cast([UsersID] as int) [UserID],
	cast([Name] as varchar(500)) [UsersName],
	cast([EmailAddress] as nvarchar(320)) [UsersEmail],
	cast([Password] as varchar(128)) [Password],
	cast([QuestionID] as int) [QuestionID],
	cast([SecretAnswer] as varchar(128)) [SecretAnswer],
	cast([LastLoggedin] as datetime) [LastLoggedIn],
	cast([LastActivity] as datetime) [LastActivity],
	cast([Enabled] as char(1)) [Enabled],
	cast([Reason] as varchar(8000)) [Reason],
	cast([WinLogon] as varchar(64)) [WinLogOn],
	cast([WinDomain] as varchar(64)) [WinDomain],
	cast([Created] as datetime) [Created_Users],
	cast([UpdateEventID] as int) [UpdateEventID_Users],
	cast([SMSNotificationNumber] as varchar(128)) [SMSNotificationNumber],
	cast([SMSNotificationBit] as int) [SMSNotificationBIT],
	cast([DepartmentID] as int) [DepartmentID],
	cast([Phone1] as nvarchar(40)) [Phone1],
	cast([Phone2] as nvarchar(40)) [Phone2],
	cast([Title] as nvarchar(4000)) [Title],
	cast([DeScripton] as nvarchar(4000)) [Description],
	cast([Address] as nvarchar(256)) [Address_Users],
	cast([City] as nvarchar(100)) [City_Users],
	cast([State] as nvarchar(50)) [State_Users],
	cast([PostalCode] as nvarchar(50)) [PostalCode_Users] 
From stg.[Auct_Users_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Users_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Users_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Users_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Users_FromStg__dbt_tmp_temp_view"
    end


