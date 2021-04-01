resource "aws_s3_bucket" "onebucket" {
   bucket = "s3-with-terraform-kp01"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}

