create view "dbo_stg"."Auct_OtherDocumentation_InterView__dbt_tmp" as
    
Select
	[OTHERDOCUMENTATIONID] [OtherDocumentationID],
	[CONSIGNMENTID] [ConsignmentID],
	[OTHERDOCUMENTATIONTYPEID] [OtherDocumentationTypeID],
	cast([DOCUMENTATIONFILENAME] as nvarchar(4000)) [DocumentationFileName],
	cast([DOCUMENTATIONOTHERTITLE] as nvarchar(4000)) [DocumentationOtherTitle],
	cast([DOCUMENTATIONFILEPATH] as nvarchar(4000)) [DocumentationFilePath]
From stg.[Auct_OtherDocumentation_Raw]
