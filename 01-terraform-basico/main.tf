//Fixar a versão do provider e do terraform
terraform {
  required_version = "0.15.5"


  required_providers {
    aws = {
//      indica que é um provider oficial
      source = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"
//  OBS: se eu não tivesse feito a configuração: aws configure via cli, onde eu preenchi o meu
//  Access Key ID e Secret Access Key  via linha de comando, eu teria que colocar esses valores aqui
//  o que seria altamente inseguro ou então utilizando variáveis de ambiente
}

// criação de recurso: recurso do tipo aws_s3_bucket com o nome my-test-bucket pra identificar ele

resource "aws_s3_bucket" "my-test-bucket" {
//
  bucket = "my-tf-test-bucket-839839288392839"
  acl = "private"

  tags = {
    Name = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }

}