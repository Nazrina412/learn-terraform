variable "ami" {
    default = ami "ami-041e2ea9402c46c32"

}

variable "instance_type" {
    default = "t3.small"
}

variable "zone_id" {
    default = "Z03416193I6UORBOGZ0Y"
}


varibale "domain_name" {
    default = "naifah.online"

}

variable "vpc_security_group_ids" {
    default = ["sg-0a0ad57f3e45d4556"]
}