### Input Variables


No Terraform, as input variables são variáveis que podem ser passadas para uma configuração do Terraform. 
As input variables são usadas para tornar a configuração do Terraform mais flexível e reutilizável.

As input variables podem ser criadas de várias maneiras:

#### Através do bloco variable
O bloco variable é usado para definir uma input variable. O bloco variable tem os seguintes campos:

* **name:** O nome da variável.
* **type:** O tipo da variável.
* **default:** O valor padrão da variável.
Aqui está um exemplo de como criar uma input variable através do bloco variable:

```terraform
variable "instance_type" {
  type = string
  default = "t2.micro"
}
```

Este código define uma input variable chamada instance_type. A variável é do tipo string e seu valor padrão é t2.micro.

#### Através do arquivo terraform.tfvars
O arquivo terraform.tfvars é um arquivo de texto que contém as definições das input variables. As variáveis definidas no arquivo terraform.tfvars têm precedência sobre as variáveis definidas nos blocos variable.

Aqui está um exemplo de como criar uma input variable através do arquivo terraform.tfvars:

```terraform
instance_type = "t2.large"
```

Este código define uma input variable chamada instance_type. A variável é do tipo string e seu valor é t2.large.

#### Através da linha de comando
Você também pode definir input variables através da linha de comando. Para fazer isso, use a opção -var ou -var-file.

Aqui está um exemplo de como definir uma input variable através da linha de comando:

```terraform
terraform init -var instance_type=t2.large
```
Este comando define uma input variable chamada instance_type. A variável é do tipo string e seu valor é t2.large.

#### Exemplo

Vamos imaginar que você deseja criar uma configuração do Terraform para criar uma instância EC2. Você pode usar uma input variable para especificar o tipo de instância EC2 que será criada.

Aqui está um exemplo de como usar uma input variable para criar uma instância EC2:

```terraform
variable "instance_type" {
  type = string
  default = "t2.micro"
}

resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = var.instance_type
}
```

Este código define uma input variable chamada instance_type. A variável é do tipo string e seu valor padrão é t2.micro.

O código também cria um recurso aws_instance chamado example. O recurso aws_instance é usado para criar uma instância EC2.

A variável instance_type é usada para especificar o tipo de instância EC2 que será criada. Se você não fornecer um valor para a variável instance_type, o valor padrão t2.micro será usado.

Você pode usar as input variables para tornar suas configurações do Terraform mais flexíveis e reutilizáveis.

### Output Variables

