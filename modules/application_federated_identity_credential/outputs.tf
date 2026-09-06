output "application_id" {
  description = "The resource ID of the application for which this federated identity credential should be created"
  value       = azuread_application_federated_identity_credential.this.application_id
}

output "audiences" {
  description = "List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens."
  value       = azuread_application_federated_identity_credential.this.audiences
}

output "credential_id" {
  description = "A UUID used to uniquely identify this federated identity credential"
  value       = azuread_application_federated_identity_credential.this.credential_id
}

output "description" {
  description = "A description for the federated identity credential"
  value       = azuread_application_federated_identity_credential.this.description
}

output "display_name" {
  description = "A unique display name for the federated identity credential"
  value       = azuread_application_federated_identity_credential.this.display_name
}

output "id" {
  value = azuread_application_federated_identity_credential.this.id
}

output "issuer" {
  description = "The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app."
  value       = azuread_application_federated_identity_credential.this.issuer
}

output "subject" {
  description = "The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app."
  value       = azuread_application_federated_identity_credential.this.subject
}
