
  
  if object_id ('"stg"."Auct_CarArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarArchive_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarArchive_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CarArchive_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CarArchive_Inter__dbt_tmp_temp_view as
    
Select
	[CARARCHIVEID] [CarArchiveID],
	[HORSEPOWER] [Horsepower],
	[CARID] [CarID],
	cast([VIN] as nvarchar(4000)) [VIN],
	[YEAR] [Year],
	[ITEMID] [ItemID],
	[CARMAKEID] [CarMakeID],
	[CARMODELID] [CarModelID],
	[CARTYPEID] [CarTypeID],
	[CARSTYLEID] [CarStyleID],
	[CARTRIMID] [CarTrimID],
	[CARTRANSMISSIONID] [CarTransMissionID],
	[CARCONDITIONID] [CarConditionID],
	cast([ORIGINALENGINE] as nvarchar(4000)) [OriginalEngine],
	cast([EXTERIORCOLOR] as nvarchar(4000)) [ExteriorColor],
	cast([INTERIORCOLOR] as nvarchar(4000)) [InteriorColor],
	cast([INTERIORMATERIAL] as nvarchar(4000)) [InteriorMaterial],
	cast([CONDITIONDESCRIPTION] as nvarchar(4000)) [ConditionDescription],
	cast([NUMBERSMATCHING] as nvarchar(4000)) [NumbersMatching],
	cast([ORIGINALTIRES] as nvarchar(4000)) [OriginalTires],
	[TIREMANUFACTURERID] [TireManufacturerID],
	cast([FRONTTIRESIZE] as nvarchar(4000)) [FrontTireSize],
	cast([REARTIRESIZE] as nvarchar(4000)) [RearTireSize],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DRIVERSIDE] as nvarchar(4000)) [DriverSIDE],
	[AUTHENTICSTATUSID] [AuthenticStatusID],
	cast([ENGINE] as nvarchar(4000)) [Engine],
	cast([DISPLACEMENT] as nvarchar(4000)) [Displacement],
	cast([CYLINDERS] as nvarchar(4000)) [Cylinders],
	cast([HORSEPOWERTYPE] as nvarchar(4000)) [HorsepowerType],
	cast([POWERSTEERING] as nvarchar(4000)) [PowerSteering],
	cast([POWERBRAKES] as nvarchar(4000)) [PowerBrakes],
	cast([AIRCONDITIONING] as nvarchar(4000)) [AirConditioning],
	cast([OTHERFEATURE] as nvarchar(4000)) [OtherFeature],
	cast([HASHIGHPERFORMANCE] as nvarchar(4000)) [HasHighPerFormance],
	cast([HIGHPERFORMANCEDOCUMENTED] as nvarchar(4000)) [HighPerFormanceDocumented],
	cast([MAKE] as nvarchar(4000)) [Make],
	cast([MODEL] as nvarchar(4000)) [Model],
	cast([STYLE] as nvarchar(4000)) [Style],
	cast([EXTRADATA] as nvarchar(4000)) [ExtraData],
	cast([TITLEDTO] as nvarchar(4000)) [Titledto],
	cast([POWERWINDOWS] as nvarchar(4000)) [PowerWindows],
	cast([MODIFIEDBYUSERNAME] as nvarchar(4000)) [ModifiedByUserName],
	[MODIFIEDDATETIME] [ModifiedDateTime]
From stg.[Auct_CarArchive_Raw]
    ');

  CREATE TABLE "stg"."Auct_CarArchive_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarArchive_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CarArchive_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarArchive_Inter__dbt_tmp_temp_view"
    end


