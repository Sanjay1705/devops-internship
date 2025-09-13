 terraform {
  required_providers { local = { source = "hashicorp/local", version = "~> 2.0" } }
 }
 provider "local" {}
#resource "local_file" "demo" {  # BEFORE

resource "local_file" "file_a" {  #AFTER
  filename = "${path.module}/state-demo.txt"
  content  = "hello-state"
 }
