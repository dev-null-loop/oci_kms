variable "vault_id" {
  description = "(Required) The OCID of the primary vault to create replica from."
  type        = string
}

variable "replica_region" {
  description = "(Required) (Updatable) The region to be created replica to. When updated, replica will be deleted from old region, and created to updated region."
  type        = string
}
