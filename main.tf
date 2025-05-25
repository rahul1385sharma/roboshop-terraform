# Configure the Microsoft Azure Provider
provider "azurerm" {
  # resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
  subscription_id = "3c4d3a6f-a203-48fd-8d99-85c25b48c45f"
}

# resource "azurerm_public_ip" "frontend" {
#   name                    = "frontend"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "frontend" {
#   name                = "frontend-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "frontend-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.frontend.id
#   }
# }

# resource "azurerm_virtual_machine" "frontend" {
#   name                  = "frontend-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.frontend.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "frontend-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "frontend-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "mongodb" {
#   name                    = "mongodb"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "mongodb" {
#   name                = "mongodb-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "mongodb-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.mongodb.id
#   }
# }
#
# resource "azurerm_virtual_machine" "mongodb" {
#   name                  = "mongodb-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.mongodb.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "mongodb-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "mongodb-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "catalogue" {
#   name                    = "catalogue"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "catalogue" {
#   name                = "catalogue-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "catalogue-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.catalogue.id
#   }
# }
#
# resource "azurerm_virtual_machine" "catalogue" {
#   name                  = "catalogue-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.catalogue.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "catalogue-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "catalogue-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "redis" {
#   name                    = "redis"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "redis" {
#   name                = "redis-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "redis-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.redis.id
#   }
# }
#
# resource "azurerm_virtual_machine" "redis" {
#   name                  = "redis-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.redis.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "redis-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "redis-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }



# resource "azurerm_public_ip" "user" {
#   name                    = "user"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "user" {
#   name                = "user-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "user-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.user.id
#   }
# }
#
# resource "azurerm_virtual_machine" "user" {
#   name                  = "user-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.user.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "user-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "user-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "cart" {
#   name                    = "cart"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "cart" {
#   name                = "cart-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "cart-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.cart.id
#   }
# }
#
# resource "azurerm_virtual_machine" "cart" {
#   name                  = "cart-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.cart.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "cart-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "cart-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "mysql" {
#   name                    = "mysql"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "mysql" {
#   name                = "mysql-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "mysql-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.mysql.id
#   }
# }
#
# resource "azurerm_virtual_machine" "mysql" {
#   name                  = "mysql-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.mysql.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "mysql-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "mysql-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
# resource "azurerm_public_ip" "shipping" {
#   name                    = "shipping"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "shipping" {
#   name                = "shipping-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "shipping-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.shipping.id
#   }
# }
#
# resource "azurerm_virtual_machine" "shipping" {
#   name                  = "shipping-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.shipping.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "shipping-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "shipping-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
#
#
resource "azurerm_public_ip" "rabbitmq" {
  name                    = "rabbitmq"
  location                = "UK West"
  resource_group_name     = "deepti-rg"
  allocation_method       = "Static"
}

resource "azurerm_network_interface" "rabbitmq" {
  name                = "rabbitmq-nic"
  location            = "UK West"
  resource_group_name = "deepti-rg"

  ip_configuration {
    name                          = "rabbitmq-nic"
    subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.rabbitmq.id
  }
}

resource "azurerm_virtual_machine" "rabbitmq" {
  name                  = "rabbitmq-vm"
  location              = "UK West"
  resource_group_name   = "deepti-rg"
  #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
  network_interface_ids = [azurerm_network_interface.rabbitmq.id]
  vm_size               = "Standard_B2s"
  delete_os_disk_on_termination = true
  delete_data_disks_on_termination = true

  storage_image_reference {
    id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
  }
  storage_os_disk {
    name              = "rabbitmq-vm-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "rabbitmq-vm"
    admin_username = "azuser"
    admin_password = "Chicago12345"

  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}

#
#
# resource "azurerm_public_ip" "payment" {
#   name                    = "payment"
#   location                = "UK West"
#   resource_group_name     = "deepti-rg"
#   allocation_method       = "Static"
# }
#
# resource "azurerm_network_interface" "payment" {
#   name                = "payment-nic"
#   location            = "UK West"
#   resource_group_name = "deepti-rg"
#
#   ip_configuration {
#     name                          = "payment-nic"
#     subnet_id                     = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id          = azurerm_public_ip.payment.id
#   }
# }
#
# resource "azurerm_virtual_machine" "payment" {
#   name                  = "payment-vm"
#   location              = "UK West"
#   resource_group_name   = "deepti-rg"
#   #network_interface_ids = ["/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/networkInterfaces/terraform-testing"]
#   network_interface_ids = [azurerm_network_interface.payment.id]
#   vm_size               = "Standard_B2s"
#   delete_os_disk_on_termination = true
#   delete_data_disks_on_termination = true
#
#   storage_image_reference {
#     id = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
#   }
#   storage_os_disk {
#     name              = "payment-vm-disk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }
#   os_profile {
#     computer_name  = "payment-vm"
#     admin_username = "azuser"
#     admin_password = "Chicago12345"
#
#   }
#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
#
# # DNS
#
# resource "azurerm_dns_a_record" "frontend" {
#   name                = "frontend-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.frontend.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "catalogue" {
#   name                = "catalogue-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.catalogue.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "mongodb" {
#   name                = "mongodb-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.mongodb.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "redis" {
#   name                = "redis-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.redis.private_ip_address]
# }
#
resource "azurerm_dns_a_record" "rabbitmq" {
  name                = "rabbitmq-dev"
  zone_name           = "rahuldevops85.online"
  resource_group_name   = "deepti-rg"
  ttl                 = 3
  records             = [azurerm_network_interface.rabbitmq.private_ip_address]
}
#
# resource "azurerm_dns_a_record" "user" {
#   name                = "user-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.user.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "cart" {
#   name                = "cart-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.cart.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "shipping" {
#   name                = "shipping-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.shipping.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "payment" {
#   name                = "payment-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.payment.private_ip_address]
# }
#
# resource "azurerm_dns_a_record" "mysql" {
#   name                = "mysql-dev"
#   zone_name           = "rahuldevops85.online"
#   resource_group_name   = "deepti-rg"
#   ttl                 = 3
#   records             = [azurerm_network_interface.mysql.private_ip_address]
# }
#
#
