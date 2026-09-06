variable "allowed_member_types" {
  description = "Specifies whether this app role definition can be assigned to users and groups by setting to `User`, or to other applications (that are accessing this application in a standalone scenario) by setting to `Application`, or to both"
  type        = set(string)
}

variable "application_id" {
  description = "The resource ID of the application to which this app role should be applied"
  type        = string
}

variable "description" {
  description = "Description of the app role that appears when the role is being assigned and, if the role functions as an application permissions, during the consent experiences"
  type        = string
}

variable "display_name" {
  description = "Display name for the app role that appears during app role assignment and in consent experiences"
  type        = string
}

variable "role_id" {
  description = "The unique identifier of the app role"
  type        = string

  validation {
    condition     = var.role_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.role_id))
    error_message = "The role_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "value" {
  description = "The value that is used for the `roles` claim in ID tokens and OAuth access tokens that are authenticating an assigned service or user principal"
  type        = string
  default     = null
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
