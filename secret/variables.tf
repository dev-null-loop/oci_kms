variable "compartment_id" {
  description = "Compartment OCID"
  type        = string
}

variable "vault_id" {
  description = "Vault OCID"
  type        = string
}

variable "kms_key_id" {
  description = "KMS Key OCID"
  type        = string
}


variable "secret_name" {
  description = "KMS Secret name"
  type        = string
}

variable "content_type" {
  description = "KMS Secret content-type"
  type        = string
  default     = "BASE64"
}

variable "secret_content" {
  description = "KMS Secret content"
  type        = string
}

variable "content_name" {
  description = "KMS Secret content name"
  type        = string
}

variable "rule_type" {
  type    = string
  default = "SECRET_REUSE_RULE"
  validation {
    condition     = contains(["SECRET_REUSE_RULE", "SECRET_EXPIRY_RULE"], var.rule_type)
    error_message = "Accepted values are SECRET_REUSE_RULE and SECRET_EXPIRY_RULE."
  }
}

variable "secret_metadata" {
  type    = map(string)
  default = {}
}

variable "freeform_tags" {
  type = map(string)
}
