# Terraform Local Practicals 


This lab deepens your Terraform fundamentals using the local provider. Each practical introduces a new concept—functions, conditionals, loops, and dynamic content generation—without requiring cloud access. Ideal for interns building confidence before moving to AWS or other providers.



### Practical 1 – Functions Basics
- Goal: Use built-in functions like upper, lower, format, join

**Steps:**
1. Create main.tf write this code :
```hcl
terraform {
  required_providers { local = { source = "hashicorp/local", version = "~> 2.0" } }
}
provider "local" {}

resource "local_file" "f" {
  filename = "${path.module}/func.txt"
  content  = join("\n", [
    upper("terraform"),
    lower("INTERN"),
    format("Hi %s","Team"),
    join(", ", ["aws","linux","terraform"])
  ])
}
```

2. Initialize Terraform :
   ```bash
   terraform init
   ```

3. See what Terraform will do:
   ```bash
   terraform plan
   ```

4. Apply the configuration :
   ```bash
   terraform apply -auto-approve
   ```

5. Inspect the generated file:
   ```bash
   cat func.txt
   ```


### Practical 2 – Conditionals (Environment Switch)
- Goal: Switch content using ` ? : ` (ternary conditional expression).

**Steps:**

1. Add this code in main.tf:
```hcl
resource "local_file" "env" {
  filename = "${path.module}/env.txt"
  content  = var.environment == "dev" ? "Using t2.micro" : "Using t3.medium"
}
```
2. Add this code in variable.tf:
```hcl
variable "environment" { type = string, default = "dev" }
```

3. Initialize:
   ```bash
   terraform init
   ```

4. Plan & apply :
   ```bash
   terraform plan
   terraform apply -auto-approve
   cat env.txt 
   ```

5. Clean up:
   ```bash
   terraform destroy -auto-approve
   rm -f .terraform.lock.hcl .terraform/* env.txt
   ```

### Practical 3 – For Expression (List Transformation)
- Goal: Loop through a list of names and generate greetings

1. Add this code into main.tf:
    ```hcl
    locals {
      hello_list = [for n in var.names : format("Hello %s", upper(n))]
    }
    
    resource "local_file" "greetings" {
      filename = "${path.module}/greetings.txt"
      content  = join("\n", local.hello_list)
    }
    ```
2. Add this code in variable.tf:
```hcl
variable "names" {
  type    = list(string)
  default = ["sanjay","harjeet","dhaval"]
}
```

3. Initialize & apply:
   ```bash
   terraform init
   terraform apply -auto-approve   # (After this command greetings.txt file is generated as an output)
   ```

3. Clean up:
   ```bash
   terraform destroy -auto-approve
   rm -f .terraform.lock.hcl .terraform/* greetings.txt
   ```

### Learning Outcomes:

By completing the practicals included in the uploaded PDF, you will be able to:
- Use different Terraform functions (like changing words to uppercase/lowercase, joining text, or formatting strings) to prepare values before using them.
- Use ternary conditionals (`cond ? true_val : false_val`) to switch configuration behavior based on variables. 
- Create and use for-loops in Terraform to repeat tasks or make new lists from existing ones.
- Work with the local provider to create files on your own computer and test Terraform without needing cloud access.
- Run the basic Terraform workflow: `init` → `plan` → `apply` → `destroy` and understand what each step does.
- Solve small issues like plugin errors, file permission problems, or state cleanup when running Terraform.


