resource "oci_kms_generated_key" "this" {
  crypto_endpoint       = var.crypto_endpoint
  include_plaintext_key = var.include_plaintext_key
  key_id                = var.key_id
  key_shape {
    algorithm = var.key_shape.algorithm
    length    = var.key_shape.length
    curve_id  = var.key_shape.curve_id
  }
  associated_data = var.associated_data
  logging_context = var.logging_context
}
