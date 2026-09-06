output "group_object_id" {
  description = "The object ID of the group you want to add the member to"
  value       = azuread_group_member.this.group_object_id
}

output "id" {
  value = azuread_group_member.this.id
}

output "member_object_id" {
  description = "The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals"
  value       = azuread_group_member.this.member_object_id
}
