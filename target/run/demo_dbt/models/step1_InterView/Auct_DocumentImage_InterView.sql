create view "stg"."Auct_DocumentImage_InterView__dbt_tmp" as
    
Select
	[DOCUMENTIMAGEID] [DocumentImageID],
	[ACTIVE] [Active],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[DOCUMENTIMAGETYPEID] [DocumentImageTypeID],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	cast([FULLPATH] as nvarchar(4000)) [FullPath],
	[AUCTIONID] [AuctionID],
	[EXPIRATION] [Expiration],
	[CREATED] [Created],
	[CREATEDBYUSERID] [CreatedByUserID],
	[HEIGHT] [Height],
	[WIDTH] [Width]
From stg.[Auct_DocumentImage_Raw]
