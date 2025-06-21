aws_region       = "us-east-1"
name             = "SimpleTimeService"
vpc_cidr         = "10.0.0.0/24"
azs              = ["us-east-1a", "us-east-1b"]
public_subnets   = ["10.0.1.0/28", "10.0.2.0/28"]
private_subnets  = ["10.0.3.0/28", "10.0.4.0/28"]
secret_key       = "Provide secret key"
access_key       = "Provide access key"
