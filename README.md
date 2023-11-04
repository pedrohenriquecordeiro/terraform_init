## Terraform


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

-------------------------------------------------------------

### Terraform State


O Terraform State é um arquivo que armazena informações sobre os recursos criados pelo Terraform. Este arquivo é usado pelo Terraform para determinar quais recursos precisam ser criados, atualizados ou removidos.

O Terraform State é armazenado por padrão em um arquivo local chamado terraform.tfstate. Este arquivo é criado automaticamente quando você executa o comando terraform init.

Para trabalhar em equipe utilizando o Terraform State, você pode armazená-lo em um repositório de controle de versão, como o Git. Isso permite que todos os membros da equipe tenham acesso ao mesmo arquivo de estado e que as alterações sejam rastreadas e controladas.

### Remote Backend

O Remote Backend do Terraform é uma maneira de armazenar o **estado** do Terraform em um local remoto, como um servidor S3 da Amazon ou um banco de dados Azure. Isso pode ser útil para trabalhar em equipe, pois permite que todos os membros da equipe tenham acesso ao mesmo estado.

O Remote Backend do Terraform também pode ser útil para escalar suas operações do Terraform. Por exemplo, você pode usar um Remote Backend para armazenar o estado de um grande número de projetos.

Para usar o Remote Backend do Terraform, você precisa configurar um backend no arquivo de configuração do Terraform. O arquivo de configuração do Terraform é um arquivo YAML que contém informações sobre sua configuração do Terraform.

Aqui está um exemplo de como configurar um Remote Backend do Terraform para o S3 da Amazon:
'''terraform
terraform {
  backend "s3" {
    region = "us-east-1"
    bucket = "my-terraform-state"
    key = "terraform.tfstate"
  }
}
'''
Este código configura um backend chamado "s3" para o S3 da Amazon. O backend está configurado para usar a região "us-east-1" e o bucket "my-terraform-state". O key é o nome do arquivo de estado que será armazenado no S3.

Depois de configurar o backend, você pode usar o comando terraform init para inicializar o backend.

Aqui estão alguns benefícios do uso do Remote Backend do Terraform:

- Facilita o trabalho em equipe: Todos os membros da equipe podem ter acesso ao mesmo estado.
- Permite a escalabilidade: Você pode usar um Remote Backend para armazenar o estado de um grande número de projetos.
- Melhora a segurança: O estado do Terraform pode ser criptografado para aumentar a segurança.

