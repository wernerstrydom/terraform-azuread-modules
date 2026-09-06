resource "azuread_application_identifier_uri" "this" {
  application_id = var.application_id
  identifier_uri = var.identifier_uri

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}
