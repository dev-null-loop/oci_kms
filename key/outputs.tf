output "current_key_version" {
  description = "The OCID of the current key version."
  value       = oci_kms_key.this.current_key_version
}

output "id" {
  description = "The OCID of the key."
  value       = oci_kms_key.this.id
}

output "is_primary" {
  description = "Whether the key is primary."
  value       = oci_kms_key.this.is_primary
}

output "state" {
  description = "The current state of the key."
  value       = oci_kms_key.this.state
}

output "time_created" {
  description = "The date and time the key was created, expressed in RFC 3339 timestamp format."
  value       = oci_kms_key.this.time_created
}

output "vault_id" {
  description = "The OCID of the vault that contains the key."
  value       = oci_kms_key.this.vault_id
}
