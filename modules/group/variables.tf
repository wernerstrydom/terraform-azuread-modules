variable "administrative_unit_ids" {
  description = "The administrative unit IDs in which the group should be. If empty, the group will be created at the tenant level."
  type        = set(string)
  default     = null
}

variable "assignable_to_role" {
  description = "Indicates whether this group can be assigned to an Azure Active Directory role. This property can only be `true` for security-enabled groups."
  type        = bool
  default     = null
}

variable "auto_subscribe_new_members" {
  description = "Indicates whether new members added to the group will be auto-subscribed to receive email notifications."
  type        = bool
  default     = null
}

variable "behaviors" {
  description = "The group behaviours for a Microsoft 365 group"
  type        = set(string)
  default     = null
}

variable "description" {
  description = "The description for the group"
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name for the group"
  type        = string
}

variable "external_senders_allowed" {
  description = "Indicates whether people external to the organization can send messages to the group."
  type        = bool
  default     = null
}

variable "hide_from_address_lists" {
  description = "Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups."
  type        = bool
  default     = null
}

variable "hide_from_outlook_clients" {
  description = "Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web."
  type        = bool
  default     = null
}

variable "mail_enabled" {
  description = "Whether the group is a mail enabled, with a shared group mailbox. At least one of `mail_enabled` or `security_enabled` must be specified. A group can be mail enabled _and_ security enabled"
  type        = bool
  default     = null
}

variable "mail_nickname" {
  description = "The mail alias for the group, unique in the organisation"
  type        = string
  default     = null
}

variable "members" {
  description = "A set of members who should be present in this group. Supported object types are Users, Groups or Service Principals"
  type        = set(string)
  default     = null
}

variable "onpremises_group_type" {
  description = "Indicates the target on-premise group type the group will be written back as"
  type        = string
  default     = null

  validation {
    condition     = var.onpremises_group_type == null || contains(["UniversalDistributionGroup", "UniversalMailEnabledSecurityGroup", "UniversalSecurityGroup"], var.onpremises_group_type)
    error_message = "The onpremises_group_type value must be one of: UniversalDistributionGroup, UniversalMailEnabledSecurityGroup, UniversalSecurityGroup (per the provider documentation)."
  }
}

variable "owners" {
  description = "A set of owners who own this group. Supported object types are Users or Service Principals"
  type        = set(string)
  default     = null
}

variable "prevent_duplicate_names" {
  description = "If `true`, will return an error if an existing group is found with the same name"
  type        = bool
  default     = null
}

variable "provisioning_options" {
  description = "The group provisioning options for a Microsoft 365 group"
  type        = set(string)
  default     = null
}

variable "security_enabled" {
  description = "Whether the group is a security group for controlling access to in-app resources. At least one of `security_enabled` or `mail_enabled` must be specified. A group can be security enabled _and_ mail enabled"
  type        = bool
  default     = null
}

variable "theme" {
  description = "The colour theme for a Microsoft 365 group"
  type        = string
  default     = null

  validation {
    condition     = var.theme == null || contains(["Blue", "Green", "Orange", "Pink", "Purple", "Red", "Teal"], var.theme)
    error_message = "The theme value must be one of: Blue, Green, Orange, Pink, Purple, Red, Teal (per the provider documentation)."
  }
}

variable "types" {
  description = "A set of group types to configure for the group. `Unified` specifies a Microsoft 365 group. Required when `mail_enabled` is true"
  type        = set(string)
  default     = null
}

variable "visibility" {
  description = "Specifies the group join policy and group content visibility"
  type        = string
  default     = null

  validation {
    condition     = var.visibility == null || contains(["Private", "Public", "Hiddenmembership"], var.visibility)
    error_message = "The visibility value must be one of: Private, Public, Hiddenmembership (per the provider documentation)."
  }
}

variable "writeback_enabled" {
  description = "Whether this group should be synced from Azure AD to the on-premises directory when Azure AD Connect is used"
  type        = bool
  default     = null
}

variable "dynamic_membership" {
  description = "An optional block to configure dynamic membership for the group. Cannot be used with `members`"
  type = object({
    enabled = bool
    rule    = string
  })
  default = null
}

variable "timeouts" {
  type = object({
    create = optional(string)
    delete = optional(string)
    read   = optional(string)
    update = optional(string)
  })
  default = null
}

variable "group_members" {
  type = map(object({
    member_object_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  default = {}
}
