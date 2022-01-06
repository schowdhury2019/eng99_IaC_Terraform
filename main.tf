# Let Terraform know who is our cloud provider

# AWS plugins/dependancies are installed
provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "app_instance" {
  # AMI id for 18.04LTS
  ami = "ami-07d8796a2b0f8d29c"

  instance_type               = "t2.micro"
  associate_public_ip_address = true
  tags = {
    Name = "eng99_sunny_terraform_app"
  }
  # Allows terraform to use eng99.pem to connect to instance
  # Looks in .ssh folder
  key_name = "eng99"


}

# terraform plan
# terraform apply
