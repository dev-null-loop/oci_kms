output "compartment_id" {
  description = "The OCID of the compartment containing the key version."
  value       = oci_kms_key_version.this.compartment_id
}

output "key_version_id" {
  description = "The OCID of the key version."
  value       = oci_kms_key_version.this.key_version_id
}

output "public_key" {
  description = "The public key for the key version, if applicable."
  value       = oci_kms_key_version.this.public_key
}

output "state" {
  description = "The current state of the key version."
  value       = oci_kms_key_version.this.state
}

output "time_created" {
  description = "The date and time the key version was created, expressed in RFC 3339 timestamp format."
  value       = oci_kms_key_version.this.time_created
}

output "vault_id" {
  description = "The OCID of the vault containing the key version."
  value       = oci_kms_key_version.this.vault_id
}
