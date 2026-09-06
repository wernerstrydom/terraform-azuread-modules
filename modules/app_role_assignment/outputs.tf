output "app_role_id" {
  description = "The ID of the app role to be assigned"
  value       = azuread_app_role_assignment.this.app_role_id
}

output "id" {
  value = azuread_app_role_assignment.this.id
}

output "principal_display_name" {
  description = "The display name of the principal to which the app role is assigned"
  value       = azuread_app_role_assignment.this.principal_display_name
}

output "principal_object_id" {
  description = "The object ID of the user, group or service principal to be assigned this app role"
  value       = azuread_app_role_assignment.this.principal_object_id
}

output "principal_type" {
  description = "The object type of the principal to which the app role is assigned"
  value       = azuread_app_role_assignment.this.principal_type
}

output "resource_display_name" {
  description = "The display name of the application representing the resource"
  value       = azuread_app_role_assignment.this.resource_display_name
}

output "resource_object_id" {
  description = "The object ID of the service principal representing the resource"
  value       = azuread_app_role_assignment.this.resource_object_id
}
