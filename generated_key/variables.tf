variable "associated_data" {
  description = "(Optional) Information that can be used to provide an encryption context for the encrypted data. The length of the string representation of the associated data must be fewer than 4096 characters."
  type        = map(string)
  default     = {}
}

variable "crypto_endpoint" {
  description = "(Required) The service endpoint to perform cryptographic operations against. Cryptographic operations include 'Encrypt,' 'Decrypt,' and 'GenerateDataEncryptionKey' operations. see Vault Crypto endpoint."
  type        = string
}

variable "include_plaintext_key" {
  description = "(Required) If true, the generated key is also returned unencrypted."
  type        = bool
}

variable "key_id" {
  description = "(Required) The OCID of the master encryption key to encrypt the generated data encryption key with."
  type        = string
}

variable "key_shape" {
  description = "(Required) The cryptographic properties of a key."
  type = object({
    algorithm = string
    curve_id  = optional(string)
    length    = number
  })
}

variable "logging_context" {
  description = "(Optional) Information that provides context for audit logging. You can provide this additional data by formatting it as key-value pairs to include in audit logs when audit logging is enabled."
  type        = map(string)
  default     = {}
}
