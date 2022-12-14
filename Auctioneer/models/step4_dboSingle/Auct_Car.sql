{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarID] as int) [CARID],
	cast([VIN] as nvarchar(200)) [VIN],
	cast([Year] as int) [YEAR],
	cast([ItemID] as int) [ITEMID],
	cast([CarMakeID] as int) [CARMAKEID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarTypeID] as int) [CARTYPEID],
	cast([CarStyleID] as int) [CARSTYLEID],
	cast([CarTrimID] as int) [CARTRIMID],
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([CarConditionID] as int) [CARCONDITIONID],
	cast([OriginalEngine] as char(1)) [ORIGINALENGINE],
	cast([ExteriorColor] as nvarchar(50)) [EXTERIORCOLOR],
	cast([InteriorColor] as nvarchar(50)) [INTERIORCOLOR],
	cast([InteriorMaterial] as nvarchar(50)) [INTERIORMATERIAL],
	cast([ConditionDescription] as varchar(8000)) [CONDITIONDESCRIPTION],
	cast([NumbersMatching] as char) [NUMBERSMATCHING],
	cast([OriginalTires] as char(1)) [ORIGINALTIRES],
	cast([TireManufacturerID] as int) [TIREMANUFACTURERID],
	cast([FrontTireSize] as varchar(32)) [FRONTTIRESIZE],
	cast([RearTireSize] as varchar(32)) [REARTIRESIZE],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DriverSIDE] as char(1)) [DRIVERSIDE],
	cast([AuthenticStatusID] as int) [AUTHENTICSTATUSID],
	cast([Engine] as nvarchar(50)) [ENGINE],
	cast([Displacement] as varchar(30)) [DISPLACEMENT],
	cast([Cylinders] as varchar(30)) [CYLINDERS],
	cast([HorsepowerType] as char(1)) [HORSEPOWERTYPE],
	cast([PowerSteering] as bit) [POWERSTEERING],
	cast([PowerBrakes] as bit) [POWERBRAKES],
	cast([AirConditioning] as bit) [AIRCONDITIONING],
	cast([OtherFeature] as varchar(8000)) [OTHERFEATURE],
	cast([HasHighPerFormance] as char(1)) [HASHIGHPERFORMANCE],
	cast([HighPerFormanceDocumented] as char(1)) [HIGHPERFORMANCEDOCUMENTED],
	cast([Make] as nvarchar(1000)) [MAKE],
	cast([Model] as nvarchar(1000)) [MODEL],
	cast([Style] as nvarchar(1000)) [STYLE],
	cast([ExtraData] as varchar(8000)) [EXTRADATA],
	cast([Titledto] as varchar(8000)) [TITLEDTO],
	cast([PowerWindows] as bit) [POWERWINDOWS],
	cast([ModifiedByUserName] as varchar(1000)) [MODIFIEDBYUSERNAME],
	cast([ModifiedDateTime] as datetime) [MODIFIEDDATETIME],
	cast([Mileage] as int) [MILEAGE],
	cast([CheckinMileage] as int) [CHECKINMILEAGE],
	cast([Horsepower] as numeric(18,2)) [HORSEPOWER] 
From stg.[Auct_Car_FinalView]