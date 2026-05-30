variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment where you want to create this vault."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"Operations.CostCenter\": \"42\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) A user-friendly name for the vault. It does not have to be unique, and it is changeable. Avoid entering confidential information."
  type        = string
}

variable "external_key_manager_metadata" {
  description = "(Optional) Metadata required for accessing External Key manager"
  type = object({
    external_vault_endpoint_url = string
    oauth_metadata = object({
      client_app_id         = string
      client_app_secret     = string
      idcs_account_name_url = string
    })
    private_endpoint_id = string
  })
  default = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm). Example: `{\"Department\": \"Finance\"}`"
  type        = map(string)
  default     = {}
}

variable "restore_from_file" {
  description = "(Optional) (Updatable) Details where vault was backed up."
  type = object({
    content_length                  = string
    content_md5                     = optional(string)
    restore_vault_from_file_details = string
  })
  default = null
}

variable "restore_from_object_store" {
  description = "(Optional) (Updatable) Details where vault was backed up"
  type = object({
    bucket      = optional(string)
    destination = string
    namespace   = optional(string)
    object      = optional(string)
    uri         = optional(string)
  })
  default = null
}

variable "restore_trigger" {
  description = "(Optional) (Updatable) An optional property when flipped triggers restore from restore option provided in config file."
  type        = bool
  default     = null
}

variable "time_of_deletion" {
  description = "(Optional) (Updatable) An optional property for the deletion time of the vault, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339) timestamp format. Example: `2019-04-03T21:10:29.600Z`"
  type        = string
  default     = null
}

variable "vault_type" {
  description = "(Required) The type of vault to create. Each type of vault stores the key with different degrees of isolation and has different options and pricing."
  type        = string
}
