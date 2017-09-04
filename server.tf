data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"] # Ubuntu 16.04 LTS
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "HC-Dev" {
  ami               = "${data.aws_ami.ubuntu.id}"
  availability_zone = "us-east-1c"
  instance_type     = "t2.micro"
  key_name          = "Honoring-Choices-WebServer"
  monitoring        = false

  tags {
    AppName     = "DeathAppTest"
    Environment = "Dev"
    CreatedBy   = "${var.created_by}"
  }
}
