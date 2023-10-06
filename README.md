# Terraform Beginner Bootcamp 2023

# Install Terraform CLI 
Terraform installation has been changed due to some GPG Key Ring Changes. We need to refer to latest offical installation documents 

[Install Terraform CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)

### Refactatoring into bash script

While Terraform installation.. we created bash script to inculde it into gitpod.yaml
This will keep gitpod task file clean and neat.. this will help us debug issues easily

Path for the script is [./bin/install_terraform_cli](./bin/install_terraform_cli)

## List Env Variables
This can be done by env command at bash terminal
## Export Variable on the command
export VARIABLE='value'
## Making Variables as part of the script
We can make it happen by mentioing in env file, This is more of documenation than really used in install_terraform bash script

## Making Env Vars as part of gitpod as secret we can mention it like 

gp env VARIABLE='value'

