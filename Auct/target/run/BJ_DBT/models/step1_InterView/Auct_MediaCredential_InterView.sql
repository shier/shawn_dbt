create view "dbo_stg"."Auct_MediaCredential_InterView__dbt_tmp" as
    
Select
	[MEDIACREDENTIALID] [MediaCredentialID],
	[MEDIAAUCTIONID] [MediaAuctionID],
	cast([CREDENTIALNUMBER] as nvarchar(4000)) [CredentialNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_MediaCredential_Raw]
