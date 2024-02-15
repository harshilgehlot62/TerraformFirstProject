provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  #count         = 2
  ami           = "ami-051f7e7f6c2f40dc1"
  instance_type = "t2.micro"
  tags =  "TerraformusingJenkins"
  #availability_zone = element(["us-east-1a", "us-east-1b"], count.index)  # Specify different AZs for each instance
  key_name      = "mymac"
}