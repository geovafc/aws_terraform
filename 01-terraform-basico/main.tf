//Fixar a versão do provider e do terraform
terraform {
  required_version = "0.15.5"


  required_providers {
    aws = {
      //      indica que é um provider oficial
      source  = "hashicorp/aws"
      version = "3.44.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
  //  OBS: se eu não tivesse feito a configuração: aws configure via cli, onde eu preenchi o meu
  //  Access Key ID e Secret Access Key  via linha de comando, eu teria que colocar esses valores aqui
  //  o que seria altamente inseguro ou então utilizando variáveis de ambiente
}

// criação de recurso: recurso do tipo aws_s3_bucket com o nome my-test-bucket pra identificar ele

//resource "aws_s3_bucket" "my-test-bucket" {
//  //
//  bucket = "my-tf-test-bucket-8398392883232323"
//  acl    = "private"
//
//  tags = {
//    Name        = "My bucket"
//    Environment = "Dev"
//    ManagedBy   = "Terraform"
//    Owner       = "Geovane Freitas Camara"
//    UpdatedAt   = "2021-06-08"
//  }
//
//}

// Permite criar, atualizar e excluir instâncias no EC2
resource "aws_instance" "web" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags
}