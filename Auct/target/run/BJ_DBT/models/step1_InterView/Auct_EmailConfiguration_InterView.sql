create view "dbo_stg"."Auct_EmailConfiguration_InterView__dbt_tmp" as
    
Select
	cast([HOST] as nvarchar(4000)) [Host],
	cast([DOMAIN] as nvarchar(4000)) [Domain],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	cast([PASSWORD] as nvarchar(4000)) [Password]
From stg.[Auct_EmailConfiguration_Raw]
