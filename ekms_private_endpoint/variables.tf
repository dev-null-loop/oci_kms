variable "ca_bundle" {
  description = "(Required) CABundle to validate TLS certificate of the external key manager system in PEM format"
  type        = string
}

variable "compartment_id" {
  description = "(Required) Compartment identifier."
  type        = string
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Usage of predefined tag keys. These predefined keys are scoped to namespaces. Example: `{\"foo-namespace.bar-key\": \"value\"}`"
  type        = map(string)
  default     = null
}

variable "display_name" {
  description = "(Required) (Updatable) Display name of the EKMS private endpoint resource being created."
  type        = string
}

variable "external_key_manager_ip" {
  description = "(Required) External private IP to connect to from this EKMS private endpoint"
  type        = string
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Simple key-value pair that is applied without any predefined name, type, or scope. Exists for cross-compatibility only. Example: `{\"bar-key\": \"value\"}`"
  type        = map(string)
  default     = {}
}

variable "port" {
  description = "(Optional) The port of the external key manager system"
  type        = number
  default     = null
}

variable "subnet_id" {
  description = "(Required) The OCID of subnet in which the EKMS private endpoint is to be created"
  type        = string
}
