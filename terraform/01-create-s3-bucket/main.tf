## =============================================================================
#  Create S3 Bucket                                                            #
## =============================================================================
resource "aws_s3_bucket" "rf-tf-test-bucket" {
  bucket = "rf-tf-test-bucket"
  acl    = "private"
  versioning {
    enabled = false
  }

    tags = {
    Name        = "My S3 Bucket"
  }
}
