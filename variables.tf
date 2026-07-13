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
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

