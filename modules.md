### Modules

No Terraform, um **módulo** é um conjunto de recursos e dados que podem ser usados em várias configurações do Terraform. 
Os módulos são uma maneira de organizar e reutilizar o código do Terraform.

Para importar um módulo do GitHub, por exemplo, você precisa primeiro especificar o URL do módulo. 
Você pode fazer isso usando o bloco module no arquivo de configuração do Terraform.

Aqui está um exemplo de como importar um módulo do GitHub:

```terraform
module "my_module" {
  source = "git::https://github.com/hashicorp/terraform-aws-example"
}
```

Este código importa o módulo terraform-aws-example do GitHub. O módulo terraform-aws-example fornece recursos para criar uma instância EC2 e um banco de dados RDS.

Depois de importar o módulo, você pode usá-lo em sua configuração do Terraform.
Por exemplo, para criar uma instância EC2 usando o módulo terraform-aws-example, você pode usar o seguinte código:

```terraform

module "my_module" {
  source = "git::https://github.com/hashicorp/terraform-aws-example"

  instance_type = "t2.micro"
  ami = "ami-0123456789abcdef0"
}
```


Este código cria uma instância EC2 usando o módulo terraform-aws-example. 
O AMI é a imagem da máquina virtual que será usada para criar a instância. 
O tipo de instância determina os recursos de computação, memória e armazenamento que serão alocados para a instância.

Você pode encontrar uma lista de módulos disponíveis no Terraform Registry.

Aqui estão alguns dos benefícios do uso de módulos no Terraform:

- Reutilização: Você pode usar o mesmo módulo em várias configurações do Terraform.
- Escalabilidade: Você pode usar módulos para gerenciar grandes quantidades de recursos.
- Segurança: Os módulos podem ser usados para implementar controles de segurança.
No geral, os módulos são uma ferramenta poderosa que pode ajudá-lo a gerenciar sua infraestrutura de maneira mais eficiente e eficaz.

#### Exemplo

Vamos imaginar que você deseja criar uma configuração do Terraform para gerenciar um servidor web na AWS. 
Você pode usar o seguinte módulo para criar a instância EC2 e o volume EBS para o servidor web:

```terraform
module "web_server" {
  source = "git::https://github.com/hashicorp/terraform-aws-example"

  instance_type = "t2.micro"
  ami = "ami-0123456789abcdef0"

  volume_size = 100
}

```
Este módulo fornece as seguintes configurações:

* instance_type: O tipo de instância EC2 que será criada.
* ami: A imagem da máquina virtual que será usada para criar a instância.
* volume_size: O tamanho do volume EBS que será criado.

Você pode usar este módulo em sua configuração do Terraform da seguinte forma:

```terraform
module "web_server" {
  source = "git::https://github.com/hashicorp/terraform-aws-example"
}

resource "aws_eip" "web_server" {
  instance = module.web_server.instance_id
}

resource "aws_route53_record" "web_server" {
  name = "example.com"
  type = "A"
  ttl = 300
  alias {
    name = aws_eip.web_server.address
    zone_id = "Z00000000000000000000"
  }
}
```

Este código cria uma instância EC2 usando o módulo web_server. 
O módulo web_server fornece as configurações necessárias para criar a instância EC2.

Em seguida, o código cria um endereço IP Elastic (EIP) para a instância EC2. O endereço IP Elastic permite que você acesse a instância EC2 da Internet.

Por fim, o código cria um registro DNS para o domínio example.com. O registro DNS aponta para o endereço IP Elastic da instância EC2.
