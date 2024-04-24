resource "aws_s3_bucket" "state_bucket" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  tags = {
    Name = "${var.bucket_name}-terraform-state"
  }
}
