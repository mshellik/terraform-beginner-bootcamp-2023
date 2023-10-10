



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

## Terraform Basics

Terraform basics can be found 
[registry.terraform.io/](https://registry.terraform.io/)
What are **providers**: 
They are API's written by Vendors for Making Terraform API's to talk to the resources of Vendors. May it be cloud or any other Tech stack Vendors

What are Modules?
- **Modules** are set of files grouped together for a specific set of tasks. All files are interdependent on each other for that specific tasks . this is no different than module of a Programming language like python. which will help us work on specific data type for specific need and its all pre-written. One can write their own modules based on the type of taks performed. They are shareable and portable

## Terraform Commands
Just by running Terraform, we will get options and arguments to the command 

## Terraform Init
To Initialize  Terraform by running the terraform command to download the required binaries of providers that will be used in that project

## Terraform Plan .
This will generate Change Set about the state of our infrastructure. Pointing out which resources will be created / deleted / modified, if apply executed.
We can output this to file to be passed to Apply command to have the resources provisioned

# Terraform apply
This will provision provided you confirm the resources creation or deletion 
We can also provide auto approve flag to do it without prompting us .

## Terraform Hardware lock file
It's designed to record the exact package versions used to satisfy each provider requirement in your configuration. This ensures that every member of your team and your deployment systems use the same provider versions, avoiding inconsistencies and potential bugs.0

## Terraform TF State file
The terraform state file, by default, is named `terraform.tfstate` and is held in the same directory where Terraform is run. It is created after running terraform apply . The actual content of this file is a JSON formatted mapping of the resources defined in the configuration and those that exist in your infrastructure.

This file should not be commited to Version Control System as this has sensitive info.

`terraform.tfstate.backup` is backup file in case required. 

### S3 Bucket creation
Created S3 bucket with AWS provisioners  and also the same was destryoed by 
Terraform Destroy


# Terraform Login issues

When Terraform clooud was logged in from CLI .. it needs a token  to authenticate. which has to be derived from Terraform Cloud url

The file is saved in this location.
### /workspace/terraform-beginner-bootcamp-2023/tokens?source=terraform-login

Loging on to Terraform cloud from CLI was one of the toughest thing and it has consumed lot of my time





>>>>>>> main
