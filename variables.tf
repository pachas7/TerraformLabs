variable "aws_access_key" {
  type = "string"
}

variable "aws_secret_key" {
  type = "string"
}

variable "webpage" {
  type = "string"
#  default = "ola k ase"
}

variable "instance_type"{
  type = "string"
  default = "t2.micro"
}

variable "project_name"{
  type = "string"
  default = "TerraformLabs"
}
