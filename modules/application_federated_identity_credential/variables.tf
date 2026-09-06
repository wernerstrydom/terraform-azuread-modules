variable "application_id" {
  description = "The resource ID of the application for which this federated identity credential should be created"
  type        = string
}

variable "audiences" {
  description = "List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens."
  type        = list(string)
}

variable "description" {
  description = "A description for the federated identity credential"
  type        = string
  default     = null
}

variable "display_name" {
  description = "A unique display name for the federated identity credential"
  type        = string
}

variable "issuer" {
  description = "The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app."
  type        = string
}

variable "subject" {
  description = "The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app."
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
