# We expect all resources to adhere to our tagging standard of providing a 
# `Team` for the owning team name

# This is an example of a resource that correctly adheres to the standard.
resource "aws_s3_bucket" "allowed" {
  bucket = "my-tutorial-bucket"
  acl    = "private"
  
  tags = {
    Team = "rocket"
  }
}

# This fails as no tags are provided.
resource "aws_s3_bucket" "allowed" {
  bucket = "my-tutorial-bucket"
  acl    = "private"
}

# This fails as only Cost_Center is provided, Team is missing.
# This is an example of a resource that correctly adheres to the standard
resource "aws_s3_bucket" "allowed" {
  bucket = "my-tutorial-bucket"
  acl    = "private"
  
  tags = {
    Cost_Center = "abc-123"
  }
}
