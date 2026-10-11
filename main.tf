resource "oci_apm_traces_scheduled_query" "apm_traces_scheduled_queries" {
  for_each = var.apm_traces_scheduled_queries

  apm_domain_id                              = each.value.apm_domain_id
  defined_tags                               = each.value.defined_tags
  freeform_tags                              = each.value.freeform_tags
  opc_dry_run                                = each.value.opc_dry_run
  scheduled_query_description                = each.value.scheduled_query_description
  scheduled_query_maximum_runtime_in_seconds = each.value.scheduled_query_maximum_runtime_in_seconds
  scheduled_query_name                       = each.value.scheduled_query_name
  scheduled_query_processing_sub_type        = each.value.scheduled_query_processing_sub_type
  scheduled_query_processing_type            = each.value.scheduled_query_processing_type
  scheduled_query_retention_criteria         = each.value.scheduled_query_retention_criteria
  scheduled_query_retention_period_in_ms     = each.value.scheduled_query_retention_period_in_ms
  scheduled_query_schedule                   = each.value.scheduled_query_schedule
  scheduled_query_text                       = each.value.scheduled_query_text

  dynamic "scheduled_query_processing_configuration" {
    for_each = each.value.scheduled_query_processing_configuration != null ? [each.value.scheduled_query_processing_configuration] : []
    content {
      dynamic "custom_metric" {
        for_each = scheduled_query_processing_configuration.value.custom_metric != null ? [scheduled_query_processing_configuration.value.custom_metric] : []
        content {
          compartment                  = custom_metric.value.compartment
          description                  = custom_metric.value.description
          is_anomaly_detection_enabled = custom_metric.value.is_anomaly_detection_enabled
          is_metric_published          = custom_metric.value.is_metric_published
          name                         = custom_metric.value.name
          namespace                    = custom_metric.value.namespace
          resource_group               = custom_metric.value.resource_group
          unit                         = custom_metric.value.unit
        }
      }
      dynamic "object_storage" {
        for_each = scheduled_query_processing_configuration.value.object_storage != null ? [scheduled_query_processing_configuration.value.object_storage] : []
        content {
          bucket             = object_storage.value.bucket
          name_space         = object_storage.value.name_space
          object_name_prefix = object_storage.value.object_name_prefix
        }
      }
      dynamic "streaming" {
        for_each = scheduled_query_processing_configuration.value.streaming != null ? [scheduled_query_processing_configuration.value.streaming] : []
        content {
          stream_id = streaming.value.stream_id
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

