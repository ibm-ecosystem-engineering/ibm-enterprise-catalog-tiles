
variable "Cluster_id" {
  type        = "string"
  description = "Id of the Kubernetes/OCP  cluster"
}
variable "Name_prefix" {
  type        = "string"
  description = "The prefix name for the service. If not provided it will default to the resource group name"
  default     = ""
}
variable "Namespaces" {
  type        = "string"
  default = "default"
  description = "The Kubernetes/OCP namespace"
}
variable "Region" {
  type        = "string"
  default = "us-south"
  description = "Geographic location of the resource (e.g. us-south, us-east)"
}

variable "Resource_group" {
  type        = "string"
  default="Default"
  description = "Resource group where the cluster has been provisioned."
}
variable "AppId_plan" {
  type        = "string"
  description = "The type of plan the service instance (App ID) should run under (lite or graduated-tier)"
  default     = "graduated-tier"
}
variable "Plan" {
  type        = "string"
  description = "The type of plan the service instance (Cloudant and Cloud Object Storage) should run under (lite or standard)"
  default     = "lite"
}