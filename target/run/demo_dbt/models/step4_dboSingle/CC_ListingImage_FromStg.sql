
  
  if object_id ('"dbo"."CC_ListingImage_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImage_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingImage_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingImage_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingImage_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([Hashorig] as nvarchar(4000)) [Hashorig],
	cast([Computedsrcset] as nvarchar(4000)) [Computedsrcset],
	cast([URLThuMbnailwIDE] as nvarchar(4000)) [URLThuMbnailwIDE],
	cast([URLsrcsetretinaxs] as nvarchar(4000)) [URLsrcsetretinaxs],
	cast([URLsrcsetretinasm] as nvarchar(4000)) [URLsrcsetretinasm],
	cast([URLsrcsetretinamd] as nvarchar(4000)) [URLsrcsetretinamd],
	cast([URLsrcsetretinalg] as nvarchar(4000)) [URLsrcsetretinalg],
	cast([URLsrcsetretinaxl] as nvarchar(4000)) [URLsrcsetretinaxl],
	cast([URLsrcsetretinaxxl] as nvarchar(4000)) [URLsrcsetretinaxxl],
	cast([URLsrcsetsm] as nvarchar(4000)) [URLsrcsetsm],
	cast([URLsrcsetmd] as nvarchar(4000)) [URLsrcsetmd],
	cast([URLsrcsetlg] as nvarchar(4000)) [URLsrcsetlg],
	cast([URLsrcsetxl] as nvarchar(4000)) [URLsrcsetxl],
	cast([URLsrcsetxxl] as nvarchar(4000)) [URLsrcsetxxl],
	cast([URLsrcsetretinaxxs] as nvarchar(4000)) [URLsrcsetretinaxxs],
	cast([URLCarouselCompressed] as nvarchar(4000)) [URLCarouselCompressed],
	cast([URLjumboCompressed] as nvarchar(4000)) [URLjumboCompressed],
	cast([URLThuMbnailCompressed] as nvarchar(4000)) [URLThuMbnailCompressed],
	cast([URLstandardCompressed] as nvarchar(4000)) [URLstandardCompressed],
	cast([URLsrcsetxxs] as nvarchar(4000)) [URLsrcsetxxs],
	cast([URLsrcsetxs] as nvarchar(4000)) [URLsrcsetxs],
	cast([URLorig] as nvarchar(4000)) [URLorig],
	cast([URLstandard] as nvarchar(4000)) [URLstandard],
	cast([URLThuMbnail] as nvarchar(4000)) [URLThuMbnail],
	cast([URLjumbo] as nvarchar(4000)) [URLjumbo],
	cast([FullURL] as nvarchar(4000)) [FullURL],
	cast([URLCarousel] as nvarchar(4000)) [URLCarousel],
	cast([ListingID] as int) [ListingID],
	cast([ListingImageTypeID] as int) [ListingImageTypeID],
	cast([Sequence] as int) [Sequence],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([LetterBox] as bit) [LetterBox],
	cast([UseCompressedImages] as bit) [UseCompressedImages],
	cast([SrcsetComputed] as bit) [SrcsetComputed] 
From stg.[CC_ListingImage_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingImage_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingImage_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingImage_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImage_FromStg__dbt_tmp_temp_view"
    end

