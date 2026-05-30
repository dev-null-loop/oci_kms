resource "oci_kms_sign" "this" {
  crypto_endpoint   = var.crypto_endpoint
  key_id            = var.key_id
  message           = var.message
  signing_algorithm = var.signing_algorithm
  key_version_id    = var.key_version_id
  message_type      = var.message_type
}
