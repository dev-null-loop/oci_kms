resource "oci_kms_key_version" "this" {
  key_id                  = var.key_id
  management_endpoint     = var.management_endpoint
  external_key_version_id = var.external_key_version_id
  time_of_deletion        = var.time_of_deletion
}
