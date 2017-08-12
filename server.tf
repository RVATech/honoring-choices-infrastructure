resource "aws_instance" "HC" {
    ami = "ami-d15a75c7" # Ubuntu 16.04 LTS
    availability_zone = "us-east-1c"
    instance_type   = "t2.micro"
    key_name = "Honoring-Choices-WebServer"
    monitoring = false
    vpc_security_group_ids = ["subnet-1d1c8e55"]
    tags {
        AppName = "DeathApp"
    }

}
