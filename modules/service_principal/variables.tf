variable "account_enabled" {
  description = "Whether or not the service principal account is enabled"
  type        = bool
  default     = null
}

variable "alternative_names" {
  description = "A list of alternative names, used to retrieve service principals by subscription, identify resource group and full resource ids for managed identities"
  type        = set(string)
  default     = null
}

variable "app_role_assignment_required" {
  description = "Whether this service principal requires an app role assignment to a user or group before Azure AD will issue a user or access token to the application"
  type        = bool
  default     = null
}

variable "client_id" {
  description = "The client ID of the application for which to create a service principal"
  type        = string

  validation {
    condition     = var.client_id == null || can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", var.client_id))
    error_message = "The client_id value must be a GUID, e.g. \"8331f39a-2eb9-4b39-96a1-3e37e9a7c841\"."
  }
}

variable "description" {
  description = "Description of the service principal provided for internal end-users"
  type        = string
  default     = null
}

variable "login_url" {
  description = "The URL where the service provider redirects the user to Azure AD to authenticate. Azure AD uses the URL to launch the application from Microsoft 365 or the Azure AD My Apps. When blank, Azure AD performs IdP-initiated sign-on for applications configured with SAML-based single sign-on"
  type        = string
  default     = null
}

variable "notes" {
  description = "Free text field to capture information about the service principal, typically used for operational purposes"
  type        = string
  default     = null
}

variable "notification_email_addresses" {
  description = "List of email addresses where Azure AD sends a notification when the active certificate is near the expiration date. This is only for the certificates used to sign the SAML token issued for Azure AD Gallery applications"
  type        = set(string)
  default     = null
}

variable "owners" {
  description = "A list of object IDs of principals that will be granted ownership of the service principal"
  type        = set(string)
  default     = null
}

variable "preferred_single_sign_on_mode" {
  description = "The single sign-on mode configured for this application. Azure AD uses the preferred single sign-on mode to launch the application from Microsoft 365 or the Azure AD My Apps"
  type        = string
  default     = null
}

variable "tags" {
  description = "A set of tags to apply to the service principal"
  type        = set(string)
  default     = null
}

variable "use_existing" {
  description = "When true, the resource will return an existing service principal instead of failing with an error"
  type        = bool
  default     = null
}

variable "feature_tags" {
  description = "Block of features to configure for this service principal using tags"
  type = list(object({
    custom_single_sign_on = optional(bool)
    enterprise            = optional(bool)
    gallery               = optional(bool)
    hide                  = optional(bool)
  }))
  default = null
}

variable "saml_single_sign_on" {
  description = "Settings related to SAML single sign-on"
  type = object({
    relay_state = optional(string)
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

variable "app_role_assignments" {
  type = map(object({
    app_role_id         = string
    principal_object_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  default = {}
}
