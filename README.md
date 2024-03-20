# Azure Virtual Machine
### Santiago Arévalo Valencia 👨🏽‍💻

## Description
This is a Azure Virtual Machine created with Terraform. The purpose of this exercise is to understand through practice what resources are required to create a virtual machine in Azure, and how the configuration should be set up so that it is accessible through a public ip.
### Key Technologies:
  * Azure
  * Terraform

## Prerequisites
  * OS with Terraform installed ([Installation guide on Windows](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli))
  * Azure CLI installed, with a logged in session to access the Azure portal ([Azure CLI installation guide](https://learn.microsoft.com/es-es/cli/azure/install-azure-cli-linux?pivots=apt))
  * File ````terraform.tfvars```` with the values for the variables defined in the file ````variables.tf````.

## Step by step

* We create a file ````main.tf```` in which we will code the infrastructure provisioning required to create the virtual machine.
* We can make use of templates that exist to create this type of common resources. For example, here is a terraform guide to [create a virtual machine](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine).
* After this, we create a variables file ````name.tf```` in which we will declare the variables that we want to use for the names of the resources to create.
* Once the necessary variables have been declared, we create a file ````name.tfvars```` to initialize or assign a value to these variables.
* We must make sure that the calls to the variables in the resources are done in a correct way.
* In order to connect to our VM through a public ip via ssh, we must create a resource ````azurerm_public_ip````. ([Guide to create a public ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip))
* Already having the public ip, we must create a security rule, associated to the security group that we have defined, in which the access to port 22 through SSH is allowed. An example of this can be found here.
* Finally, we associate our network interface with the security group by means of the resource ````azurerm_network_interface_security_group_association````. ([Guide to create this resource](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association))

## Commands

Now, let's see the commands used to initialize and mount our Infrastructure as Code:
1. Prepare working directory for Terraform:

```
terraform init
```

2. Validate terraform configuration:

```
terraform validate
```

3. Validate and show the changes required for this configuration:

```
terraform plan
```

4. Create the infrastructure:

```
terraform apply
```

---

Now, let's see the evidence of how the infrastructure is displayed in our Azure portal.

* Resource Group created
  
  ![resource group created](https://github.com/santiagoarevalo/az-virtual-machine/assets/71450411/6defc35e-af2f-48d8-857a-37d566750b27)

* Resources created
  
  ![resources created](https://github.com/santiagoarevalo/az-virtual-machine/assets/71450411/1567f095-7af7-49fe-80e4-853cb0c68ebe)

* IP Public created and accesible VM
  
  ![ip public and accesible vm](https://github.com/santiagoarevalo/az-virtual-machine/assets/71450411/f7ed16f0-df47-404f-b156-1f6bd45e8275)

* SSH connection
  
  ![ssh connection](https://github.com/santiagoarevalo/az-virtual-machine/assets/71450411/d3c215fa-d3fc-44c0-a65f-a052405929f1)




