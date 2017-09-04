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

resource "aws_s3_bucket" "hcva-photos-dev" {
  bucket = "hcva-photo-processing-dev"
  acl    = "public"

  tags {
    Name        = "HC Photo Processing for AI"
    Environment = "Dev"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-photos-test" {
  bucket = "hcva-photo-processing-test"
  acl    = "public"

  tags {
    Name        = "HC Photo Processing for AI"
    Environment = "Test"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-photos-prod" {
  bucket = "hcva-photo-processing-prod"
  acl    = "public"

  tags {
    Name        = "HC Photo Processing for AI"
    Environment = "Prod"
    CreatedBy   = "${var.created_by}"
  }
}
