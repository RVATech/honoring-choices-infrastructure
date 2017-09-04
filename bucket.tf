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
  bucket = "hcva-ai-photo-dev"
  acl    = "public-read"

  tags {
    Name        = "HC Photo Processing for AI Dev"
    Environment = "Dev"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-photos-test" {
  bucket = "hcva-photo-processing-test"
  acl    = "public-read"

  tags {
    Name        = "HC Photo Processing for AI Testing"
    Environment = "Test"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-photos-prod" {
  bucket = "hcva-photo-processing-prod"
  acl    = "public-read"

  tags {
    Name        = "HC Photo Processing for AI Production"
    Environment = "Production"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-ng-site-dev" {
  bucket = "dev.honoringchoices-va.org"
  acl    = "public-read"

  tags {
    Name        = "HC Angular Site for Dev"
    Environment = "Dev"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-ng-site-test" {
  bucket = "qa.honoringchoices-va.org"
  acl    = "public-read"

  tags {
    Name        = "HC Angular Site for Test"
    Environment = "Test"
    CreatedBy   = "${var.created_by}"
  }
}

resource "aws_s3_bucket" "hcva-ng-site-prod" {
  bucket = "honoringchoices-va.org"
  acl    = "public-read"

  tags {
    Name        = "HC Angular Site for Dev"
    Environment = "Production"
    CreatedBy   = "${var.created_by}"
  }
}