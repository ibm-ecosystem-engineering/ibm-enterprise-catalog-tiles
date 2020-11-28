variable admin_access_groups {
  default     = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"
  description = "Access group names for Administrators. Please provide list of Access Group names separated with comma and no spaces in between."
}

variable admin_resource_groups {
  default     = "appdev-cloudnative,cloud-management,business-data,business-automation"
  description = "Resource group names for Administrators. Please provide list of Resource Group names separated with comma and no spaces in between. This list should be in correspondence with the Access Group list of Administrators."
}

variable user_access_groups {
  default     = "APPDEV-USERS"
  description = "Access group names for Users. Please provide list of Access Group names separated with comma and no spaces in between."
}

variable user_resource_groups {
  default     = "appdev-cloudnative"
  description = "Resource group names for Users. Please provide list of Resource Group names separated with comma and no spaces in between. This list should be in correspondence with the Access Group list of Users."
}

variable region {
  default     = "Dallas"
  description = "The region for container-registry service. This is used while assigning policy to users access group."
}
