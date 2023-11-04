provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "instance-terraform" {
  ami = "ami-0e83be366243f524a"     
  instance_type = "t2.micro"

  tags = {
    Name = "instance-terraform"
  }
}

# O AMI é uma imagem da máquina virtual que 
# contém o sistema operacional e os aplicativos 
# que serão instalados na instância
