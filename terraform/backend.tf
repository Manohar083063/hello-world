terraform {
  backend "s3" {
    bucket = "YOUR-TF-STATE-BUCKET"
    key    = "hello-fargate/terraform.tfstate"
    region = "us-east-1"
  }
}
