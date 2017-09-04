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

resource "aws_dynamodb_table" "final_instr_dev" {
name = "FinalInstrDev"
read_capacity = 5
write_capacity = 5
hash_key = "InstructionId"

attribute{
  name = "InstructionId"
  type = "S"
}

tags {
  Name = "FinalInstrDev"
  Environment = "Dev"
  CreatedBy = "${var.created_by}"
}
}
