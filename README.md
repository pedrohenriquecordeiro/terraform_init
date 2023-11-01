# Terraform


### Comandos Básicos

Os comandos init, plan, apply e destroy são os principais comandos do Terraform. Eles são usados para gerenciar a infraestrutura configurada pelo Terraform.

#### init

O comando init inicializa o workspace do Terraform. Ele cria um arquivo terraform.tfstate que armazena o estado da infraestrutura gerenciada pelo Terraform.

```bash 
terraform init
```

#### plan

O comando plan gera um plano de implantação. O plano mostra as alterações que o Terraform fará na infraestrutura para atender à configuração do usuário.

```bash
terraform plan
```

#### apply

O comando apply aplica o plano de implantação. Ele cria, atualiza ou remove recursos na infraestrutura para atender à configuração do usuário.

```bash
terraform apply
```

#### destroy

O comando destroy remove todos os recursos configurados pelo Terraform.

```bash
terraform destroy
```


