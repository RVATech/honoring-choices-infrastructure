resource "aws_s3_bucket" "hcva-terraform" {
  bucket = "hcva-tfdata-tf-test"
  acl    = "private"

  tags {
    Name        = "HC VA Terraform Resource Bucket"
    Environment = "Infrastructure"
    CreatedBy   = "${var.created_by}"
  }

  versioning {
    enabled = true
  }
}
