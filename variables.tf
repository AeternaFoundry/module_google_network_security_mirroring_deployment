variable "network_security_mirroring_deployments" {
  description = <<EOT
Map of network_security_mirroring_deployments, attributes below
Required:
    - forwarding_rule
    - location
    - mirroring_deployment_group
    - mirroring_deployment_id
Optional:
    - deletion_policy
    - description
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    forwarding_rule            = string
    location                   = string
    mirroring_deployment_group = string
    mirroring_deployment_id    = string
    deletion_policy            = optional(string)
    description                = optional(string)
    labels                     = optional(map(string))
    project                    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

