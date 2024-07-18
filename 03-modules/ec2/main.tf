resource "aws_instance" "test" {
  ami           = "ami-041e2ea9402c46c32"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-0a0ad57f3e45d4556"]

  tags = {
    Name = "test"
  }
}

output "private_ip" {
    value = aws.instance.test.privat_ip

    }