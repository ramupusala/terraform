variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
  type = string
  default = "ami-0c293f3f676ec4f90"
}

variable "ins_typ" {
  type = string
  default = "t2.micro"
}

variable "subnet" {
  type = string
  default = "subnet-004c87c456000b3b5"
}
