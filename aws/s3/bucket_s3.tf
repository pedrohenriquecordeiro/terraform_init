resource "aws_s3_bucket" "bucket" {
    bucket = "terraform-bucket-phcj"
    tags = {
        Name         = "Development bucket"
        Environment  = "Dev"
    }
}

