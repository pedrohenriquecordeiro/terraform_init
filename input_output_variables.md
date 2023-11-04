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


No Terraform, as output variables são variáveis que são definidas pelos recursos e módulos do Terraform. 
As output variables são usadas para retornar informações sobre os recursos e módulos.

#### Exemplo

Vamos imaginar que você deseja criar uma configuração do Terraform para criar uma instância EC2 e um volume EBS. 
Você pode usar uma output variable para retornar o ID da instância EC2.

Aqui está um exemplo de como usar uma output variable para retornar o ID da instância EC2:

```terraform
resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

output "instance_id" {
  value = aws_instance.example.id
}
```

Este código cria um recurso aws_instance chamado example. O recurso aws_instance é usado para criar uma instância EC2.

O código também define uma output variable chamada instance_id. A variável instance_id é usada para retornar o ID da instância EC2.

Você pode usar a variável instance_id em outra parte da sua configuração do Terraform ou em outras ferramentas. Por exemplo, você pode usar a variável instance_id para criar um registro DNS para a instância EC2.


### Local Variables

No Terraform, as local variables são variáveis que são definidas dentro de um bloco de código. 
As local variables são usadas para armazenar informações que são usadas apenas dentro do bloco de código.

#### Exemplo

Vamos imaginar que você deseja criar uma configuração do Terraform para criar uma instância EC2 e um volume EBS. 
Você pode usar uma local variable para armazenar o tamanho do volume EBS.

Aqui está um exemplo de como usar uma local variable para armazenar o tamanho do volume EBS:

```terraform
resource "aws_instance" "example" {
  ami = "ami-0123456789abcdef0"
  instance_type = "t2.micro"
}

locals {
  volume_size = 100
}

resource "aws_ebs_volume" "example" {
  size = local.volume_size
}
```

Este código cria um recurso aws_instance chamado example. 
O recurso aws_instance é usado para criar uma instância EC2.

O código também define uma local variable chamada volume_size. 
A variável volume_size é usada para armazenar o tamanho do volume EBS.

O código também cria um recurso aws_ebs_volume chamado example. 
O recurso aws_ebs_volume é usado para criar um volume EBS com o tamanho definido pela variável volume_size.


