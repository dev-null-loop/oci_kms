output "id" {
  description = "The ID of the sign operation resource."
  value       = oci_kms_sign.this.id
}

output "signature" {
  description = "The generated cryptographic signature."
  value       = oci_kms_sign.this.signature
}
