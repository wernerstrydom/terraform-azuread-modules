resource "azuread_application_certificate" "this" {
  application_id = var.application_id
  encoding       = var.encoding
  end_date       = var.end_date
  key_id         = var.key_id
  start_date     = var.start_date
  type           = var.type
  value          = var.value

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
