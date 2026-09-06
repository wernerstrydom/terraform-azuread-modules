variable "application_id" {
  description = "The resource ID of the application for which this password should be created"
  type        = string
}

variable "display_name" {
  description = "A display name for the password"
  type        = string
  default     = null
}

variable "end_date" {
  description = "The end date until which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`)"
  type        = string
  default     = null
}

variable "rotate_when_changed" {
  description = "Arbitrary map of values that, when changed, will trigger rotation of the password"
  type        = map(string)
  default     = null
}

variable "start_date" {
  description = "The start date from which the password is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date is used"
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
