resource "oci_kms_ekms_private_endpoint" "this" {
  compartment_id          = var.compartment_id
  subnet_id               = var.subnet_id
  ca_bundle               = var.ca_bundle
  display_name            = var.display_name
  external_key_manager_ip = var.external_key_manager_ip
  port                    = var.port
  defined_tags            = var.defined_tags
  freeform_tags           = var.freeform_tags
}
