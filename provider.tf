terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.0.0"
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.4.3"
    }
    tls = {
      source = "hashicorp/tls"
      version = ">= 4.0.4"
    }
    hcp = {
      source = "hashicorp/hcp"
      version = ">= 0.50.0"
    }
  }
}

provider "hcp" {}
provider "tls" {}
provider "random" {}
provider "aws" {
  region  = var.region
  default_tags {
   tags = {
     environment = var.environment
     application = "MyApp"
     owner       = "Troy"
     costcenter  = "1234"
   }
 }
}