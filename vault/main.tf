resource "oci_kms_vault" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  vault_type     = var.vault_type
  defined_tags   = var.defined_tags
  dynamic "external_key_manager_metadata" {
    for_each = var.external_key_manager_metadata[*]
    iterator = ekmm
    content {
      external_vault_endpoint_url = ekmm.value.external_vault_endpoint_url
      private_endpoint_id         = ekmm.value.private_endpoint_id
      oauth_metadata {
        client_app_id         = ekmm.value.oauth_metadata.client_app_id
        client_app_secret     = ekmm.value.oauth_metadata.client_app_secret
        idcs_account_name_url = ekmm.value.oauth_metadata.idcs_account_name_url
      }
    }
  }
  freeform_tags    = var.freeform_tags
  time_of_deletion = var.time_of_deletion
  dynamic "restore_from_object_store" {
    for_each = var.restore_from_object_store[*]
    iterator = rfos
    content {
      destination = rfos.value.destination
      bucket      = rfos.value.bucket
      namespace   = rfos.value.namespace
      object      = rfos.value.object
      uri         = rfos.value.uri
    }
  }
  dynamic "restore_from_file" {
    for_each = var.restore_from_file[*]
    iterator = rff
    content {
      restore_vault_from_file_details = rff.value.restore_vault_from_file_details
      content_length                  = rff.value.content_length
      content_md5                     = rff.value.content_md5
    }
  }
  restore_trigger = var.restore_trigger
}
