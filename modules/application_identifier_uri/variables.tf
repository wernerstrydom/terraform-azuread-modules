variable "application_id" {
  description = "The resource ID of the application to which the identifier URI should be added"
  type        = string
}

variable "identifier_uri" {
  description = "The user-defined URI or URI-like string that uniquely identifies an application within its Azure AD tenant, or within a verified custom domain if the application is multi-tenant"
  type        = string
}

variable "timeouts" {
  type = object({
    create = optional(string)
    delete = optional(string)
    read   = optional(string)
  })
  default = null
}
