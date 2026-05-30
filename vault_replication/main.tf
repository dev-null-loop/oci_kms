resource "oci_kms_vault_replication" "this" {
  vault_id       = var.vault_id
  replica_region = var.replica_region
  dynamic "replica_vault_metadata" {
    for_each = var.replica_vault_metadata[*]
    iterator = rvm
    content {
      idcs_account_name_url = rvm.value.idcs_account_name_url
      vault_type            = rvm.value.vault_type
      private_endpoint_id   = rvm.value.private_endpoint_id
    }
  }
}
