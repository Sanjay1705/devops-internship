# Terraform Local Practical – Variables, tfvars, and Outputs


This lab extends the basic Terraform workflow by introducing variables, tfvars files, and outputs. These features make Terraform configurations reusable, modular, and production-ready.


# Practical Task Overview:


**Goal:**
- Learn Terraform workflow with variables, outputs, and tfvars file.

### Steps:

1. Create a new folder:

   mkdir terraform-variables
   cd terraform-variables

2. Create main.tf:

   - Defines provider and resource using variables:
     terraform {
       required_providers {
         local = {
           source  = "hashicorp/local"
           version = "~> 2.0"
         }
       }
     }

     provider "local" {}

     resource "local_file" "example" {
       content  = var.file_content
       filename = "${path.module}/${var.file_name}"
     }

3. Create variables.tf:

   - Defines input variables:
     variable "file_name" {
       description = "The name of the file"
       type        = string
       default     = "hello.txt"
     }

     variable "file_content" {
       description = "The file content"
       type        = string
       default     = "Learning Terraform Variables!"
     }

4. Create outputs.tf:

   - Displays file path after apply:
     output "file_path" {
       description = "Path of the file created"
       value       = local_file.example.filename
     }

5. Initialize Terraform
   terraform init

6. Validate Configuration
   terraform validate

7. Preview Plan
   terraform plan

8. Apply Changes
   terraform apply
   - Confirm with 'yes'
   - Verify file exists and content is correct

9. Create terraform.tfvars
   - Override default values:
     file_name    = "greeting.txt"
     file_content = "Hello from tfvars file!"

   - Run: terraform plan → terraform apply

10. Destroy Resources
    terraform destroy

### Learning Outcomes:
-

Step 1: Folder Setup
- Isolates state and config files for clean project management

Step 2–3: Variables
- Avoids hardcoding, enables reuse across environments

Step 4: Outputs
- Shares values across modules or pipelines (e.g., EC2 IPs)

Step 5–7: Workflow
- Reinforces Terraform lifecycle: init → validate → plan → apply → destroy

Step 8–9: tfvars
- Demonstrates environment-specific overrides without editing main.tf

Step 10: Cleanup
- Prevents resource clutter and billing in cloud environments

Outcome:

By completing this lab, you will:
- Understand how variables and tfvars make configs reusable
- Learn how outputs are used to share values
- Build strong Terraform fundamentals before moving to cloud resources
