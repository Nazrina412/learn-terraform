
resource "aws_instance" "frontend" {
    for_each = var.components

  ami           = data.aws_ami.ami.image_id
  instance_type = each.value["instance_type"]
  vpc_security_group_ids = data.aws_security_groups.sg.ids

  tags = {
    Name = "$(each.key).dev"
  }
}


