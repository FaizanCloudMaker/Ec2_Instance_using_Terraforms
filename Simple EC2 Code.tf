provider "aws" {
  region     = "us-east-1"
  access_key = "Your Access Key"
  secret_key = "Your Secret Key"
}

resource "aws_instance" "Name" {

ami = "ami-05c13eab67c5d8861"

instance_type = "t2.micro"

tags = {

    Name = "Your Instance Name"
}

  
}
