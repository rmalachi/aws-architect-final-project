provider "aws" {
    region                    = "us-east-1"
    alias                     = "account_route53"
    shared_credentials_files  = [var.shared_credentials_files]
}