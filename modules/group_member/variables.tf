variable "group_object_id" {
  description = "The object ID of the group you want to add the member to"
  type        = string

  validation {
    condition     = var.group_object_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.group_object_id))
    error_message = "The group_object_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "member_object_id" {
  description = "The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals"
  type        = string

  validation {
    condition     = var.member_object_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.member_object_id))
    error_message = "The member_object_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "timeouts" {
  type = object({
    create = optional(string)
    delete = optional(string)
    read   = optional(string)
  })
  default = null
}
