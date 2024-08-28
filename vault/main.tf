resource "oci_kms_vault" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vault_type     = var.vault_type

  dynamic "external_key_manager_metadata" {
    iterator = ekms
    for_each = var.external_key_manager_metadata[*]
    content {
      external_vault_endpoint_url = ekms.value.external_vault_endpoint_url
      private_endpoint_id         = var.private_endpoint_id
      oauth_metadata {
	client_app_id         = ekms.value.client_app_id
	client_app_secret     = ekms.value.client_app_secret
	idcs_account_name_url = ekms.value.idcs_account_name_url
      }
    }
  }

  time_of_deletion = var.time_of_deletion
  defined_tags     = var.defined_tags
  freeform_tags    = var.freeform_tags
}
