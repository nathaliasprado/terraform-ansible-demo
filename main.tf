terraform {  #configurações do terraform, como com qual provedor iremos nos conectar e quais os plugins que o terraform deve importar.
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" { #configurações relacionadas com o provedor, se tivermos múltiplos provedores teremos múltiplos deste blocos, um para cada provider.
  region  = "us-east-1"
}

resource "aws_instance" "app_server" { #configurações relacionadas com o recurso que queremos criar, podendo ser instâncias, bancos de dados, entre outras opções.
  ami           = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  key_name      = "iac-alura"

  tags = {
    Name = "Primeira Instância"
  }
}