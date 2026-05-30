output "ciphertext" {
  description = "The encrypted ciphertext."
  value       = oci_kms_encrypted_data.this.ciphertext
}

output "id" {
  description = "The ID of the encrypted data operation resource."
  value       = oci_kms_encrypted_data.this.id
}
