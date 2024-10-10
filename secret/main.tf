resource "oci_vault_secret" "this" {
  compartment_id = var.compartment_id
  secret_name    = var.secret_name
  vault_id       = var.vault_id
  key_id         = var.key_id
  defined_tags   = var.defined_tags
  description    = var.description
  freeform_tags  = var.freeform_tags
  metadata       = var.metadata
  dynamic "rotation_config" {
    for_each = var.rotation_config[*]
    iterator = rc
    content {
      target_system_details {
	target_system_type = rc.value.target_system_details.target_system_type
	adb_id             = rc.value.target_system_details.adb_id
	function_id        = rc.value.target_system_details.function_id
      }
      is_scheduled_rotation_enabled = rc.value.is_scheduled_rotation_enabled
      rotation_interval             = rc.value.rotation_interval
    }
  }
  dynamic "secret_content" {
    for_each = var.secret_content[*]
    iterator = sc
    content {
      content_type = sc.value.content_type
      content      = sc.value.content
      name         = sc.value.name
      stage        = sc.value.stage
    }
  }
  dynamic "secret_rules" {
    for_each = var.secret_rules[*]
    iterator = sr
    content {
      rule_type                                     = sr.value.rule_type
      is_enforced_on_deleted_secret_versions        = sr.value.is_enforced_on_deleted_secret_versions
      is_secret_content_retrieval_blocked_on_expiry = sr.value.is_secret_content_retrieval_blocked_on_expiry
      secret_version_expiry_interval                = sr.value.secret_version_expiry_interval
      time_of_absolute_expiry                       = sr.value.time_of_absolute_expiry
    }
  }
}
