provider "aws" {
  region= var.region
  access_key =
  secret_key = 
}

resource "aws_instance" "server" {
    count = 4
  ami           = var.ami # us-east-1
  instance_type = var.ins_typ
  subnet_id = var.subnet

  tags = {
      Name = "app_server-${count.index+1}"
  }
}
 
output "ipadd" {
  value = "aws_instance.server.public.ip"
}
