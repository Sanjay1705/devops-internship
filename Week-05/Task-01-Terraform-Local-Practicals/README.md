# Terraform Local Practicals – 10 Hands-On Tasks with Explanations


This lab deepens your Terraform fundamentals using the local provider. Each practical introduces a new concept—functions, conditionals, loops, and dynamic content generation—without requiring cloud access. Ideal for interns building confidence before moving to AWS or other providers.


Practical Summaries:
--------------------

Practical 1 – Functions Basics
- Goal: Use built-in functions like upper, lower, format, join
- Outcome: Learn how Terraform transforms strings and lists dynamically

Practical 2 – Conditionals (Environment Switch)
- Goal: Use ternary operator to switch content based on variable
- Outcome: Understand how to deploy different environments using one config

Practical 3 – For Expression (List Transformation)
- Goal: Loop through a list of names and generate greetings
- Outcome: Learn how to reshape data and automate repetitive tasks

Practical 4 – Dynamic Blocks (Not included in preview)
- Goal: Use dynamic blocks to conditionally generate nested configs
- Outcome: Understand advanced HCL constructs for modularity

Practical 5 – Locals
- Goal: Define reusable expressions using `locals`
- Outcome: Improve readability and reduce duplication in configs

Practical 6 – File Interpolation
- Goal: Use variables and functions to generate file content
- Outcome: Learn how to build dynamic file outputs for CI/CD or documentation

Practical 7 – Multiple Resources
- Goal: Create multiple files using count or for_each
- Outcome: Understand resource scaling and iteration

Practical 8 – Nested Loops
- Goal: Generate matrix-style outputs using nested for expressions
- Outcome: Learn how to model complex data structures

Practical 9 – Conditional Resource Creation
- Goal: Use `count` with conditionals to toggle resource creation
- Outcome: Build flexible infrastructure that adapts to input

Practical 10 – Output Formatting
- Goal: Format outputs for readability and downstream use
- Outcome: Learn how to expose useful values to other modules or teams

Learning Outcomes:
------------------

- Master Terraform syntax: HCL, variables, outputs, locals, loops
- Build reusable, modular configurations
- Understand how Terraform transforms data before provisioning
- Prepare for cloud-based Terraform workflows (AWS, Azure, GCP)
- Gain confidence in debugging and interpreting Terraform plans

Usage Notes:
------------
- Each practical is self-contained and can be run independently
- Use `terraform init`, `plan`, `apply`, and `destroy` in each folder
- Modify variables to test different scenarios
- Check generated files for expected content and structure

Cleanup:
--------
- Delete generated `.txt` files after each run
- Remove `.terraform` folders to reset state
- Use `terraform destroy` to clean up resources
