data "oci_kms_vault" "this" {
  vault_id = var.vault_id
}

resource "oci_kms_key" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  key_shape {
    algorithm = var.algorithm
    length    = var.length
  }
  protection_mode     = var.protection_mode
  management_endpoint = data.oci_kms_vault.this.management_endpoint
  freeform_tags       = var.freeform_tags
}
