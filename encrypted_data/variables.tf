variable "associated_data" {
  description = "(Optional) Information that can be used to provide an encryption context for the encrypted data. The length of the string representation of the associated data must be fewer than 4096 characters."
  type        = map(string)
  default     = {}
}

variable "crypto_endpoint" {
  description = "(Required) The service endpoint to perform cryptographic operations against. Cryptographic operations include 'Encrypt,' 'Decrypt,' and 'GenerateDataEncryptionKey' operations. see Vault Crypto endpoint."
  type        = string
}

variable "encryption_algorithm" {
  description = "(Optional) The encryption algorithm to use to encrypt and decrypt data with a customer-managed key. `AES_256_GCM` indicates that the key is a symmetric key that uses the Advanced Encryption Standard (AES) algorithm and that the mode of encryption is the Galois/Counter Mode (GCM). `RSA_OAEP_SHA_1` indicates that the key is an asymmetric key that uses the RSA encryption algorithm and uses Optimal Asymmetric Encryption Padding (OAEP). `RSA_OAEP_SHA_256` indicates that the key is an asymmetric key that uses the RSA encryption algorithm with a SHA-256 hash and uses OAEP."
  type        = string
  default     = null
}

variable "key_id" {
  description = "(Required) The OCID of the key to encrypt with."
  type        = string
}

variable "key_version_id" {
  description = "(Optional) The OCID of the key version used to encrypt the ciphertext."
  type        = string
  default     = null
}

variable "logging_context" {
  description = "(Optional) Information that provides context for audit logging. You can provide this additional data as key-value pairs to include in the audit logs when audit logging is enabled."
  type        = map(string)
  default     = {}
}

variable "plaintext" {
  description = "(Required) The plaintext data to encrypt."
  type        = string
}
