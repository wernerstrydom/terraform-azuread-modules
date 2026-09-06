output "api_access" {
  value = module.api_access
}

output "app_roles" {
  value = module.app_roles
}

output "certificates" {
  value     = module.certificates
  sensitive = true
}

output "client_id" {
  description = "The Client ID (also called Application ID)"
  value       = azuread_application_registration.this.client_id
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "description" {
  description = "Description of the application as shown to end users"
  value       = azuread_application_registration.this.description
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "disabled_by_microsoft" {
  description = "If the application has been disabled by Microsoft, this shows the status or reason"
  value       = azuread_application_registration.this.disabled_by_microsoft
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "display_name" {
  description = "The display name for the application"
  value       = azuread_application_registration.this.display_name
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "federated_identity_credentials" {
  value = module.federated_identity_credentials
}

output "group_membership_claims" {
  description = "Configures the `groups` claim that the app expects issued in a user or OAuth access token"
  value       = azuread_application_registration.this.group_membership_claims
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "homepage_url" {
  description = "URL of the home page for the application"
  value       = azuread_application_registration.this.homepage_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "id" {
  description = "The Terraform resource ID for the application, for use when referencing this resource in your Terraform configuration."
  value       = azuread_application_registration.this.id
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "identifier_uris" {
  value = module.identifier_uris
}

output "implicit_access_token_issuance_enabled" {
  description = "Whether this application can request an access token using OAuth implicit flow"
  value       = azuread_application_registration.this.implicit_access_token_issuance_enabled
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "implicit_id_token_issuance_enabled" {
  description = "Whether this application can request an ID token using OAuth implicit flow"
  value       = azuread_application_registration.this.implicit_id_token_issuance_enabled
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "logout_url" {
  description = "URL of the logout page for the application, where the session is cleared for single sign-out"
  value       = azuread_application_registration.this.logout_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "marketing_url" {
  description = "URL of the marketing page for the application"
  value       = azuread_application_registration.this.marketing_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "notes" {
  description = "User-specified notes relevant for the management of the application"
  value       = azuread_application_registration.this.notes
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "object_id" {
  description = "The object ID of the application within the tenant"
  value       = azuread_application_registration.this.object_id
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "owners" {
  value = module.owners
}

output "passwords" {
  value     = module.passwords
  sensitive = true
}

output "permission_scopes" {
  value = module.permission_scopes
}

output "privacy_statement_url" {
  description = "URL of the privacy statement for the application"
  value       = azuread_application_registration.this.privacy_statement_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "publisher_domain" {
  description = "The verified publisher domain for the application"
  value       = azuread_application_registration.this.publisher_domain
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "redirect_uris" {
  value = module.redirect_uris
}

output "requested_access_token_version" {
  description = "The access token version expected by this resource"
  value       = azuread_application_registration.this.requested_access_token_version
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "service_management_reference" {
  description = "References application or contact information from a service or asset management database"
  value       = azuread_application_registration.this.service_management_reference
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "service_principals" {
  value = module.service_principals
}

output "sign_in_audience" {
  description = "The Microsoft account types that are supported for the current application"
  value       = azuread_application_registration.this.sign_in_audience
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "support_url" {
  description = "URL of the support page for the application"
  value       = azuread_application_registration.this.support_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}

output "terms_of_service_url" {
  description = "URL of the terms of service statement for the application"
  value       = azuread_application_registration.this.terms_of_service_url
  depends_on  = [module.passwords, module.certificates, module.federated_identity_credentials, module.owners, module.permission_scopes, module.app_roles, module.api_access, module.identifier_uris, module.redirect_uris, module.service_principals]
}
