variable "apm_traces_scheduled_queries" {
  description = <<EOT
Map of apm_traces_scheduled_queries, attributes below
Required:
    - apm_domain_id
Optional:
    - defined_tags
    - freeform_tags
    - opc_dry_run
    - scheduled_query_description
    - scheduled_query_maximum_runtime_in_seconds
    - scheduled_query_name
    - scheduled_query_processing_sub_type
    - scheduled_query_processing_type
    - scheduled_query_retention_criteria
    - scheduled_query_retention_period_in_ms
    - scheduled_query_schedule
    - scheduled_query_text
    - scheduled_query_processing_configuration (block):
        - custom_metric (optional, block):
            - compartment (optional)
            - description (optional)
            - is_anomaly_detection_enabled (optional)
            - is_metric_published (optional)
            - name (required)
            - namespace (optional)
            - resource_group (optional)
            - unit (optional)
        - object_storage (optional, block):
            - bucket (optional)
            - name_space (optional)
            - object_name_prefix (optional)
        - streaming (optional, block):
            - stream_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    apm_domain_id                              = string
    defined_tags                               = optional(map(string))
    freeform_tags                              = optional(map(string))
    opc_dry_run                                = optional(string)
    scheduled_query_description                = optional(string)
    scheduled_query_maximum_runtime_in_seconds = optional(string)
    scheduled_query_name                       = optional(string)
    scheduled_query_processing_sub_type        = optional(string)
    scheduled_query_processing_type            = optional(string)
    scheduled_query_retention_criteria         = optional(string)
    scheduled_query_retention_period_in_ms     = optional(string)
    scheduled_query_schedule                   = optional(string)
    scheduled_query_text                       = optional(string)
    scheduled_query_processing_configuration = optional(object({
      custom_metric = optional(object({
        compartment                  = optional(string)
        description                  = optional(string)
        is_anomaly_detection_enabled = optional(bool)
        is_metric_published          = optional(bool)
        name                         = string
        namespace                    = optional(string)
        resource_group               = optional(string)
        unit                         = optional(string)
      }))
      object_storage = optional(object({
        bucket             = optional(string)
        name_space         = optional(string)
        object_name_prefix = optional(string)
      }))
      streaming = optional(object({
        stream_id = optional(string)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

