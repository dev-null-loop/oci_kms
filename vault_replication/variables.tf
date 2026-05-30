variable "vault_id" {
  description = "(Required) The OCID of the primary vault to create replica from."
  type        = string
}

variable "replica_region" {
  description = "(Required) (Updatable) The region to be created replica to. When updated, replica will be deleted from old region, and created to updated region."
  type        = string
}

variable "replica_vault_metadata" {
  description = "(Optional) Replica vault metadata for external vault replication."
  type = object({
    idcs_account_name_url = string
    vault_type            = string
    private_endpoint_id   = string
  })
  default = null
}
