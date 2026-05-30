resource "oci_kms_key" "this" {
  compartment_id = var.compartment_id
  display_name   = var.display_name
  key_shape {
    algorithm = var.key_shape.algorithm
    length    = var.key_shape.length
    curve_id  = var.key_shape.curve_id
  }
  management_endpoint = var.management_endpoint
  dynamic "auto_key_rotation_details" {
    for_each = var.auto_key_rotation_details[*]
    iterator = akrd
    content {
      last_rotation_message     = akrd.value.last_rotation_message
      last_rotation_status      = akrd.value.last_rotation_status
      rotation_interval_in_days = akrd.value.rotation_interval_in_days
      time_of_last_rotation     = akrd.value.time_of_last_rotation
      time_of_next_rotation     = akrd.value.time_of_next_rotation
      time_of_schedule_start    = akrd.value.time_of_schedule_start
    }
  }
  defined_tags = var.defined_tags
  dynamic "external_key_reference" {
    for_each = var.external_key_reference[*]
    iterator = ekr
    content {
      external_key_id = ekr.value.external_key_id
    }
  }
  freeform_tags            = var.freeform_tags
  is_auto_rotation_enabled = var.is_auto_rotation_enabled
  protection_mode          = var.protection_mode
  desired_state            = var.desired_state
  time_of_deletion         = var.time_of_deletion
  dynamic "restore_from_object_store" {
    for_each = var.restore_from_object_store[*]
    iterator = rfos
    content {
      destination = rfos.value.destination
      bucket      = rfos.value.bucket
      namespace   = rfos.value.namespace
      object      = rfos.value.object
      uri         = rfos.value.uri
    }
  }
  dynamic "restore_from_file" {
    for_each = var.restore_from_file[*]
    iterator = rff
    content {
      restore_key_from_file_details = rff.value.restore_key_from_file_details
      content_length                = rff.value.content_length
      content_md5                   = rff.value.content_md5
    }
  }
  restore_trigger = var.restore_trigger
}
