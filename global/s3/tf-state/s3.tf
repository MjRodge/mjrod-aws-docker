# Configure an S3 bucket resource to hold application state files
resource "aws_s3_bucket" "terraform_state" {
  bucket = "<ENTER-A-GLOBALLY-UNIQUE-BUCKET-NAME-HERE>"  

  # Enable server-side encryption by default
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

  # Add bucket versioning for state rollback
resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}