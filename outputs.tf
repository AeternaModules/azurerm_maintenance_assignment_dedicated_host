output "maintenance_assignment_dedicated_hosts_id" {
  description = "Map of id values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = { for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "maintenance_assignment_dedicated_hosts_dedicated_host_id" {
  description = "Map of dedicated_host_id values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = { for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : k => v.dedicated_host_id if v.dedicated_host_id != null && length(v.dedicated_host_id) > 0 }
}
output "maintenance_assignment_dedicated_hosts_location" {
  description = "Map of location values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = { for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : k => v.location if v.location != null && length(v.location) > 0 }
}
output "maintenance_assignment_dedicated_hosts_maintenance_configuration_id" {
  description = "Map of maintenance_configuration_id values across all maintenance_assignment_dedicated_hosts, keyed the same as var.maintenance_assignment_dedicated_hosts"
  value       = { for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : k => v.maintenance_configuration_id if v.maintenance_configuration_id != null && length(v.maintenance_configuration_id) > 0 }
}

