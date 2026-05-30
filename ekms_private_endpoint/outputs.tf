output "id" {
  description = "The OCID of the EKMS private endpoint."
  value       = oci_kms_ekms_private_endpoint.this.id
}

output "lifecycle_details" {
  description = "The details of the lifecycle state of the EKMS private endpoint."
  value       = oci_kms_ekms_private_endpoint.this.lifecycle_details
}

output "private_endpoint_ip" {
  description = "The private IP address of the EKMS private endpoint."
  value       = oci_kms_ekms_private_endpoint.this.private_endpoint_ip
}

output "state" {
  description = "The current state of the EKMS private endpoint."
  value       = oci_kms_ekms_private_endpoint.this.state
}

output "time_created" {
  description = "The date and time the EKMS private endpoint was created, expressed in RFC 3339 timestamp format."
  value       = oci_kms_ekms_private_endpoint.this.time_created
}

output "time_updated" {
  description = "The date and time the EKMS private endpoint was updated, expressed in RFC 3339 timestamp format."
  value       = oci_kms_ekms_private_endpoint.this.time_updated
}
