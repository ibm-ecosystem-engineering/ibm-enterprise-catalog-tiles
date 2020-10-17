variable admin_access_groups{
	default = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"
	description = "The list of Access Group names of Administrators to which all the users mentioned in the field \"admin_ids\" have to be added . Please provide Access Group names in a list separated with comma and no spaces in between."
}

variable user_access_groups{
	default = "APPDEV-USERS"
	description = "The list of Access Group names of Users to which all the users mentioned in the field \"user_ids\" have to be added . Please provide Access Group names in a list separated with comma and no spaces in between."
}

variable admin_ids{
    default = "abc@example.com,xyz@example.com"
	description = "The list of user IDs to be added for the Administrators Access Group. Please provide user IDs in a list separated with comma and no spaces in between."
}

variable user_ids{
    default = "pqr@example.com,tuv@example.com"
	description = "The list of user IDs to be added for the Users Access Group. Please provide user IDs in a list separated with comma and no spaces in between."
}