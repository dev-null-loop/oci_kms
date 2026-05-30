resource "oci_kms_verify" "this" {
  crypto_endpoint   = var.crypto_endpoint
  key_id            = var.key_id
  key_version_id    = var.key_version_id
  message           = var.message
  signature         = var.signature
  signing_algorithm = var.signing_algorithm
  message_type      = var.message_type
}
