resource "azuread_application_password" "this" {
  application_id      = var.application_id
  display_name        = var.display_name
  end_date            = var.end_date
  rotate_when_changed = var.rotate_when_changed
  start_date          = var.start_date

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
