variable "app_role_id" {
  description = "The ID of the app role to be assigned"
  type        = string

  validation {
    condition     = var.app_role_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.app_role_id))
    error_message = "The app_role_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "principal_object_id" {
  description = "The object ID of the user, group or service principal to be assigned this app role"
  type        = string

  validation {
    condition     = var.principal_object_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.principal_object_id))
    error_message = "The principal_object_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "resource_object_id" {
  description = "The object ID of the service principal representing the resource"
  type        = string

  validation {
    condition     = var.resource_object_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.resource_object_id))
    error_message = "The resource_object_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
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
