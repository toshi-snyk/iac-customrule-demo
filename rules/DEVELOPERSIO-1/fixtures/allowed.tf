resource "aws_s3_bucket" "allowed" {
  bucket = "my-tutorial-bucket"
  acl    = "private"

  tags = {
    Team = "rocket"
  }
}

