#we use to secure our state files with the help of Remote Backend, here we store all state files in S3 buckets
#which provides isolation, security & locking as well.
#S3 Bucket

resource "aws_s3_bucket" "enterprise_backend_state" {
  #the bucket name defines whether we store state of one environment or state of all environments

  bucket = "dev-app-backend-state-sanjay9027"
  lifecycle {
    prevent_destroy = true
  }
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
#Locking - through DynamoDB
resource "aws_dynamodb_table" "enterprise_backend_lock" {
  name         = "dev_app_locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"


  }
}