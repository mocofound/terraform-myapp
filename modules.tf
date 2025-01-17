module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.6.0"
  bucket = "${var.prefix}-myapp-bucket-${var.environment}"
  acl    = "private"
}

# module "security-group" {
#   source  = "terraform-aws-modules/security-group/aws"
#   version = "4.16.2"
#   vpc_id = module.vpc.vpc_id
#   name        = "test-sg"
#   ingress_cidr_blocks      = ["10.10.0.0/16"]
#   ingress_rules            = ["https-443-tcp"]
#   ingress_with_cidr_blocks = [
#     {
#       from_port   = 8080
#       to_port     = 8090
#       protocol    = "tcp"
#       description = "User-service ports"
#       cidr_blocks = "10.10.0.0/16"
#     },
#     {
#       rule        = "postgresql-tcp"
#       cidr_blocks = "0.0.0.0/0"
#     },
#   ]
# }

# module "vpc" {
#   source  = "terraform-aws-modules/vpc/aws"
#   version = "3.18.1"
#   name = "test-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
# }