variable "environment" {
  type    = string
  default = "dev"
}

variable "names" {
  type    = list(string)
  default = ["sanjay","harjeet","dhaval"]
}
