variable "maintenance_assignment_dedicated_hosts" {
  description = <<EOT
Map of maintenance_assignment_dedicated_hosts, attributes below
Required:
    - dedicated_host_id
    - location
    - maintenance_configuration_id
EOT

  type = map(object({
    dedicated_host_id            = string
    location                     = string
    maintenance_configuration_id = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_maintenance_assignment_dedicated_host's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: maintenance_configuration_id
  #   source:    [from maintenanceconfigurations.ValidateMaintenanceConfigurationID] !ok
  # path: maintenance_configuration_id
  #   source:    [from maintenanceconfigurations.ValidateMaintenanceConfigurationID] err != nil
  # path: dedicated_host_id
  #   source:    [from commonids.ValidateDedicatedHostID] !ok
  # path: dedicated_host_id
  #   source:    [from commonids.ValidateDedicatedHostID] err != nil
}

