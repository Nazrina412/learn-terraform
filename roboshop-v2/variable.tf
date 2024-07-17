



variable "instance_type" {
    default = "t3.small"
}




variable "domain_name" {
    default = "naifah.online"

}

variable "components" {
    default = ["frontend", "catalogue", "mongo"]
}