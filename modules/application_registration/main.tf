resource "azuread_application_registration" "this" {
  description                            = var.description
  display_name                           = var.display_name
  group_membership_claims                = var.group_membership_claims
  homepage_url                           = var.homepage_url
  implicit_access_token_issuance_enabled = var.implicit_access_token_issuance_enabled
  implicit_id_token_issuance_enabled     = var.implicit_id_token_issuance_enabled
  logout_url                             = var.logout_url
  marketing_url                          = var.marketing_url
  notes                                  = var.notes
  privacy_statement_url                  = var.privacy_statement_url
  requested_access_token_version         = var.requested_access_token_version
  service_management_reference           = var.service_management_reference
  sign_in_audience                       = var.sign_in_audience
  support_url                            = var.support_url
  terms_of_service_url                   = var.terms_of_service_url

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

module "passwords" {
  source   = "../application_password"
  for_each = var.passwords

  application_id = azuread_application_registration.this.id

  display_name        = each.value.display_name
  end_date            = each.value.end_date
  rotate_when_changed = each.value.rotate_when_changed
  start_date          = each.value.start_date
  timeouts            = each.value.timeouts
}

module "certificates" {
  source   = "../application_certificate"
  for_each = var.certificates

  application_id = azuread_application_registration.this.id

  encoding   = each.value.encoding
  end_date   = each.value.end_date
  key_id     = each.value.key_id
  start_date = each.value.start_date
  type       = each.value.type
  value      = each.value.value
  timeouts   = each.value.timeouts
}

module "federated_identity_credentials" {
  source   = "../application_federated_identity_credential"
  for_each = var.federated_identity_credentials

  application_id = azuread_application_registration.this.id

  audiences    = each.value.audiences
  description  = each.value.description
  display_name = each.value.display_name
  issuer       = each.value.issuer
  subject      = each.value.subject
  timeouts     = each.value.timeouts
}

module "owners" {
  source   = "../application_owner"
  for_each = var.owners

  application_id = azuread_application_registration.this.id

  owner_object_id = each.value.owner_object_id
  timeouts        = each.value.timeouts
}

module "permission_scopes" {
  source   = "../application_permission_scope"
  for_each = var.permission_scopes

  application_id = azuread_application_registration.this.id

  admin_consent_description  = each.value.admin_consent_description
  admin_consent_display_name = each.value.admin_consent_display_name
  scope_id                   = each.value.scope_id
  type                       = each.value.type
  user_consent_description   = each.value.user_consent_description
  user_consent_display_name  = each.value.user_consent_display_name
  value                      = each.value.value
  timeouts                   = each.value.timeouts
}

module "app_roles" {
  source   = "../application_app_role"
  for_each = var.app_roles

  application_id = azuread_application_registration.this.id

  allowed_member_types = each.value.allowed_member_types
  description          = each.value.description
  display_name         = each.value.display_name
  role_id              = each.value.role_id
  value                = each.value.value
  timeouts             = each.value.timeouts
}

module "api_access" {
  source   = "../application_api_access"
  for_each = var.api_access

  application_id = azuread_application_registration.this.id

  api_client_id = each.value.api_client_id
  role_ids      = each.value.role_ids
  scope_ids     = each.value.scope_ids
  timeouts      = each.value.timeouts
}

module "identifier_uris" {
  source   = "../application_identifier_uri"
  for_each = var.identifier_uris

  application_id = azuread_application_registration.this.id

  identifier_uri = each.value.identifier_uri
  timeouts       = each.value.timeouts
}

module "redirect_uris" {
  source   = "../application_redirect_uris"
  for_each = var.redirect_uris

  application_id = azuread_application_registration.this.id

  redirect_uris = each.value.redirect_uris
  type          = each.value.type
  timeouts      = each.value.timeouts
}

module "service_principals" {
  source   = "../service_principal"
  for_each = var.service_principals

  client_id = azuread_application_registration.this.client_id

  account_enabled               = each.value.account_enabled
  alternative_names             = each.value.alternative_names
  app_role_assignment_required  = each.value.app_role_assignment_required
  description                   = each.value.description
  login_url                     = each.value.login_url
  notes                         = each.value.notes
  notification_email_addresses  = each.value.notification_email_addresses
  owners                        = each.value.owners
  preferred_single_sign_on_mode = each.value.preferred_single_sign_on_mode
  tags                          = each.value.tags
  use_existing                  = each.value.use_existing
  feature_tags                  = each.value.feature_tags
  saml_single_sign_on           = each.value.saml_single_sign_on
  timeouts                      = each.value.timeouts
  app_role_assignments          = each.value.app_role_assignments
}
