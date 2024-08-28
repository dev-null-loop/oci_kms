resource "oci_kms_vault_replication" "this" {
  vault_id       = var.vault_id
  replica_region = var.replica_region
}
