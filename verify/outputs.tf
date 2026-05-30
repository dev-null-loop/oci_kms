output "id" {
  description = "The ID of the verify operation resource."
  value       = oci_kms_verify.this.id
}

output "is_signature_valid" {
  description = "Whether the provided signature is valid."
  value       = oci_kms_verify.this.is_signature_valid
}
