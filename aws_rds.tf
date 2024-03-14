resource "aws_db_instance" "wordpress_rds" {
  identifier           = "wordpress-db-instance"
  allocated_storage    = 20 # in GB
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t2.micro"
  username             = "${var.rds_username}"
  password             = "${var.rds_password}"
  parameter_group_name = "default.mysql8.0"
  deletion_protection  = false
  skip_final_snapshot  = true
  vpc_security_group_ids = ["${aws_security_group.http_mysql_ssh.id}"]

  tags = {
    Name = "${var.rds_name}"
  }
}
