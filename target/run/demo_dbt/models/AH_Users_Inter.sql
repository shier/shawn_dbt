
  
  if object_id ('"stg"."AH_Users_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Users_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Users_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Users_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Users_Inter__dbt_tmp_temp_view as
    
Select
	IsApproved IsApproved,
	IsLockedOut IsLockedOut,
	Newsletter NewsLetter,
	IsVerified IsVerified,
	IsActive IsActive,
	EmailConfirmed EmailConfirmed,
	PhoneNumberConfirmed PhoneNumberConfirmed,
	TwoFactorEnabled TwoFactorEnabled,
	LockoutEnabled LockOutEnabled,
	WebAPIEnabled WebapiEnabled,
	AccessFailedCount AccessfailedCount,
	Id ID,
	BillingAddressID BillingAddressID,
	BillingCreditCardID BillingCreditCardID,
	PrimaryAddressID PrimaryAddressID,
	DeletedOn Deletedon,
	LockoutEndDateUtc LockOutEndDateUTC,
	CreationDate CreationDate,
	LastLoginDate LastLoginDate,
	LastActivityDate LastActivityDate,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	cast(Comment as nvarchar(4000)) Comment,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Culture as nvarchar(4000)) Culture,
	cast(LastIP as nvarchar(4000)) Lastip,
	cast(VerificationToken as nvarchar(4000)) VerificationToken,
	cast(PasswordResetToken as nvarchar(4000)) PasswordResetToken,
	cast(UserName as nvarchar(4000)) UserName,
	cast(Email as nvarchar(4000)) Email,
	cast(Password as nvarchar(4000)) Password,
	cast(ServiceAuthorizationToken as nvarchar(4000)) ServiceAuthorizationToken,
	cast(PasswordHash as nvarchar(4000)) PasswordHash,
	cast(SecurityStamp as nvarchar(4000)) SecURItyStamp,
	cast(PhoneNumber as nvarchar(4000)) PhoneNumber
From AH_Users_Raw
    ');

  CREATE TABLE "stg"."AH_Users_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Users_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Users_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Users_Inter__dbt_tmp_temp_view"
    end

