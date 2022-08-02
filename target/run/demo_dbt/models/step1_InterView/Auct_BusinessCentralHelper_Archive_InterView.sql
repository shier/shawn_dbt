create view "stg"."Auct_BusinessCentralHelper_Archive_InterView__dbt_tmp" as
    
Select
	[BUSINESSCENTRALARCHIVEID] [BusinessCentralArchiveID],
	cast([BUSINESSCENTRALHELPER_METHODNAME] as nvarchar(4000)) [BusinessCentralHelper_MethodName],
	cast([BUSINESSCENTRALHELPER_PARAMETERTYPENAME] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterTypeName],
	cast([BUSINESSCENTRALHELPER_PARAMETERPAYLOAD] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterPayload],
	[INVOICEID] [InvoiceID],
	cast([BUSINESSCENTRAL_DOCUMENTNO] as nvarchar(4000)) [BusinessCentral_Documentno],
	[PROCESSED] [Processed]
From stg.[Auct_BusinessCentralHelper_Archive_Raw]
