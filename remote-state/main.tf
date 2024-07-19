resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "naifah"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}