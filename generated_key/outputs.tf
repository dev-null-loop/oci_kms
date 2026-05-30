output "ciphertext" {
  description = "The encrypted generated key."
  value       = oci_kms_generated_key.this.ciphertext
}

output "id" {
  description = "The ID of the generated key operation resource."
  value       = oci_kms_generated_key.this.id
}

output "plaintext" {
  description = "The generated plaintext key, if requested."
  value       = oci_kms_generated_key.this.plaintext
}

output "plaintext_checksum" {
  description = "The checksum of the plaintext key."
  value       = oci_kms_generated_key.this.plaintext_checksum
}
