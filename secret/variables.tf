variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment where you want to create the secret."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "description" {
  description = "(Optional) (Updatable) A brief description of the secret. Avoid entering confidential information."
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "key_id" {
  description = "(Optional) The OCID of the master encryption key that is used to encrypt the secret. You must specify a symmetric key to encrypt the secret during import to the vault. You cannot encrypt secrets with asymmetric keys. Furthermore, the key must exist in the vault that you specify."
  type        = string
  default     = null
}

variable "metadata" {
  description = "(Optional) (Updatable) Additional metadata that you can use to provide context about how to use the secret during rotation or other administrative tasks. For example, for a secret that you use to connect to a database, the additional metadata might specify the connection endpoint and the connection string. Provide additional metadata as key-value pairs."
  type        = map(string)
  default     = {}
}

variable "rotation_config" {
  description = "(Optional) (Updatable) Defines the frequency of the rotation and the information about the target system"
  type = object({
    is_scheduled_rotation_enabled = optional(bool)
    rotation_interval             = optional(string)
    target_system_details = object({
      adb_id             = string
      function_id        = string
      target_system_type = string
    })
  })
  default = null
}

variable "secret_content" {
  description = "(Optional) (Updatable) The content of the secret and metadata to help identify it."
  type = object({
    content      = optional(string)
    content_type = string
    name         = optional(string)
    stage        = optional(string)
  })
  default = {
    content_type = "BASE64"
    content      = "PHZhcj4mbHQ7YmFzZTY0X2VuY29kZWRfc2VjcmV0X2NvbnRlbnRzJmd0OzwvdmFyPg=="
    name         = "name"
    stage        = "CURRENT"
  }
}

variable "secret_name" {
  description = "(Required) A user-friendly name for the secret. Secret names should be unique within a vault. Avoid entering confidential information. Valid characters are uppercase or lowercase letters, numbers, hyphens, underscores, and periods."
  type        = string
}

variable "secret_rules" {
  description = "(Optional) (Updatable) A list of rules to control how the secret is used and managed."
  type = object({
    is_enforced_on_deleted_secret_versions        = optional(bool)
    is_secret_content_retrieval_blocked_on_expiry = optional(bool)
    rule_type                                     = string
    secret_version_expiry_interval                = optional(string)
    time_of_absolute_expiry                       = optional(string)
  })
  default = null
}

variable "vault_id" {
  description = "(Required) The OCID of the vault where you want to create the secret."
  type        = string
}
