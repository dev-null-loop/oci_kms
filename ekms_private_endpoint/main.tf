resource "oci_kms_ekms_private_endpoint" "this" {
  ca_bundle               = var.ca_bundle
  compartment_id          = var.compartment_id
  display_name            = var.display_name
  external_key_manager_ip = var.external_key_manager_ip
  subnet_id               = var.subnet_id
  defined_tags            = var.defined_tags
  freeform_tags           = var.freeform_tags
  port                    = var.port
}
