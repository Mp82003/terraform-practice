# Terraform Reusable Modules

A hands-on Terraform project demonstrating how to build reusable infrastructure modules and deploy them across multiple environments.

## Architecture

```text
                    Terraform Modules
                          |
          +---------------+---------------+
          |               |               |
         VPC        Security Group       EC2
          |               |               |
          +---------------+---------------+
                          |
              +-----------+-----------+
              |           |           |
             Dev       Staging       Prod

Project Structure
04-terraform-modules/
│
├── modules/
│   ├── vpc/
│   ├── ec2/
│   └── security-group/
│
├── environments/
│   ├── dev/
│   ├── staging/
│   └── prod/
│
├── .gitignore
└── README.md
Modules
VPC Module

Creates:

VPC
Public Subnet

Inputs:

cidr_block
subnet_cidr

Outputs:

vpc_id
subnet_id
Security Group Module

Creates a reusable Security Group.

Input:

vpc_id

Output:

security_group_id
EC2 Module

Creates an EC2 instance.

Inputs:

instance_type
security_group_id
subnet_id
Environments

Each environment uses the same reusable modules with different configuration.

Environment	VPC CIDR	Subnet CIDR
Dev	10.0.0.0/16	10.0.1.0/24
Staging	10.1.0.0/16	10.1.1.0/24
Prod	10.2.0.0/16	10.2.1.0/24
Terraform Workflow
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
What I Learned
Terraform modules
Module inputs and outputs
Module composition
Environment separation
Terraform state
Variables and terraform.tfvars
Terraform dependency graph
Reusable infrastructure design
Debugging Terraform and AWS errors
Module versioning concepts
