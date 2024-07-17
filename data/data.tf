data "aws_ami" "example" {
  executable_users = true
  most_recent      = true
  name_regex       = "RHEL-9-DevOps-Practice"
  owners           = ["973714476881"]
}


output "ami" {
    value = data.aws_ami.example
}