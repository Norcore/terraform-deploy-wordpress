resource "aws_s3_bucket_acl" "media-files" {
  bucket    = "bucket-for-media-files"
  acl       = "private"
}
