resource "aws_db_instance" "death_mysql" {
  allocated_storage = 10
  engine            = "mariadb"
  engine_version    = "10.0.31"
  instance_class    = "db.t2.micro"
  name              = "DeathDbDev"
  username          = "DeathDbUser"
  password          = "${var.db_password}"

  tags {
    CreatedBy = "${var.created_by}"
  }
}
