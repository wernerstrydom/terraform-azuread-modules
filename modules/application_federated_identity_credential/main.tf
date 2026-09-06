resource "azuread_application_federated_identity_credential" "this" {
  application_id = var.application_id
  audiences      = var.audiences
  description    = var.description
  display_name   = var.display_name
  issuer         = var.issuer
  subject        = var.subject

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}
