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

resource "local_file" "env" {
  filename = "${path.module}/env.txt"
  content  = var.environment == "dev" ? "Using t2.micro" : "Using t3.medium"
}

locals {
  hello_list = [for n in var.names : format("Hello %s", upper(n))]
}

resource "local_file" "greetings" {
  filename = "${path.module}/greetings.txt"
  content  = join("\n", local.hello_list)
}
