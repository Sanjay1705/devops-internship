Terraform State – 3 Local Practicals (Basics)
=============================================

This lab introduces interns to the concept of Terraform state. It covers how state is created, how it stores resource metadata, how renames are handled, and how drift is detected when changes occur outside Terraform.

Folder Structure Suggestion:
----------------------------
Terraform-State-Basics/
├── README
├── practical-01-state-basics/
│   ├── main.tf
│   └── terraform.tfstate
├── practical-02-rename-resource/
│   ├── main.tf (before and after rename)
│   └── terraform.tfstate
├── practical-03-drift-detection/
│   ├── main.tf
│   └── state-demo.txt
└── screenshots/
    └── state-inspection.png

Practical Summaries:
--------------------

Practical 1 – State Basics: Create, Inspect, Understand
- Goal: Observe how terraform.tfstate is created and what it stores
- Commands: terraform init → plan → apply → state list → state show → show
- Outcome: Understand how Terraform tracks resource addresses, IDs, and attributes

Practical 2 – Rename Resource Without Recreate
- Goal: Safely rename a resource in code without destroying it
- Commands: terraform plan → terraform state mv → terraform plan
- Outcome: Learn how to update state manually to reflect code changes

Practical 3 – Drift & Refresh: Detect Outside Changes
- Goal: Detect and reconcile changes made outside Terraform
- Commands: Modify file manually → terraform plan → terraform apply
- Outcome: Understand how Terraform compares real-world resources with state

Learning Outcomes:
------------------

- Understand the role of terraform.tfstate as Terraform’s memory
- Learn how to inspect and interpret state files using CLI commands
- Safely rename resources using terraform state mv
- Detect and fix drift between declared and actual infrastructure
- Gain confidence in managing local state before moving to remote backends

Usage Notes:
------------
- Each practical is self-contained and can be run independently
- Use terraform init, plan, apply, and destroy in each folder
- Use terraform state commands to inspect and manipulate state
- Avoid manual changes to state files unless absolutely necessary

Cleanup:
--------
- Delete generated files after each run
- Remove terraform.tfstate to reset state (only for learning purposes)
- Use terraform destroy to clean up resources