# Terraform Local Practical – First Hands-On

This lab introduces the Terrafor;m workflow using the local provider. Interns will create and manage a simple file on their machine—no cloud account required. It builds confidence in Terraform’s core commands and resource lifecycle.


### Practical Task Overview:


# Task: Create a Local File with Terraform

**Goal:**
- Understand Terraform’s workflow by creating a local file using the local_file resource.

### Steps:
1. Setup Project Folder
   - Create and navigate to terraform-local/

2. Write Terraform Configuration:

   - Define provider and resource in main.tf:
     terraform {
       required_providers {
         local = {
           source  = "hashicorp/local"
           version = "~> 2.0"
         }
       }
     }

     provider "local" {}

     resource "local_file" "hello" {
       content  = "Hello, Terraform Interns!"
       filename = "${path.module}/hello.txt"
     }

3. Initialize Terraform
   - Run: terraform init

4. Preview Changes
   - Run: terraform plan

5. Apply Configuration
   - Run: terraform apply -auto-approve
   - Verify: cat hello.txt

6. Destroy Infrastructure
   - Run: terraform destroy -auto-approve

### Learning Outcomes:


Step 1: Project Setup
- Importance of clean folder structure for Terraform

Step 2: Configuration
- Defining providers and resources in HCL

Step 3: Initialization
- How Terraform downloads plugins and prepares the project

Step 4: Planning
- Previewing infrastructure changes before applying

Step 5: Apply
- Creating and managing resources declaratively

Step 6: Destroy
- Cleaning up resources to avoid clutter or cost
