terraform {
  backend "s3" {
    bucket = "manohar-hello-world-state"
    key    = "hello-fargate/terraform.tfstate"
    region = "us-east-1"
  }
}
