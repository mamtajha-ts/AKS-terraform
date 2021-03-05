data "azurerm_key_vault" "terraform_vault" {
  name                = var.keyvault_name
  resource_group_name = var.keyvault_rg
}

data "azurerm_key_vault_secret" "ssh_public_key" {
  name         = "LinuxSSHPubKey"
  key_vault_id = data.azurerm_key_vault.terraform_vault.id
}

data "azurerm_key_vault_secret" "sp_id" {
  name         = "sp-id"
  key_vault_id = data.azurerm_key_vault.terraform_vault.id
}
data "azurerm_key_vault_secret" "sp_secret" {
  name         = "sp-secret"
  key_vault_id = data.azurerm_key_vault.terraform_vault.id
}
