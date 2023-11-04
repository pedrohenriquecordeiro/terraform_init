# Terraform


### Comandos Básicos

Os comandos init, plan, apply e destroy são os principais comandos do Terraform. Eles são usados para gerenciar a infraestrutura configurada pelo Terraform.

- **init**: O comando init inicializa o workspace do Terraform. Ele cria um arquivo terraform.tfstate que armazena o estado da infraestrutura gerenciada pelo Terraform.

```bash 
terraform init
```

- **plan**: O comando plan gera um plano de implantação. O plano mostra as alterações que o Terraform fará na infraestrutura para atender à configuração do usuário.

```bash
terraform plan
```

- **apply**: O comando apply aplica o plano de implantação. Ele cria, atualiza ou remove recursos na infraestrutura para atender à configuração do usuário.

```bash
terraform apply
```
```bash
terraform apply -auto-approve
```

- **destroy**: O comando destroy remove todos os recursos configurados pelo Terraform.

```bash
terraform destroy
```
```bash
terraform destroy -auto-approve
```

### Terraform State


O Terraform State é um arquivo que armazena informações sobre os recursos criados pelo Terraform. Este arquivo é usado pelo Terraform para determinar quais recursos precisam ser criados, atualizados ou removidos.

O Terraform State é armazenado por padrão em um arquivo local chamado terraform.tfstate. Este arquivo é criado automaticamente quando você executa o comando terraform init.

Para trabalhar em equipe utilizando o Terraform State, você pode armazená-lo em um repositório de controle de versão, como o Git. Isso permite que todos os membros da equipe tenham acesso ao mesmo arquivo de estado e que as alterações sejam rastreadas e controladas.

