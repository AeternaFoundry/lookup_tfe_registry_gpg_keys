data "tfe_registry_gpg_keys" "registry_gpg_keys_lookup" {
  for_each = var.registry_gpg_keys_lookup

  organization = each.value.organization
}

