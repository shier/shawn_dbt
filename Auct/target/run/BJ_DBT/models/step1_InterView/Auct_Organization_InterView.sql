create view "dbo_stg"."Auct_Organization_InterView__dbt_tmp" as
    
Select
	[ORGANIZATIONID] [OrganizationID],
	cast([NAME] as nvarchar(4000)) [Name],
	[COMPANYID] [CompanyID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DEPTCODE] as nvarchar(4000)) [DeptCode]
From stg.[Auct_Organization_Raw]
