data "aws_vpc" "selected" {
  default = true
}



data "aws_ami" "myami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["packer-example*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["self"] # Canonical
}
