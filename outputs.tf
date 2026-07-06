output "maintenance_assignment_dedicated_hosts" {
  description = "All maintenance_assignment_dedicated_host resources"
  value       = azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts
}
output "maintenance_assignment_dedicated_hosts_dedicated_host_id" {
  description = "List of dedicated_host_id values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : v.dedicated_host_id]
}
output "maintenance_assignment_dedicated_hosts_location" {
  description = "List of location values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : v.location]
}
output "maintenance_assignment_dedicated_hosts_maintenance_configuration_id" {
  description = "List of maintenance_configuration_id values across all maintenance_assignment_dedicated_hosts"
  value       = [for k, v in azurerm_maintenance_assignment_dedicated_host.maintenance_assignment_dedicated_hosts : v.maintenance_configuration_id]
}

