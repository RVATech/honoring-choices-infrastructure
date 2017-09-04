# Infrastucture

Infrastructure management repository

## Description

Since this site is born in the cloud, we are applying cloud best practices. These include infrasturucture as code. Since we're fans of Terraform by HashiCorp, we're using this open source technology to apply our infrastructure to the cloud.

## Providers

### AWS

Used for basic infrastructure, scaffolding, and data storage

AWS supports NFPs by donating a large capacity for very minimal cost. We are architecting to maximize this.

## Usage

Create a `terraform.tfvars` at the project root and fill in the data. This format expects that you have appropriately setup the AWS console to select the appropriate AWS account so that the infrastructure can be built.

 - Run `terraform plan`
 - Review results and address any environment errors
 - Run `terraform apply`
 - Check the AWS console to see all of your resources