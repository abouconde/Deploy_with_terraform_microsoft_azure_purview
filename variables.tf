variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure Purview account."
  type        = string
  default     = "mug-resource-group"
}

variable "purview_account_name" {
  description = "Specifies the name of the Purview account. Must be globally unique."
  type        = string
  default     = "mug-purview-account"
}

variable "location" {
  description = "Specifies the supported Azure location where the resource exists."
  default     = "southafricanorth"
}
