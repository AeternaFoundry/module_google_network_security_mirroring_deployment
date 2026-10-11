resource "google_network_security_mirroring_deployment" "network_security_mirroring_deployments" {
  for_each = var.network_security_mirroring_deployments

  forwarding_rule            = each.value.forwarding_rule
  location                   = each.value.location
  mirroring_deployment_group = each.value.mirroring_deployment_group
  mirroring_deployment_id    = each.value.mirroring_deployment_id
  deletion_policy            = each.value.deletion_policy
  description                = each.value.description
  labels                     = each.value.labels
  project                    = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

