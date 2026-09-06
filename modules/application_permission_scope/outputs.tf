output "admin_consent_description" {
  description = "Delegated permission description that appears in all tenant-wide admin consent experiences, intended to be read by an administrator granting the permission on behalf of all users"
  value       = azuread_application_permission_scope.this.admin_consent_description
}

output "admin_consent_display_name" {
  description = "Display name for the delegated permission, intended to be read by an administrator granting the permission on behalf of all users"
  value       = azuread_application_permission_scope.this.admin_consent_display_name
}

output "application_id" {
  description = "The resource ID of the application to which this permission scope should be applied"
  value       = azuread_application_permission_scope.this.application_id
}

output "id" {
  value = azuread_application_permission_scope.this.id
}

output "scope_id" {
  description = "The unique identifier of the permission scope"
  value       = azuread_application_permission_scope.this.scope_id
}

output "type" {
  description = "Whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator should be required for consent to the permissions"
  value       = azuread_application_permission_scope.this.type
}

output "user_consent_description" {
  description = "Delegated permission description that appears in the end user consent experience, intended to be read by a user consenting on their own behalf"
  value       = azuread_application_permission_scope.this.user_consent_description
}

output "user_consent_display_name" {
  description = "Display name for the delegated permission that appears in the end user consent experience"
  value       = azuread_application_permission_scope.this.user_consent_display_name
}

output "value" {
  description = "The value that is used for the `scp` claim in OAuth access tokens"
  value       = azuread_application_permission_scope.this.value
}
