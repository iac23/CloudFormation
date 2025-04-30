terraform {
    backend "s3" {
        bucket = "db-terraform-state1"
        key = "global/s3/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "terraform-lock-file"

    }
}