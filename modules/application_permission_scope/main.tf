resource "azuread_application_permission_scope" "this" {
  admin_consent_description  = var.admin_consent_description
  admin_consent_display_name = var.admin_consent_display_name
  application_id             = var.application_id
  scope_id                   = var.scope_id
  type                       = var.type
  user_consent_description   = var.user_consent_description
  user_consent_display_name  = var.user_consent_display_name
  value                      = var.value

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
