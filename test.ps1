#Azure login
#Create a resource group

Login-AzureRmAccount
# Create a resource group.
 New-AzureRmResourceGroup -Name 'New Vnet with subnets' -Location 'westeurope'
 # Create a virtual network
 $Vnet=New-AzureRmVirtualNetwork `
  -ResourceGroupName MyResourceGroup `
  -Location westeurope `
  -Name MyVnet `
  -AddressPrefix 192.168.0.0/16 `
  -Subnet $Subnet1,$Subnet2
# Create two subnets.
$Subnet1 = New-AzureRmVirtualNetworkSubnetConfig `
  -Name Public `
  -AddressPrefix 192.168.0.0/16
$Subnet2 = New-AzureRmVirtualNetworkSubnetConfig `
  -Name Private `
  -AddressPrefix 192.168.0.0/16

  $storage = New-azurestorage



  