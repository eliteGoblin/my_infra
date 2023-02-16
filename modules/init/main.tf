resource "aws_s3_bucket" "state_store" {
  bucket        = "myinfra-state"
  acl           = "private"
  force_destroy = true

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "statelock-table" {
  name           = "myinfra-statelock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}