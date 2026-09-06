resource "azuread_service_principal" "this" {
  account_enabled               = var.account_enabled
  alternative_names             = var.alternative_names
  app_role_assignment_required  = var.app_role_assignment_required
  client_id                     = var.client_id
  description                   = var.description
  login_url                     = var.login_url
  notes                         = var.notes
  notification_email_addresses  = var.notification_email_addresses
  owners                        = var.owners
  preferred_single_sign_on_mode = var.preferred_single_sign_on_mode
  tags                          = var.tags
  use_existing                  = var.use_existing

  dynamic "feature_tags" {
    for_each = var.feature_tags == null ? [] : var.feature_tags
    content {
      custom_single_sign_on = feature_tags.value.custom_single_sign_on
      enterprise            = feature_tags.value.enterprise
      gallery               = feature_tags.value.gallery
      hide                  = feature_tags.value.hide
    }
  }

  dynamic "saml_single_sign_on" {
    for_each = var.saml_single_sign_on == null ? [] : [var.saml_single_sign_on]
    content {
      relay_state = saml_single_sign_on.value.relay_state
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

module "app_role_assignments" {
  source   = "../app_role_assignment"
  for_each = var.app_role_assignments

  resource_object_id = azuread_service_principal.this.object_id

  app_role_id         = each.value.app_role_id
  principal_object_id = each.value.principal_object_id
  timeouts            = each.value.timeouts
}
