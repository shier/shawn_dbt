
      
  

    insert into "DedicatedSQLpoolBJ"."stg"."Auct_Customers_Incr" ("hashValue", "effectiveTime", "ContactID", "CustomerAccountID", "Name", "EmailAddress", "Type", "ContactTypeID")
    (
        select "hashValue", "effectiveTime", "ContactID", "CustomerAccountID", "Name", "EmailAddress", "Type", "ContactTypeID"
        from "DedicatedSQLpoolBJ"."stg"."#Auct_Customers_Incr__dbt_tmp"
    );

  