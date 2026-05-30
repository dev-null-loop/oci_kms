variable "crypto_endpoint" {
  description = "(Required) The service endpoint to perform cryptographic operations against. Cryptographic operations include 'Encrypt,' 'Decrypt,', 'GenerateDataEncryptionKey', 'Sign' and 'Verify' operations. see Vault Crypto endpoint."
  type        = string
}

variable "key_id" {
  description = "(Required) The OCID of the key used to sign the message."
  type        = string
}

variable "key_version_id" {
  description = "(Required) The OCID of the key version used to sign the message."
  type        = string
}

variable "message" {
  description = "(Required) The base64-encoded binary data object denoting the message or message digest to sign. You can have a message up to 4096 bytes in size. To sign a larger message, provide the message digest."
  type        = string
}

variable "message_type" {
  description = "(Optional) Denotes whether the value of the message parameter is a raw message or a message digest. The default value, `RAW`, indicates a message. To indicate a message digest, use `DIGEST`."
  type        = string
  default     = null
}

variable "signature" {
  description = "(Required) The base64-encoded binary data object denoting the cryptographic signature generated for the message."
  type        = string
}

variable "signing_algorithm" {
  description = "(Required) The algorithm to use to sign the message or message digest. For RSA keys, supported signature schemes include PKCS #1 and RSASSA-PSS, along with different hashing algorithms. For ECDSA keys, ECDSA is the supported signature scheme with different hashing algorithms. When you pass a message digest for signing, ensure that you specify the same hashing algorithm as used when creating the message digest."
  type        = string
}
