output "application_id" {
  description = "The resource ID of the application for which this certificate should be created"
  value       = azuread_application_certificate.this.application_id
}

output "encoding" {
  description = "Specifies the encoding used for the supplied certificate data"
  value       = azuread_application_certificate.this.encoding
}

output "end_date" {
  description = "The end date until which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If omitted, the API will decide a suitable expiry date, which is typically around 2 years from the start date"
  value       = azuread_application_certificate.this.end_date
}

output "id" {
  value = azuread_application_certificate.this.id
}

output "key_id" {
  description = "A UUID used to uniquely identify this certificate. If omitted, a random UUID will be automatically generated"
  value       = azuread_application_certificate.this.key_id
}

output "start_date" {
  description = "The start date from which the certificate is valid, formatted as an RFC3339 date string (e.g. `2018-01-01T01:02:03Z`). If this isn't specified, the current date and time are use"
  value       = azuread_application_certificate.this.start_date
}

output "type" {
  description = "The type of key/certificate"
  value       = azuread_application_certificate.this.type
}

output "value" {
  description = "The certificate data, which can be PEM encoded, base64 encoded DER or hexadecimal encoded DER. See also the `encoding` argument"
  value       = azuread_application_certificate.this.value
  sensitive   = true
}
