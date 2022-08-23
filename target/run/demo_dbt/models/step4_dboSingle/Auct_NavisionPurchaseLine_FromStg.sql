
  
  if object_id ('"dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view as
    
Select
	cast([DocumentType] as int) [DocumentType],
	cast([AuctionDocumentno] as nvarchar(4000)) [AuctionDocumentno],
	cast([Lneno] as int) [Lneno],
	cast([Type] as int) [Type],
	cast([No] as nvarchar(4000)) [No],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([Quantity] as int) [Quantity],
	cast([DirectUnitcostexclTax] as int) [DirectUnitcostexclTax],
	cast([Status] as int) [Status],
	cast([StatusMessage] as nvarchar(4000)) [StatusMessage],
	cast([Globaldim1Code] as nvarchar(4000)) [Globaldim1Code],
	cast([Globaldim2Code] as nvarchar(4000)) [Globaldim2Code],
	cast([ShortCutdim4Code] as nvarchar(4000)) [ShortCutdim4Code],
	cast([ShortCutdim5Code] as nvarchar(4000)) [ShortCutdim5Code],
	cast([ShortCutdim8Code] as nvarchar(4000)) [ShortCutdim8Code],
	cast([ShortCutdim3Code] as nvarchar(4000)) [ShortCutdim3Code],
	cast([BusinessUnit] as nvarchar(4000)) [BusinessUnit],
	cast([WrotetoNavision] as int) [WrotetoNavision] 
From stg.[Auct_NavisionPurchaseLine_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavisionPurchaseLine_FromStg__dbt_tmp_temp_view"
    end

