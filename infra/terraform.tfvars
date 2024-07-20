bucket_name = "devops-blog"
name        = "environment"
environment = "dev-1"

vpc_cidr             = "10.0.0.0/16"
vpc_name             = "dev-proj-us-west-vpc-1"
cidr_public_subnet   = ["10.0.1.0/24", "10.0.2.0/24"]
cidr_private_subnet  = ["10.0.3.0/24", "10.0.4.0/24"]
us_availability_zone = ["us-west-1a", "us-west-1b"]

public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC03Kn6o3/iNWnaRJs3vvVNaI84ne/TW55E6fw3EegYT6k02l5iTr3xKADXxzY5yzl17l1VQ8VELsMsYlAQmwgHKhEL8XbWeJOB4oZLWHaiiVK1E5NfjjrLzElOVPKdW8q5iMoQa+GG0eDIaWIYmOMuQgpcGK7FmwKWRxoE9qlv8szHRfBzryIv58zdGjO8ohN7qPiO18eiiXdeaYzPLpBHioasqs+NNu5U8gzcS39vokxwnaieZSebIdAeRQbnqFIPfK1iYNZZ9I/x6Pz5Ru9UwAH5p/A8sPxDF+N5fp56rnmLHm3+A15rTI/PN5T1qxDxC+a3PA04v4fMfC5pVHFN hooseboi@debian"

ec2_user_data_install_nginx = ""

domain_name = "cloudsmithlabs.com"

ec2_ami_id = "ami-026e3067cdba1273f"
