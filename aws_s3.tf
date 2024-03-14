resource "aws_s3_bucket_acl" "terra-mars" {
  bucket    = "${var.project_name}"
  acl       = "private"
}