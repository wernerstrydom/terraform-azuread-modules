output "account_enabled" {
  description = "Whether or not the service principal account is enabled"
  value       = azuread_service_principal.this.account_enabled
  depends_on  = [module.app_role_assignments]
}

output "alternative_names" {
  description = "A list of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities"
  value       = azuread_service_principal.this.alternative_names
  depends_on  = [module.app_role_assignments]
}

output "app_role_assignment_required" {
  description = "Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application"
  value       = azuread_service_principal.this.app_role_assignment_required
  depends_on  = [module.app_role_assignments]
}

output "app_role_assignments" {
  value = module.app_role_assignments
}

output "app_role_ids" {
  description = "Mapping of app role names to UUIDs"
  value       = azuread_service_principal.this.app_role_ids
  depends_on  = [module.app_role_assignments]
}

output "app_roles" {
  description = "A list of app roles published by the associated application, as documented below. For more information official documentation."
  value       = azuread_service_principal.this.app_roles
  depends_on  = [module.app_role_assignments]
}

output "application_tenant_id" {
  description = "The tenant ID where the associated application is registered"
  value       = azuread_service_principal.this.application_tenant_id
  depends_on  = [module.app_role_assignments]
}

output "client_id" {
  description = "The client ID of the application for which to create a service principal"
  value       = azuread_service_principal.this.client_id
  depends_on  = [module.app_role_assignments]
}

output "description" {
  description = "Description of the service principal provided for internal end-users"
  value       = azuread_service_principal.this.description
  depends_on  = [module.app_role_assignments]
}

output "display_name" {
  description = "The display name of the application associated with this service principal"
  value       = azuread_service_principal.this.display_name
  depends_on  = [module.app_role_assignments]
}

output "homepage_url" {
  description = "Home page or landing page of the application"
  value       = azuread_service_principal.this.homepage_url
  depends_on  = [module.app_role_assignments]
}

output "id" {
  description = "The unique identifier of the `app_role`."
  value       = azuread_service_principal.this.id
  depends_on  = [module.app_role_assignments]
}

output "login_url" {
  description = "The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on"
  value       = azuread_service_principal.this.login_url
  depends_on  = [module.app_role_assignments]
}

output "logout_url" {
  description = "The URL that will be used by Microsoft's authorization service to sign out a user using front-channel, back-channel or SAML logout protocols"
  value       = azuread_service_principal.this.logout_url
  depends_on  = [module.app_role_assignments]
}

output "notes" {
  description = "Free text field to capture information about the service principal, typically used for operational purposes"
  value       = azuread_service_principal.this.notes
  depends_on  = [module.app_role_assignments]
}

output "notification_email_addresses" {
  description = "List of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications"
  value       = azuread_service_principal.this.notification_email_addresses
  depends_on  = [module.app_role_assignments]
}

output "oauth2_permission_scope_ids" {
  description = "Mapping of OAuth2.0 permission scope names to UUIDs"
  value       = azuread_service_principal.this.oauth2_permission_scope_ids
  depends_on  = [module.app_role_assignments]
}

output "oauth2_permission_scopes" {
  description = "A list of OAuth 2.0 delegated permission scopes exposed by the associated application, as documented below."
  value       = azuread_service_principal.this.oauth2_permission_scopes
  depends_on  = [module.app_role_assignments]
}

output "object_id" {
  description = "The object ID of the service principal"
  value       = azuread_service_principal.this.object_id
  depends_on  = [module.app_role_assignments]
}

output "owners" {
  description = "A list of object IDs of principals that will be granted ownership of the service principal"
  value       = azuread_service_principal.this.owners
  depends_on  = [module.app_role_assignments]
}

output "preferred_single_sign_on_mode" {
  description = "The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps"
  value       = azuread_service_principal.this.preferred_single_sign_on_mode
  depends_on  = [module.app_role_assignments]
}

output "redirect_uris" {
  description = "The URLs where user tokens are sent for sign-in with the associated application, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent for the associated application"
  value       = azuread_service_principal.this.redirect_uris
  depends_on  = [module.app_role_assignments]
}

output "saml_metadata_url" {
  description = "The URL where the service exposes SAML metadata for federation"
  value       = azuread_service_principal.this.saml_metadata_url
  depends_on  = [module.app_role_assignments]
}

output "service_principal_names" {
  description = "A list of identifier URI(s), copied over from the associated application"
  value       = azuread_service_principal.this.service_principal_names
  depends_on  = [module.app_role_assignments]
}

output "sign_in_audience" {
  description = "The Microsoft account types that are supported for the associated application"
  value       = azuread_service_principal.this.sign_in_audience
  depends_on  = [module.app_role_assignments]
}

output "tags" {
  description = "A set of tags to apply to the service principal"
  value       = azuread_service_principal.this.tags
  depends_on  = [module.app_role_assignments]
}

output "type" {
  description = "Identifies whether the service principal represents an application or a managed identity"
  value       = azuread_service_principal.this.type
  depends_on  = [module.app_role_assignments]
}

output "use_existing" {
  description = "When true, the resource will return an existing service principal instead of failing with an error"
  value       = azuread_service_principal.this.use_existing
  depends_on  = [module.app_role_assignments]
}
