resource "oci_vault_secret" "this" {
  compartment_id = var.compartment_id
  vault_id       = var.vault_id
  key_id         = var.kms_key_id
  secret_name    = var.secret_name
  metadata       = var.secret_metadata
  freeform_tags  = var.freeform_tags

  secret_content {
    content_type = var.content_type
    content      = try(var.secret_content, "")
    name         = try(var.content_name, "")
  }

  secret_rules {
    rule_type                              = "SECRET_REUSE_RULE"
    is_enforced_on_deleted_secret_versions = false
    #is_secret_content_retrieval_blocked_on_expiry = var.secret_secret_rules_is_secret_content_retrieval_blocked_on_expiry
    #secret_version_expiry_interval                = var.secret_secret_rules_secret_version_expiry_interval
    #time_of_absolute_expiry                       = var.secret_secret_rules_time_of_absolute_expiry
  }
}
