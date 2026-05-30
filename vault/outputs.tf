output "crypto_endpoint" {
  description = "The crypto endpoint of the vault."
  value       = oci_kms_vault.this.crypto_endpoint
}

output "id" {
  description = "The OCID of the vault."
  value       = oci_kms_vault.this.id
}

output "is_primary" {
  description = "Whether the vault is primary."
  value       = oci_kms_vault.this.is_primary
}

output "management_endpoint" {
  description = "The management endpoint of the vault."
  value       = oci_kms_vault.this.management_endpoint
}

output "state" {
  description = "The current state of the vault."
  value       = oci_kms_vault.this.state
}

output "time_created" {
  description = "The date and time the vault was created, expressed in RFC 3339 timestamp format."
  value       = oci_kms_vault.this.time_created
}
