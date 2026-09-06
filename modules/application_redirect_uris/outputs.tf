output "application_id" {
  description = "The resource ID of the application to which these redirect URIs belong"
  value       = azuread_application_redirect_uris.this.application_id
}

output "id" {
  value = azuread_application_redirect_uris.this.id
}

output "redirect_uris" {
  description = "A set of redirect URIs"
  value       = azuread_application_redirect_uris.this.redirect_uris
}

output "type" {
  description = "The type of redirect URIs to assign to the application"
  value       = azuread_application_redirect_uris.this.type
}
