#Create S3 buccket

resource "aws_s3_bucket" "b1" {
  bucket = "odiatoka-bucket"

  tags = {
    Name        = "My bucket1"
    Environment = "DevNext"
  }
  versioning {
    enabled = true
  }
}

# DESIRED -> KNOWN -> APPLY

