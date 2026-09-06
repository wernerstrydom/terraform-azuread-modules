resource "azuread_application_api_access" "this" {
  api_client_id  = var.api_client_id
  application_id = var.application_id
  role_ids       = var.role_ids
  scope_ids      = var.scope_ids

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
