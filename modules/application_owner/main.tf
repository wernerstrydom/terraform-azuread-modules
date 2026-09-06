resource "azuread_application_owner" "this" {
  application_id  = var.application_id
  owner_object_id = var.owner_object_id

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}
