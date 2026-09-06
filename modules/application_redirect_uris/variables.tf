variable "application_id" {
  description = "The resource ID of the application to which these redirect URIs belong"
  type        = string
}

variable "redirect_uris" {
  description = "A set of redirect URIs"
  type        = set(string)
}

variable "type" {
  description = "The type of redirect URIs to assign to the application"
  type        = string
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
