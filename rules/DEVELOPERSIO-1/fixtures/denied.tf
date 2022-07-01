resource "aws_s3_bucket" "denied" {
  bucket = "my-tutorial-bucket"
  acl    = "private"

  tags = {
    Cost_Center = "abc-123"
  }
}

