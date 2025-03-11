# TERRAFORM_AWS_AUTOMATION

This repository contains Terraform configurations to deploy and manage AWS infrastructure using Infrastructure as Code (IaC).

## 📌 Features
✅ Deploys multiple Amazon EC2 instances with customizable configurations.
✅ Configures Elastic IPs (EIP) for static public IP assignments.
✅ Manages IAM roles and permissions for secure access.
✅ Creates S3 buckets with security policies.
✅ Provisions VPC, Subnets, and Route Tables for network configuration.
✅ Automates GitHub repository setup using Terraform.

## 🛠 Prerequisites
Before you begin, ensure you have:
- **Terraform** installed → [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- **AWS CLI** configured → [AWS CLI Setup](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An **AWS IAM User** with required permissions (EC2, S3, IAM, GitHub).
- A GitHub Personal Access Token for managing repositories.


## 🚀 Usage

### 1️⃣ Clone the repository

```sh
git clone https://github.com/sempedia/TERRAFORM_AWS_AUTOMATION.git
cd TERRAFORM_AWS_AUTOMATION
```

### 2️⃣ Initialize Terraform

```sh
terraform init
```

### 3️⃣ Plan the deployment

```sh
terraform plan
```

### 4️⃣ Apply the changes

```sh
terraform apply
```
Type `yes` when prompted.

### 5️⃣ Destroy the infrastructure (if needed)

```sh
terraform destroy
```

## 🔧 Configuration

You can customize your infrastructure by editing terraform.tfvars or passing variables dynamically:

```sh
export TF_VAR_variable_name="value"
```

Key Configurable Variables
EC2 Instance Type
AWS Region
Security Group Rules
S3 Bucket Policies
VPC Subnets and Routes
GitHub Repository Name & Settings

## Project Structure
```
TERRAFORM_AWS_AUTOMATION
.
├── C4_Diagram.puml
├── environments
│   └── qa
│       └── qa.auto.tfvars
├── main.tf
├── modules
│   ├── ec2
│   │   ├── data_sources.tf
│   │   ├── ec2.tf
│   │   ├── locals.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── eip
│   │   ├── eip_association.tf
│   │   ├── eip.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   ├── github
│   │   ├── github.tf
│   │   ├── providers.tf
│   │   └── variables.tf
│   ├── iam
│   │   └── iam.tf
│   ├── s3
│   │   ├── locals.tf
│   │   ├── outputs.tf
│   │   ├── random_id.tf
│   │   ├── s3_security.tf
│   │   └── s3.tf
│   └── vpc
│       ├── data_sources.tf
│       ├── internet_gateway.tf
│       ├── outputs.tf
│       ├── public_subnet.tf
│       ├── route_table.tf
│       ├── route.tf
│       ├── rt_association.tf
│       ├── vpc_security.tf
│       └── vpc.tf
├── outputs.tf
├── plans
│   └── instance_type_and_count.plan
├── plantuml.jar
├── providers.tf
├── README.md
├── scripts
│   ├── user_data
│   └── variables.tf
├── system_design
│   └── C4_Diagram.png
├── terraform.tfvars
└── variables.tf

13 directories, 40 files
```

## 📝 Notes
- Terraform does not detect manual changes made in AWS Console unless refreshed.
- Ensure `.gitignore` prevents sensitive files (e.g., credentials) from being committed.

## 📜 License
This project is open-source under the MIT License.

Created by @sempedia 🚀