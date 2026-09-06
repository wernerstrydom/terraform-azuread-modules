resource "azuread_application_app_role" "this" {
  allowed_member_types = var.allowed_member_types
  application_id       = var.application_id
  description          = var.description
  display_name         = var.display_name
  role_id              = var.role_id
  value                = var.value

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
