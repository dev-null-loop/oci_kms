# Copyright 2023 Oracle Corporation and/or affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl
output "ekms_private_endpoint_attributes" {
  description = "ekms_private_endpoint attributes"
  value       = oci_kms_ekms_private_endpoint.this
}
