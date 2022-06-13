resource "aws_dynamodb_table" "terraform_locks" {
  name         = "mjrod-aws-docker-terraform-state-lock-db"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"  
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "mjrod-aws-docker-terraform-state-lock-db"
  }
}