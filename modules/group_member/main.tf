resource "azuread_group_member" "this" {
  group_object_id  = var.group_object_id
  member_object_id = var.member_object_id

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}
