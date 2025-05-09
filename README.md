# CloudFormation and Terraform IaC Project

This repository, [iac23/CloudFormation](https://github.com/iac23/CloudFormation), contains Infrastructure as Code (IaC) configurations for managing AWS infrastructure using AWS CloudFormation and Terraform.

## Project Overview
The goal of this project is to demonstrate the ability to design and manage scalable and secure cloud infrastructure using IaC best practices with AWS CloudFormation templates and Terraform configurations.

## Structure
- `CloudFormation/`: Contains CloudFormation templates (`.yaml` files) for AWS resources.
  - Examples: `ec2.yaml`, `rds.yaml`, `s3.yaml`, `vpc.yaml`.
- `Terraform/`: Contains basic Terraform configurations.
  - Example: `main.tf` for provisioning AWS resources.
- `Terraform_new_folder/`: Contains modular Terraform configurations.
  - Subdirectories: `Modules/` (e.g., `compute/`, `network/`) and `environments/` (e.g., `development/`, `production/`, `staging/`).
  - Files: `main.tf`, `outputs.tf`, `variables.tf`.
- `.gitignore`: Ignores large files and directories like `.terraform/` and `*.tfstate`.
