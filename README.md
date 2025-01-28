# Terraform e Ansible - Demo de Automação

Este repositório demonstra o uso integrado de **Terraform** e **Ansible** para provisionar e configurar recursos na nuvem AWS de forma automatizada.

## 🛠️ Tecnologias Utilizadas
- **Terraform:** Provisionamento de infraestrutura (versão ~> 4.16).
- **Ansible:** Gerenciamento de configuração e automação.
- **AWS:** Fornecimento de instâncias EC2.

## 📂 Estrutura do Repositório
- `main.tf`: Configuração do Terraform para provisionar uma instância EC2 na AWS.
- `hosts.yml`: Arquivo de inventário do Ansible com o IP da instância.
- `playbook.yml`: Playbook do Ansible para configurar a instância (instalação de dependências e configuração de um servidor Django).
- `initi-plan.sh`: Script para inicializar e planejar as mudanças no Terraform.
- `.gitignore`: Exclusões padrão para Terraform e arquivos sensíveis.

## 🚀 Como Utilizar
### Pré-requisitos
1. **Terraform** instalado ([guia de instalação](https://developer.hashicorp.com/terraform/downloads)).
2. **Ansible** instalado ([guia de instalação](https://docs.ansible.com/ansible/latest/installation_guide/)).
3. Chave SSH configurada para acesso à instância EC2.
4. Credenciais da AWS configuradas no ambiente (`~/.aws/credentials`).

### Passos
1. Clone este repositório:
   ```bash
   git clone https://github.com/seu-usuario/terraform-ansible-demo.git
   cd terraform-ansible-demo
   ```
2. Inicialize o Terraform:
   ```bash
   terraform init
   ```
3. Planeje as alterações:
   ```bash
   terraform plan
   ```
4. Aplique as alterações para provisionar a instância:
   ```bash
   terraform apply
   ```
5. Execute o playbook Ansible para configurar a instância:
   ```bash
   ansible-playbook -i hosts.yml playbook.yml
   ```

## 📖 Funcionalidades
- Provisionamento automático de uma instância EC2 na AWS usando Terraform.
- Configuração da instância com Ansible:
  - Instalação de Python e dependências.
  - Criação de um projeto Django básico.
  - Configuração de um servidor HTTP com BusyBox.

## 🤝 Contribuições
Sinta-se à vontade para abrir issues ou pull requests para melhorar este repositório.

## 📚 Origem do Projeto
Este projeto foi desenvolvido como parte do curso **"Infraestrutura como código: preparando máquinas na AWS com Ansible e Terraform"** da Alura.
