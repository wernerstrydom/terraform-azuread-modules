resource "azuread_group" "this" {
  administrative_unit_ids    = var.administrative_unit_ids
  assignable_to_role         = var.assignable_to_role
  auto_subscribe_new_members = var.auto_subscribe_new_members
  behaviors                  = var.behaviors
  description                = var.description
  display_name               = var.display_name
  external_senders_allowed   = var.external_senders_allowed
  hide_from_address_lists    = var.hide_from_address_lists
  hide_from_outlook_clients  = var.hide_from_outlook_clients
  mail_enabled               = var.mail_enabled
  mail_nickname              = var.mail_nickname
  members                    = var.members
  onpremises_group_type      = var.onpremises_group_type
  owners                     = var.owners
  prevent_duplicate_names    = var.prevent_duplicate_names
  provisioning_options       = var.provisioning_options
  security_enabled           = var.security_enabled
  theme                      = var.theme
  types                      = var.types
  visibility                 = var.visibility
  writeback_enabled          = var.writeback_enabled

  dynamic "dynamic_membership" {
    for_each = var.dynamic_membership == null ? [] : [var.dynamic_membership]
    content {
      enabled = dynamic_membership.value.enabled
      rule    = dynamic_membership.value.rule
    }
  }

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

module "group_members" {
  source   = "../group_member"
  for_each = var.group_members

  group_object_id = azuread_group.this.object_id

  member_object_id = each.value.member_object_id
  timeouts         = each.value.timeouts
}
