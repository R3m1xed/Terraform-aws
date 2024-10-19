resource "aws_s3_bucket" "file_bucket" {
  bucket = "my-tf-file-bucket-${var.env}"
}