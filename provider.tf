provider "aws" {
  region = "${var.region}"
}

# terraform {
#   backend "s3" {
#     bucket = "${aws_s3_bucket.hcva-terraform}"
#     key    = "path/to/key"
#     region = "${var.region}"
#   }
# }


# data "terraform_remote_state" "network" {
#   backend = "s3"


#   config {
#     bucket = "${aws_s3_bucket.hcva-terraform}"
#     key    = "network/terraform.tfstate"
#     region = "${var.region}"
#   }
# }

