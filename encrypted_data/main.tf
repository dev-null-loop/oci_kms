resource "oci_kms_encrypted_data" "this" {
  crypto_endpoint      = var.crypto_endpoint
  key_id               = var.key_id
  plaintext            = var.plaintext
  associated_data      = var.associated_data
  encryption_algorithm = var.encryption_algorithm
  key_version_id       = var.key_version_id
  logging_context      = var.logging_context
}
