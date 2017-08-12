resource "aws_db_instance" "death-db-mysql" {
    allocated_storage = 10
    engine = "mariadb"
    engine_version = "10.0.31"
    instance_class = "db.t2.micro"
    name = "death-db-dev"
    username = "death-db-user"
    password = "Booyah123" #this is an example only and will not be used in production, we're not that slow ;)
}

# resource "aws_rds_cluster_instance" "AuroraDeathAppProduction" {
#     count = 2
#     identifier = "aurora-cluster-${count.index}"
#     cluster_identifier = "${aws_rds_cluster.default.id}"
#     instance_class = "db.r3.medium"
# }

# resource "aws_rds_cluster" "default" {
#     cluster_identifier = "aurora-death-app-production"
#     availability_zones = ["us-east-1c", "us-east-1e"]
#     database_name = "death-db"
#     master_username = "death-db-user"
#     master_password = "Booyah123"  #this is an example only and will not be used in production, we're not that slow ;)
# }
