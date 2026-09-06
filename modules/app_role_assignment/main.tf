resource "azuread_app_role_assignment" "this" {
  app_role_id         = var.app_role_id
  principal_object_id = var.principal_object_id
  resource_object_id  = var.resource_object_id

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}
