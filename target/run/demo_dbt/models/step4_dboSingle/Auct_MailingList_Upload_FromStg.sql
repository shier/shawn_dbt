
  
  if object_id ('"dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TransactionID] as nvarchar(4000)) [TransactionID],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Middle] as nvarchar(4000)) [Middle],
	cast([Address1] as nvarchar(4000)) [Address1],
	cast([Address2] as nvarchar(4000)) [Address2],
	cast([City] as nvarchar(4000)) [City],
	cast([StateProvince] as nvarchar(4000)) [StateProvince],
	cast([CountryID] as int) [CountryID],
	cast([County] as nvarchar(4000)) [County],
	cast([EventID] as int) [EventID],
	cast([Careof] as nvarchar(4000)) [Careof],
	cast([PostalCode] as nvarchar(4000)) [PostalCode],
	cast([Created] as datetime) [Created],
	cast([Active] as int) [Active],
	cast([MailListUploadID] as int) [MailListUploadID],
	cast([ErrorMessage] as nvarchar(4000)) [ErrorMessage] 
From stg.[Auct_MailingList_Upload_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MailingList_Upload_FromStg__dbt_tmp_temp_view"
    end


