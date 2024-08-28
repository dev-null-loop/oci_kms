variable "compartment_id" {
  description = "The OCID of compartment in which the EKMS private endpoint is to be created"
  type        = string
  nullable    = false
}

variable "subnet_id" {
  description = "The OCID of subnet in which the EKMS private endpoint is to be created"
  type        = string
  nullable    = false
}

variable "ca_bundle" {
  description = "CABundle to validate TLS certificate of the external key manager system in PEM format"
  type        = string
  nullable    = false
}

variable "display_name" {
  description = "Display name of the EKMS private endpoint resource being created"
  type        = string
  nullable    = false
}

variable "external_key_manager_ip" {
  description = "External private IP to connect to from this EKMS private endpoint"
  type        = string
  nullable    = false
}

variable "port" {
  description = "The port of the external key manager system"
  type        = string
  nullable    = true
}

variable "defined_tags" {
  description = "Defined tags for this resource. Each key is predefined and scoped to a namespace"
  type        = map(string)
  nullable    = true
}

variable "freeform_tags" {
  description = "Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace"
  type        = map(string)
  nullable    = true
}
