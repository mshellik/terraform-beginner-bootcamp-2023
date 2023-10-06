



<<<<<<< HEAD



## Semantic Versioning! :mage: 

This project is going to use Semantic Versioning for Tagging
[semver.org](https://semver.org/)
Given a version number **MAJOR.MINOR.PATCH**, eg. `1.0.1`

The General Format 
 - **MAJOR** version when you make incompatible API changes
 - **MINOR** version when you add functionality in a backward compatible manner
 - **PATCH** version when you make backward compatible bug fixes
Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.
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

## This is to refactor and install AWS CLI from below link and also to create AWS account and create ACCESS KEY and SECRET KEYS from below links

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html

To confirm the configs are OK and AWS access keys work and have connectivity to AWS, can be checked by below command

aws sts get-caller-identity



>>>>>>> main
