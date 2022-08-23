
  
  if object_id ('"dbo"."CC_NewsLetter_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetter_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_NewsLetter_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_NewsLetter_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_NewsLetter_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([Email] as nvarchar(320)) [Email],
	cast([CreateDate] as datetime) [Created],
	cast([ModifyDate] as datetime) [ModifiedDate] 
From stg.[CC_NewsLetter_FinalView]
    ');

  CREATE TABLE "dbo"."CC_NewsLetter_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_NewsLetter_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_NewsLetter_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_NewsLetter_FromStg__dbt_tmp_temp_view"
    end

