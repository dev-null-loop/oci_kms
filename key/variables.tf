variable "compartment_id" {
  description = "(Required) (Updatable) The OCID of the compartment where you want to create the master encryption key."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) A user-friendly name for the key. It does not have to be unique, and it is changeable. Avoid entering confidential information."
  type        = string
}

variable "external_key_id" {
  description = "(Required) ExternalKeyId refers to the globally unique key Id associated with the key created in external vault in CTM"
  type        = string
  default     = null
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace. For more information, see [Resource Tags](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/resourcetags.htm)."
  type        = map(string)
  default     = {}
}

variable "is_auto_rotation_enabled" {
  description = "(Optional) (Updatable) A parameter specifying whether the auto key rotation is enabled or not."
  type        = bool
  default     = true
}

variable "key_shape" {
  description = "(Required) The cryptographic properties of a key."
  type = object({
    algorithm = string
    curve_id  = optional(string)
    length    = number
  })
}

variable "management_endpoint" {
  description = "(Required) The service endpoint to perform management operations against. Management operations include 'Create,' 'Update,' 'List,' 'Get,' and 'Delete' operations. See Vault Management endpoint."
  type        = string
}

variable "protection_mode" {
  description = "(Optional) The key's protection mode indicates how the key persists and where cryptographic operations that use the key are performed. A protection mode of `HSM` means that the key persists on a hardware security module (HSM) and all cryptographic operations are performed inside the HSM. A protection mode of `SOFTWARE` means that the key persists on the server, protected by the vault's RSA wrapping key which persists on the HSM. All cryptographic operations that use a key with a protection mode of `SOFTWARE` are performed on the server. By default, a key's protection mode is set to `HSM`. You can't change a key's protection mode after the key is created or imported. A protection mode of `EXTERNAL` mean that the key persists on the customer's external key manager which is hosted externally outside of oracle. Oracle only hold a reference to that key. All cryptographic operations that use a key with a protection mode of `EXTERNAL` are performed by external key manager."
  type        = string
  default     = "SOFTWARE"
  validation {
    condition     = contains(["SOFTWARE", "HSM"], var.protection_mode)
    error_message = "Accepted values are SOFTWARE and HSM."
  }
}

variable "restore_from_object_store" {
  description = "(Optional) (Updatable) Details where key was backed up"
  type = object({
    bucket      = optional(string)
    destination = string
    namespace   = optional(string)
    object      = optional(string)
    uri         = optional(string)
  })
  default = null
}
