output "crypto_endpoint" {
  description = "The crypto endpoint of the replicated vault."
  value       = oci_kms_vault_replication.this.crypto_endpoint
}

output "id" {
  description = "The ID of the vault replication resource."
  value       = oci_kms_vault_replication.this.id
}

output "management_endpoint" {
  description = "The management endpoint of the replicated vault."
  value       = oci_kms_vault_replication.this.management_endpoint
}

output "vault_replica_status" {
  description = "The status of the vault replica."
  value       = oci_kms_vault_replication.this.vault_replica_status
}
