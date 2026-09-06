variable "application_id" {
  description = "The resource ID of the application to which the owner should be added"
  type        = string
}

variable "owner_object_id" {
  description = "Object ID of the principal that will be granted ownership of the application"
  type        = string

  validation {
    condition     = var.owner_object_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.owner_object_id))
    error_message = "The owner_object_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
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
