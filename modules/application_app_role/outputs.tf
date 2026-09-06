output "allowed_member_types" {
  description = "Specifies whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications (that are accessing this application in a standalone scenario) by setting to `Application`, or to both"
  value       = azuread_application_app_role.this.allowed_member_types
}

output "application_id" {
  description = "The resource ID of the application to which this app role should be applied"
  value       = azuread_application_app_role.this.application_id
}

output "description" {
  description = "Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences"
  value       = azuread_application_app_role.this.description
}

output "display_name" {
  description = "Display name for the app role that appears during app role assignment and in consent experiences"
  value       = azuread_application_app_role.this.display_name
}

output "id" {
  value = azuread_application_app_role.this.id
}

output "role_id" {
  description = "The unique identifier of the app role"
  value       = azuread_application_app_role.this.role_id
}

output "value" {
  description = "The value that is used for the `roles` claim in ID tokens and OAuth access tokens that are authenticating an assigned service or user principal"
  value       = azuread_application_app_role.this.value
}
