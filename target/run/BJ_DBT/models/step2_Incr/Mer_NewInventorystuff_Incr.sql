
      
  

    insert into "BJAC_DW_PROD"."stg"."Mer_NewInventorystuff_Incr" ("hashValue", "effectiveTime", "No_", "No_2", "Description", "Description_2", "Base_Unit_Of_Measure", "Item_Category_Code", "Unit_Price")
    (
        select "hashValue", "effectiveTime", "No_", "No_2", "Description", "Description_2", "Base_Unit_Of_Measure", "Item_Category_Code", "Unit_Price"
        from "BJAC_DW_PROD"."stg"."#Mer_NewInventorystuff_Incr__dbt_tmp"
    );

  