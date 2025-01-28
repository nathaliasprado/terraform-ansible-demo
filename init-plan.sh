#!/bin/bash

# Caminho para o diretório onde está o código do Terraform
terraform_dir="/home/nathaliaprado/repositorios/ansible-terraform-curso"

# Mudar para o diretório do Terraform
cd $terraform_dir

# Inicializar o Terraform (se já estiver inicializado, não fará nada)
terraform init

# Visualizar as mudanças no terminal
terraform plan