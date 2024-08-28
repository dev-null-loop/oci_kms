variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment where you want to create this vault."
  type        = string
  nullable    = false
}

variable "display_name" {
  description = "(Required) (Updatable) A user-friendly name for the vault. It does not have to be unique, and it is changeable. Avoid entering confidential information."
  type        = string
  nullable    = true
}

variable "vault_type" {
  description = "(Required) The type of vault to create. Each type of vault stores the key with different degrees of isolation and has different options and pricing."
  type        = string
  default     = "DEFAULT"
  validation {
    condition     = contains(["VIRTUAL_PRIVATE", "EXTERNAL", "DEFAULT"], var.vault_type)
    error_message = "Accepted values are VIRTUAL_PRIVATE, EXTERNAL  and DEFAULT."
  }
}

variable "external_key_manager_metadata" {
  description = "(Optional) Metadata required for accessing External Key manager"
  type = object({
    external_vault_endpoint_url = string
    client_app_id               = string
    client_app_secret           = string
    idcs_account_name_url       = string
  })
  default = null
}

variable "private_endpoint_id" {
  description = "OCID of private endpoint created by customer"
  type        = string
}

variable "time_of_deletion" {
  description = "(Optional) (Updatable) An optional property for the deletion time of the vault, expressed in RFC 3339 timestamp format. Example: 2019-04-03T21:10:29.600Z"
  type        = string
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}
