
variable "ip_configuration_subnet_id"
{
  default = "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Network/virtualNetworks/deepti-vnet/subnets/default"
}
variable "location"
{
  default = "UK West"
}
variable "zone_name"
{
  default = "rahuldevops85.online"
}

variable "rg_name"
{
  default = "deepti-rg"
}

variable "storage_image_reference_id"
{
  default =  "/subscriptions/3c4d3a6f-a203-48fd-8d99-85c25b48c45f/resourceGroups/deepti-rg/providers/Microsoft.Compute/images/local-devops-practice"
}