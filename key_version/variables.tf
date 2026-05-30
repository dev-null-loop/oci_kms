variable "external_key_version_id" {
  description = "(Optional) Key version ID associated with the external key."
  type        = string
  default     = null
}

variable "key_id" {
  description = "(Required) The OCID of the key."
  type        = string
}

variable "management_endpoint" {
  description = "(Required) The service endpoint to perform management operations against. Management operations include 'Create,' 'Update,' 'List,' 'Get,' and 'Delete' operations. See Vault Management endpoint."
  type        = string
}

variable "time_of_deletion" {
  description = "(Optional) (Updatable) An optional property for the deletion time of the key version, expressed in [RFC 3339](https://tools.ietf.org/html/rfc3339) timestamp format. Example: `2019-04-03T21:10:29.600Z`"
  type        = string
  default     = null
}
