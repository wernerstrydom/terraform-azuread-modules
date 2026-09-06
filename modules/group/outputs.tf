output "administrative_unit_ids" {
  description = "The administrative unit IDs in which the group should be. If empty, the group will be created at the tenant level."
  value       = azuread_group.this.administrative_unit_ids
  depends_on  = [module.group_members]
}

output "assignable_to_role" {
  description = "Indicates whether this group can be assigned to an Azure Active Directory role. This property can only be `true` for security-enabled groups."
  value       = azuread_group.this.assignable_to_role
  depends_on  = [module.group_members]
}

output "auto_subscribe_new_members" {
  description = "Indicates whether new members added to the group will be auto-subscribed to receive email notifications."
  value       = azuread_group.this.auto_subscribe_new_members
  depends_on  = [module.group_members]
}

output "behaviors" {
  description = "The group behaviours for a Microsoft 365 group"
  value       = azuread_group.this.behaviors
  depends_on  = [module.group_members]
}

output "description" {
  description = "The description for the group"
  value       = azuread_group.this.description
  depends_on  = [module.group_members]
}

output "display_name" {
  description = "The display name for the group"
  value       = azuread_group.this.display_name
  depends_on  = [module.group_members]
}

output "external_senders_allowed" {
  description = "Indicates whether people external to the organization can send messages to the group."
  value       = azuread_group.this.external_senders_allowed
  depends_on  = [module.group_members]
}

output "group_members" {
  value = module.group_members
}

output "hide_from_address_lists" {
  description = "Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups."
  value       = azuread_group.this.hide_from_address_lists
  depends_on  = [module.group_members]
}

output "hide_from_outlook_clients" {
  description = "Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web."
  value       = azuread_group.this.hide_from_outlook_clients
  depends_on  = [module.group_members]
}

output "id" {
  value      = azuread_group.this.id
  depends_on = [module.group_members]
}

output "mail" {
  description = "The SMTP address for the group"
  value       = azuread_group.this.mail
  depends_on  = [module.group_members]
}

output "mail_enabled" {
  description = "Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. A group can be mail enabled _and_ security enabled"
  value       = azuread_group.this.mail_enabled
  depends_on  = [module.group_members]
}

output "mail_nickname" {
  description = "The mail alias for the group, unique in the organisation"
  value       = azuread_group.this.mail_nickname
  depends_on  = [module.group_members]
}

output "members" {
  description = "A set of members who should be present in this group. Supported object types are Users, Groups or Service Principals"
  value       = azuread_group.this.members
  depends_on  = [module.group_members]
}

output "object_id" {
  description = "The object ID of the group"
  value       = azuread_group.this.object_id
  depends_on  = [module.group_members]
}

output "onpremises_domain_name" {
  description = "The on-premises FQDN, also called dnsDomainName, synchronized from the on-premises directory when Azure AD Connect is used"
  value       = azuread_group.this.onpremises_domain_name
  depends_on  = [module.group_members]
}

output "onpremises_group_type" {
  description = "Indicates the target on-premise group type the group will be written back as"
  value       = azuread_group.this.onpremises_group_type
  depends_on  = [module.group_members]
}

output "onpremises_netbios_name" {
  description = "The on-premises NetBIOS name, synchronized from the on-premises directory when Azure AD Connect is used"
  value       = azuread_group.this.onpremises_netbios_name
  depends_on  = [module.group_members]
}

output "onpremises_sam_account_name" {
  description = "The on-premises SAM account name, synchronized from the on-premises directory when Azure AD Connect is used"
  value       = azuread_group.this.onpremises_sam_account_name
  depends_on  = [module.group_members]
}

output "onpremises_security_identifier" {
  description = "The on-premises security identifier (SID), synchronized from the on-premises directory when Azure AD Connect is used"
  value       = azuread_group.this.onpremises_security_identifier
  depends_on  = [module.group_members]
}

output "onpremises_sync_enabled" {
  description = "Whether this group is synchronized from an on-premises directory (true), no longer synchronized (false), or has never been synchronized (null)"
  value       = azuread_group.this.onpremises_sync_enabled
  depends_on  = [module.group_members]
}

output "owners" {
  description = "A set of owners who own this group. Supported object types are Users or Service Principals"
  value       = azuread_group.this.owners
  depends_on  = [module.group_members]
}

output "preferred_language" {
  description = "The preferred language for a Microsoft 365 group, in ISO 639-1 notation"
  value       = azuread_group.this.preferred_language
  depends_on  = [module.group_members]
}

output "prevent_duplicate_names" {
  description = "If `true`, will return an error if an existing group is found with the same name"
  value       = azuread_group.this.prevent_duplicate_names
  depends_on  = [module.group_members]
}

output "provisioning_options" {
  description = "The group provisioning options for a Microsoft 365 group"
  value       = azuread_group.this.provisioning_options
  depends_on  = [module.group_members]
}

output "proxy_addresses" {
  description = "Email addresses for the group that direct to the same group mailbox"
  value       = azuread_group.this.proxy_addresses
  depends_on  = [module.group_members]
}

output "security_enabled" {
  description = "Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A group can be security enabled _and_ mail enabled"
  value       = azuread_group.this.security_enabled
  depends_on  = [module.group_members]
}

output "theme" {
  description = "The colour theme for a Microsoft 365 group"
  value       = azuread_group.this.theme
  depends_on  = [module.group_members]
}

output "types" {
  description = "A set of group types to configure for the group. `Unified` specifies a Microsoft 365 group. Required when `mail_enabled` is true"
  value       = azuread_group.this.types
  depends_on  = [module.group_members]
}

output "visibility" {
  description = "Specifies the group join policy and group content visibility"
  value       = azuread_group.this.visibility
  depends_on  = [module.group_members]
}

output "writeback_enabled" {
  description = "Whether this group should be synced from Azure AD to the on-premises directory when Azure AD Connect is used"
  value       = azuread_group.this.writeback_enabled
  depends_on  = [module.group_members]
}
