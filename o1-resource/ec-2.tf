resource "aws_instance" "web" {
  ami           = ami- "ami-036c2987dfef867fb"
  instance_type = "t3.micro"

  tags = {
    Name = "demo instance"
  }
}