
variable "ibmcloud_api_key" {
    default = "RSny-m0AxQchF42LAJ0bXFy-uSpbAGZnmjG4TXHXzTWx"
    description = "The names of the resource groups to be created. Please provide list of resource group names separated with comma and no spaces in between."
}

variable "iaas_classic_username" {
    default = "Muthu"
    description = "The names of the resource groups to be created. Please provide list of resource group names separated with comma and no spaces in between."
}

variable "iaas_classic_api_key" {
    default = "4888518277df5258e3a1a3a0f9007abb667d51d53debcb99c2b8ff16ee374d5f"
    description = "The names of the resource groups to be created. Please provide list of resource group names separated with comma and no spaces in between."
}


variable "admin_access_groups" {
	default = "CLOUDMANAGEMENT-ADMINS,DATA-ADMINS,APPDEV-ENVIRONMENT-ADMINS,APPDEV-ADMINS,INTEGRATION-ADMINS,BUSINESS-AUTOMATION-ADMINS"
	description = "Access group names for Administrators. Please provide list of Access Group names separated with comma and no spaces in between."
}

variable "admin_resource_groups" {
	default = "cloud-management,business-data,appdev-cloudnative,appdev-cloudnative,appdev-cloudnative,business-automation"
	description = "Resource group names for Administrators. Please provide list of Resource Group names separated with comma and no spaces in between. This list should be in correspondence with the Access Group list of Administrators."
}

variable "user_access_groups" {
	default = "APPDEV-USERS"
	description = "Access group names for Users. Please provide list of Access Group names separated with comma and no spaces in between."
}

variable "user_resource_groups" {
	default = "appdev-cloudnative"
	description = "Resource group names for Users. Please provide list of Resource Group names separated with comma and no spaces in between. This list should be in correspondence with the Access Group list of Users."
}

variable "region" {
	default = "Dallas"
	description = "The region for container-registry service. This is used while assigning policy to users access group."
}