variable catalog_name {
  type        = string
  description = "Provide the private catalog name that needs the IBM Lite Services Enabled"
}

variable resource_group {
  type        = string
  default     = "default"
  description = "Provide the resource group"
}

variable region {
  type          = string
  default       = "eu-gb"
  description   = "Geographic location of the resource"
}

variable ibmcloud_api_key {
  type        = string
  description = "Provide the IBMCloud access APIkey for enabling the IBM Lite Services"
}