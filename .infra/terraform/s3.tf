resource "aws_s3_bucket" "cv_app" {
  bucket = "cv-website-bucket"
  acl    = "private"
}
