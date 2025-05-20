# Configure the Microsoft Azure Provider
provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "3c4d3a6f-a203-48fd-8d99-85c25b48c45f"
}

resource "azurerm_public_ip" "frontend" {
  name                    = "frontend"
  location                = "UK West"
  resource_group_name     = "deepti-rg"
  allocation_method       = "Static"
}

resource "azurerm_network_interface" "frontend" {
  name                = "frontend-nic"
  location            = "UK West"
  resource_group_name = "deepti-rg"

  ip_configuration {
    name                          = "frontend-nic"
    subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "frontend" {
  name                  = "frontend-vm"
  location              = "UK West"
  resource_group_name   = "deepti-rg"
  #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
  network_interface_ids = [azurerm_network_interface.frontend.id]
  vm_size               = "Standard_B2s"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "frontend-vm-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "frontend-vm"
    admin_username = "azuser"
    admin_password = "Chicago12345"

  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}