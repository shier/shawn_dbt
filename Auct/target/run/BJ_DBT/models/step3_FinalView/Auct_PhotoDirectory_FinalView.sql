create view "stg"."Auct_PhotoDirectory_FinalView__dbt_tmp" as
    
Select
	[PhotoDirectoryID],[UncPath],[TypeName],[Active],[DirectoryTypeID],[AuctionID],[IsCDN] 
From stg.[Auct_PhotoDirectory_Incr] 
Where [dbt_valid_to] is null
