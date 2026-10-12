output "registry_gpg_keys_lookup_id" {
  description = "Map of id values across all registry_gpg_keys_lookup, keyed the same as var.registry_gpg_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.tfe_registry_gpg_keys.registry_gpg_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "registry_gpg_keys_lookup_keys" {
  description = "Map of keys values across all registry_gpg_keys_lookup, keyed the same as var.registry_gpg_keys_lookup except keys with no keys are omitted"
  value       = { for k, v in data.tfe_registry_gpg_keys.registry_gpg_keys_lookup : k => v.keys if v.keys != null && length(v.keys) > 0 }
}
output "registry_gpg_keys_lookup_organization" {
  description = "Map of organization values across all registry_gpg_keys_lookup, keyed the same as var.registry_gpg_keys_lookup except keys with no organization are omitted"
  value       = { for k, v in data.tfe_registry_gpg_keys.registry_gpg_keys_lookup : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

