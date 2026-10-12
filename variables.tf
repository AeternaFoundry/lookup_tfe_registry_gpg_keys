variable "registry_gpg_keys_lookup" {
  description = <<EOT
Map of registry_gpg_keys_lookup, attributes below
Optional:
    - organization
EOT

  type = map(object({
    organization = optional(string)
  }))
}

