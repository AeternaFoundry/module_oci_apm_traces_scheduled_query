output "apm_traces_scheduled_queries_id" {
  description = "Map of id values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no id are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apm_traces_scheduled_queries_apm_domain_id" {
  description = "Map of apm_domain_id values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no apm_domain_id are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.apm_domain_id if v.apm_domain_id != null && length(v.apm_domain_id) > 0 }
}
output "apm_traces_scheduled_queries_defined_tags" {
  description = "Map of defined_tags values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no defined_tags are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "apm_traces_scheduled_queries_freeform_tags" {
  description = "Map of freeform_tags values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "apm_traces_scheduled_queries_opc_dry_run" {
  description = "Map of opc_dry_run values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no opc_dry_run are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.opc_dry_run if v.opc_dry_run != null && length(v.opc_dry_run) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_description" {
  description = "Map of scheduled_query_description values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_description are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_description if v.scheduled_query_description != null && length(v.scheduled_query_description) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_instances" {
  description = "Map of scheduled_query_instances values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_instances are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_instances if v.scheduled_query_instances != null && length(v.scheduled_query_instances) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_maximum_runtime_in_seconds" {
  description = "Map of scheduled_query_maximum_runtime_in_seconds values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_maximum_runtime_in_seconds are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_maximum_runtime_in_seconds if v.scheduled_query_maximum_runtime_in_seconds != null && length(v.scheduled_query_maximum_runtime_in_seconds) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_name" {
  description = "Map of scheduled_query_name values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_name are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_name if v.scheduled_query_name != null && length(v.scheduled_query_name) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_next_run_in_ms" {
  description = "Map of scheduled_query_next_run_in_ms values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_next_run_in_ms are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_next_run_in_ms if v.scheduled_query_next_run_in_ms != null && length(v.scheduled_query_next_run_in_ms) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_processing_configuration" {
  description = "Map of scheduled_query_processing_configuration values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_processing_configuration are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => one(v.scheduled_query_processing_configuration) if v.scheduled_query_processing_configuration != null && length(v.scheduled_query_processing_configuration) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_processing_sub_type" {
  description = "Map of scheduled_query_processing_sub_type values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_processing_sub_type are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_processing_sub_type if v.scheduled_query_processing_sub_type != null && length(v.scheduled_query_processing_sub_type) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_processing_type" {
  description = "Map of scheduled_query_processing_type values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_processing_type are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_processing_type if v.scheduled_query_processing_type != null && length(v.scheduled_query_processing_type) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_retention_criteria" {
  description = "Map of scheduled_query_retention_criteria values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_retention_criteria are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_retention_criteria if v.scheduled_query_retention_criteria != null && length(v.scheduled_query_retention_criteria) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_retention_period_in_ms" {
  description = "Map of scheduled_query_retention_period_in_ms values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_retention_period_in_ms are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_retention_period_in_ms if v.scheduled_query_retention_period_in_ms != null && length(v.scheduled_query_retention_period_in_ms) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_schedule" {
  description = "Map of scheduled_query_schedule values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_schedule are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_schedule if v.scheduled_query_schedule != null && length(v.scheduled_query_schedule) > 0 }
}
output "apm_traces_scheduled_queries_scheduled_query_text" {
  description = "Map of scheduled_query_text values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no scheduled_query_text are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.scheduled_query_text if v.scheduled_query_text != null && length(v.scheduled_query_text) > 0 }
}
output "apm_traces_scheduled_queries_state" {
  description = "Map of state values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no state are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apm_traces_scheduled_queries_system_tags" {
  description = "Map of system_tags values across all apm_traces_scheduled_queries, keyed the same as var.apm_traces_scheduled_queries except keys with no system_tags are omitted"
  value       = { for k, v in oci_apm_traces_scheduled_query.apm_traces_scheduled_queries : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}

