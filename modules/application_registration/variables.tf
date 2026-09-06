variable "description" {
  description = "Description of the application as shown to end users"
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name for the application"
  type        = string
}

variable "group_membership_claims" {
  description = "Configures the `groups` claim that the app expects issued in a user or OAuth access token"
  type        = set(string)
  default     = null
}

variable "homepage_url" {
  description = "URL of the home page for the application"
  type        = string
  default     = null
}

variable "implicit_access_token_issuance_enabled" {
  description = "Whether this application can request an access token using OAuth implicit flow"
  type        = bool
  default     = null
}

variable "implicit_id_token_issuance_enabled" {
  description = "Whether this application can request an ID token using OAuth implicit flow"
  type        = bool
  default     = null
}

variable "logout_url" {
  description = "URL of the logout page for the application, where the session is cleared for single sign-out"
  type        = string
  default     = null
}

variable "marketing_url" {
  description = "URL of the marketing page for the application"
  type        = string
  default     = null
}

variable "notes" {
  description = "User-specified notes relevant for the management of the application"
  type        = string
  default     = null
}

variable "privacy_statement_url" {
  description = "URL of the privacy statement for the application"
  type        = string
  default     = null
}

variable "requested_access_token_version" {
  description = "The access token version expected by this resource"
  type        = number
  default     = null
}

variable "service_management_reference" {
  description = "References application or contact information from a service or asset management database"
  type        = string
  default     = null
}

variable "sign_in_audience" {
  description = "The Microsoft account types that are supported for the current application"
  type        = string
  default     = null
}

variable "support_url" {
  description = "URL of the support page for the application"
  type        = string
  default     = null
}

variable "terms_of_service_url" {
  description = "URL of the terms of service statement for the application"
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

variable "passwords" {
  type = map(object({
    display_name        = optional(string)
    end_date            = optional(string)
    rotate_when_changed = optional(map(string))
    start_date          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "certificates" {
  type = map(object({
    encoding   = optional(string)
    end_date   = optional(string)
    key_id     = optional(string)
    start_date = optional(string)
    type       = optional(string)
    value      = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "federated_identity_credentials" {
  type = map(object({
    audiences    = list(string)
    description  = optional(string)
    display_name = string
    issuer       = string
    subject      = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "owners" {
  type = map(object({
    owner_object_id = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  default = {}
}

variable "permission_scopes" {
  type = map(object({
    admin_consent_description  = string
    admin_consent_display_name = string
    scope_id                   = string
    type                       = optional(string)
    user_consent_description   = optional(string)
    user_consent_display_name  = optional(string)
    value                      = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "app_roles" {
  type = map(object({
    allowed_member_types = set(string)
    description          = string
    display_name         = string
    role_id              = string
    value                = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "api_access" {
  type = map(object({
    api_client_id = string
    role_ids      = optional(set(string))
    scope_ids     = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "identifier_uris" {
  type = map(object({
    identifier_uri = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  default = {}
}

variable "redirect_uris" {
  type = map(object({
    redirect_uris = set(string)
    type          = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  default = {}
}

variable "service_principals" {
  type = map(object({
    account_enabled               = optional(bool)
    alternative_names             = optional(set(string))
    app_role_assignment_required  = optional(bool)
    description                   = optional(string)
    login_url                     = optional(string)
    notes                         = optional(string)
    notification_email_addresses  = optional(set(string))
    owners                        = optional(set(string))
    preferred_single_sign_on_mode = optional(string)
    tags                          = optional(set(string))
    use_existing                  = optional(bool)
    feature_tags = optional(list(object({
      custom_single_sign_on = optional(bool)
      enterprise            = optional(bool)
      gallery               = optional(bool)
      hide                  = optional(bool)
    })))
    saml_single_sign_on = optional(object({
      relay_state = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    app_role_assignments = optional(map(object({
      app_role_id         = string
      principal_object_id = string
      timeouts = optional(object({
        create = optional(string)
        delete = optional(string)
        read   = optional(string)
      }))
    })), {})
  }))
  default = {}
}
