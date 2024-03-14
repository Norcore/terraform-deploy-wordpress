resource "aws_db_instance" "wordpess_db" {
  identifier           = "wordpress-db-instance"
  allocated_storage    = 20 # in GB
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0" # Specify the version you need
  instance_class       = "db.t2.micro" # Choose the instance class
  username             = "${var.mysql_username}" # Master username
  password             = "${var.mysql_password}" # Master password
  parameter_group_name = "default.mysql8.0"
  deletion_protection  = false
  skip_final_snapshot  = true
  vpc_security_group_ids = ["sg-0d94aa55b76be9fd6"]

  tags = {
    Name = "${var.mysql_name}"
  }
}
