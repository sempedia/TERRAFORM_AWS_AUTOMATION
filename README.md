# EC2 Terraform Repo

This repository contains Terraform configurations to deploy an **AWS EC2 instance** using Infrastructure as Code (IaC).

## 📌 Features
- Creates an **Amazon Linux 2023** EC2 instance.
- Configures security groups for secure access.
- Uses Terraform variables for easy customization.
- Manages infrastructure changes efficiently.

## 🛠 Prerequisites
Before you begin, ensure you have:
- **Terraform** installed → [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
- **AWS CLI** configured → [AWS CLI Setup](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- An **AWS IAM User** with required permissions (EC2 and IAM).

## 🚀 Usage

### 1️⃣ Clone the repository

```sh
git clone git@github.com:sempedia/EC2_TF_Repo.git
cd EC2_TF_Repo
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

You can modify `var.tf` to customize:
- Instance type
- AWS region
- Security group rules

To pass variables dynamically, use:

```sh
export TF_VAR_variable_name="value"
```

## 📝 Notes
- Terraform does not detect manual changes made in AWS Console unless refreshed.
- Ensure `.gitignore` prevents sensitive files (e.g., credentials) from being committed.

## 📜 License
This project is open-source under the MIT License.

Created by @sempedia 🚀