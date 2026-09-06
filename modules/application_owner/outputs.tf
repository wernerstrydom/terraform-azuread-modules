output "application_id" {
  description = "The resource ID of the application to which the owner should be added"
  value       = azuread_application_owner.this.application_id
}

output "id" {
  value = azuread_application_owner.this.id
}

output "owner_object_id" {
  description = "Object ID of the principal that will be granted ownership of the application"
  value       = azuread_application_owner.this.owner_object_id
}
