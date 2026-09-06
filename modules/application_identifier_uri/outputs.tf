output "application_id" {
  description = "The resource ID of the application to which the identifier URI should be added"
  value       = azuread_application_identifier_uri.this.application_id
}

output "id" {
  value = azuread_application_identifier_uri.this.id
}

output "identifier_uri" {
  description = "The user-defined URI or URI-like string that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant"
  value       = azuread_application_identifier_uri.this.identifier_uri
}
