bucket_name = "devops-blog"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-us-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-west-1a", "us-west-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDpU1ZAwtTsoi4ZzBH0VYpZOu9hozhouUXG7fZ1VLBP7pFy/6iI0eY35LH2Wp+D5vMZZh/Ms+QSw3JuqcOBmUyyELqz3Z/7QanpRBOkZ+lCjkSHUunc7KGaGyTfVtavGngQfPFNB3SDc08OuNo6b7FDW6k4Sq9Fnlgb3FBdlhmCLcdh6W0E36Q0bR2nEeUMflRdsoTGs210hn/ByOnLTSx8VwVttWkdpLxpgHjk9txcNPY7g5TGjUrwbfxocYSuxAXPwZMRRthwbD68IDWgJKMrsUBJrEswKOLgl0nrMJEPRfNsxYjw9xmVdHvz24tvCLH3ICHHJ3373YdOyQ6kNHEnLBXHT9E2JpspSApjtfsStvQcq5BdgCWfnLDSNDbyTqK0nXnxqpllBpSRBfGpxWPpyPuRhqod4Hk+nyknzT+MYHq9gFfuH9zwc4s8Hd41ruWfk5Dz6ZbCG9ZYKtCuaSHiYDg573lTC8+ow1pPxLW8SvfXvN1M5XsTH6K5cXaWKME= hooseboi@debian"

ec2_user_data_install_ngix = ""

domain_name = "cloudsmithlabs.com"

ec2_ami_id = "ami-0ecaad63ed3668fca"
