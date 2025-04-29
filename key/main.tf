resource "oci_kms_key" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  key_shape {
    algorithm = var.key_shape.algorithm
    length    = var.key_shape.length
    curve_id  = var.key_shape.curve_id
  }
  management_endpoint = var.management_endpoint
  # auto_key_rotation_details {
  #   last_rotation_message     = var.key_auto_key_rotation_details_last_rotation_message
  #   last_rotation_status      = var.key_auto_key_rotation_details_last_rotation_status
  #   rotation_interval_in_days = var.key_auto_key_rotation_details_rotation_interval_in_days
  #   time_of_last_rotation     = var.key_auto_key_rotation_details_time_of_last_rotation
  #   time_of_next_rotation     = var.key_auto_key_rotation_details_time_of_next_rotation
  #   time_of_schedule_start    = var.key_auto_key_rotation_details_time_of_schedule_start
  # }
  defined_tags = var.defined_tags
  dynamic "external_key_reference" {
    for_each = var.external_key_id[*]
    content {
      external_key_id = var.external_key_id
    }
  }
  freeform_tags            = var.freeform_tags
  is_auto_rotation_enabled = var.is_auto_rotation_enabled
  protection_mode          = var.protection_mode
  dynamic "restore_from_object_store" {
    for_each = var.restore_from_object_store[*]
    content {
      destination = var.restore_from_object_store.destination
      bucket      = var.restore_from_object_store.bucket
      namespace   = var.restore_from_object_store.namespace
      object      = var.restore_from_object_store.object
      uri         = var.restore_from_object_store.uri
    }
  }
}
