
  
  if object_id ('"dbo"."Auct_CarArchive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarArchive_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarArchive_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarArchive_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarArchive_FromStg__dbt_tmp_temp_view as
    
Select
	cast([CarArchiveID] as int) [CarArchiveID],
	cast([Horsepower] as numeric(18,2)) [Horsepower],
	cast([CarID] as int) [CarID],
	cast([VIN] as nvarchar(4000)) [VIN],
	cast([Year] as int) [Year],
	cast([ItemID] as int) [ItemID],
	cast([CarMakeID] as int) [CarMakeID],
	cast([CarModelID] as int) [CarModelID],
	cast([CarTypeID] as int) [CarTypeID],
	cast([CarStyleID] as int) [CarStyleID],
	cast([CarTrimID] as int) [CarTrimID],
	cast([CarTransMissionID] as int) [CarTransMissionID],
	cast([CarConditionID] as int) [CarConditionID],
	cast([OriginalEngine] as nvarchar(4000)) [OriginalEngine],
	cast([ExteriorColor] as nvarchar(4000)) [ExteriorColor],
	cast([InteriorColor] as nvarchar(4000)) [InteriorColor],
	cast([InteriorMaterial] as nvarchar(4000)) [InteriorMaterial],
	cast([ConditionDescription] as nvarchar(4000)) [ConditionDescription],
	cast([NumbersMatching] as nvarchar(4000)) [NumbersMatching],
	cast([OriginalTires] as nvarchar(4000)) [OriginalTires],
	cast([TireManufacturerID] as int) [TireManufacturerID],
	cast([FrontTireSize] as nvarchar(4000)) [FrontTireSize],
	cast([RearTireSize] as nvarchar(4000)) [RearTireSize],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DriverSIDE] as nvarchar(4000)) [DriverSIDE],
	cast([AuthenticStatusID] as int) [AuthenticStatusID],
	cast([Engine] as nvarchar(4000)) [Engine],
	cast([Displacement] as nvarchar(4000)) [Displacement],
	cast([Cylinders] as nvarchar(4000)) [Cylinders],
	cast([HorsepowerType] as nvarchar(4000)) [HorsepowerType],
	cast([PowerSteering] as nvarchar(4000)) [PowerSteering],
	cast([PowerBrakes] as nvarchar(4000)) [PowerBrakes],
	cast([AirConditioning] as nvarchar(4000)) [AirConditioning],
	cast([OtherFeature] as nvarchar(4000)) [OtherFeature],
	cast([HasHighPerFormance] as nvarchar(4000)) [HasHighPerFormance],
	cast([HighPerFormanceDocumented] as nvarchar(4000)) [HighPerFormanceDocumented],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Style] as nvarchar(4000)) [Style],
	cast([ExtraData] as nvarchar(4000)) [ExtraData],
	cast([Titledto] as nvarchar(4000)) [Titledto],
	cast([PowerWindows] as nvarchar(4000)) [PowerWindows],
	cast([ModifiedByUserName] as nvarchar(4000)) [ModifiedByUserName],
	cast([ModifiedDateTime] as DATETIME) [ModifiedDateTime] 
From stg.[Auct_CarArchive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarArchive_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarArchive_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarArchive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarArchive_FromStg__dbt_tmp_temp_view"
    end


