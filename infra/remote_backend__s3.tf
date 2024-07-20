terraform {
  backend "s3" {
    bucket = "devops-blog"
    key    = "devops-project-1/terraform.tfstate"
    region = "us-west-1""
  }
}
