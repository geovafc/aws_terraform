//Vamos converter as opções definidas no main para variáveis

variable "aws_region" {
  type = string

  description = ""

  default = "eu-central-1"
}

variable "instance_ami" {
  type = string

  description = ""

  default = "ami-03c3a7e4263fd998c"
}

variable "instance_type" {
  type = string

  description = ""

  default = "t2.micro"
}

variable "instance_tags" {
  type = map(string)

  description = ""

  default = {
   Name =  "Ubuntu"
   Project =  "Curso AWS com Terraform"
  }
}