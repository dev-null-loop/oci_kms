variable "compartment_id" {}
variable "vault_id" {}
variable "display_name" {}
variable "algorithm" {
  default  = "AES"
  nullable = false
}

variable "length" {
  default  = 32
  nullable = false
}

variable "protection_mode" {
  type    = string
  default = "SOFTWARE"
  validation {
    condition     = contains(["SOFTWARE", "HSM"], var.protection_mode)
    error_message = "Accepted values are SOFTWARE and HSM."
  }
}

variable "freeform_tags" {
  type = map(string)
  default = {
    Managedby = "Terraform"
  }
  nullable = false
}
