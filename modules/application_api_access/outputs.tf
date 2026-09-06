output "api_client_id" {
  description = "The client ID of the API to which access is being granted"
  value       = azuread_application_api_access.this.api_client_id
}

output "application_id" {
  description = "The resource ID of the application to which this API access is granted"
  value       = azuread_application_api_access.this.application_id
}

output "id" {
  value = azuread_application_api_access.this.id
}

output "role_ids" {
  description = "A set of role IDs to be granted to the application, as published by the API"
  value       = azuread_application_api_access.this.role_ids
}

output "scope_ids" {
  description = "A set of scope IDs to be granted to the application, as published by the API"
  value       = azuread_application_api_access.this.scope_ids
}
