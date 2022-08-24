create view "dbo_stg"."Auct_Inspection_InterView__dbt_tmp" as
    
Select
	[INSPECTIONID] [InspectionID],
	[CARID] [CarID],
	[OWNERCONTACTID] [OwnerContactID],
	[PERFORMEDBYCONTACTID] [PerFormedByContactID],
	cast([RESULTS] as nvarchar(4000)) [Results],
	[DATEPERFORMED] [DateperFormed],
	[DATEREQUESTED] [DateRequested],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Inspection_Raw]
