provider "aws" {
  region= var.region
  access_key = "AKIAZVYNUFBB4SJUUW5F"
  secret_key = "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"
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
