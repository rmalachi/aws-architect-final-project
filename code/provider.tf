provider "aws" {
    region                    = "us-east-1"
    shared_credentials_files  = [var.shared_credentials_files]
}

provider "aws" {
    region                    = "eu-central-1"
    alias                     = "eu_env"
    shared_credentials_files  = [var.shared_credentials_files]
}
