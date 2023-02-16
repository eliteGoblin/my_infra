terraform {
  backend "s3" {
    bucket = "myinfra-state"
    encrypt = "true"
    key     = "terraform_state/terraform.tfstate"
  }
}
