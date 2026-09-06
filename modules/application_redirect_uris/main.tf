resource "azuread_application_redirect_uris" "this" {
  application_id = var.application_id
  redirect_uris  = var.redirect_uris
  type           = var.type

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
