# Test case: resource (ec2) use default sg in default VPC, use default sg
# Expected: alert on the use of default sg
# ----- DOES NOT WORK, NEED TO FIX assign_ec2_fake_network_interface method in assignment_builder

provider "aws" {
}

resource "aws_instance" "ec2" {
  ami = "ami-07cda0db070313c52"
  instance_type = "t2.micro"
  tags = {
    Name = "Integration test - use case 1"
  }
}
