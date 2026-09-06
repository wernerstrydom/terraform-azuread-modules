variable "application_id" {
  description = "The resource ID of the application for which this certificate should be created"
  type        = string
}

variable "encoding" {
  description = "Specifies the encoding used for the supplied certificate data"
  type        = string
  default     = null
}

variable "end_date" {
  description = "The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If omitted, the API will decide a suitable expiry date, which is typically around 2 years from the start date"
  type        = string
  default     = null
}

variable "key_id" {
  description = "A UUID used to uniquely identify this certificate. If omitted, a random UUID will be automatically generated"
  type        = string
  default     = null
}

variable "start_date" {
  description = "The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date and time are use"
  type        = string
  default     = null
}

variable "type" {
  description = "The type of key/certificate"
  type        = string
  default     = null
}

variable "value" {
  description = "The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument"
  type        = string
  sensitive   = true
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
