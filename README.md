# Terraform AWS EKS Cluster

This Terraform project creates an Amazon EKS (Elastic Kubernetes Service) cluster on AWS.

## Terraform Files

 + ### 0-provider.tf

Creates an AWS provider configuration.

+ ### 1-vpc.tf

Creates a Virtual Private Cloud (VPC) in AWS using the `aws_vpc` resource.

+ ### 2-igw.tf

Creates an Internet Gateway for internet access in the VPC.

+ ### 3-subnets.tf

Creates four subnets to meet EKS requirements.

+ ### 4-nat.tf

Creates a NAT Gateway used in private subnets to allow services to connect to the internet.

+ ### 5-routes.tf

Creates routing tables and associates subnets with them.

+ ### 6-eks.tf

Creates Amazon EKS clusters and an IAM role with the AmazonEKSClusterPolicy.

+ ### 7-nodes.tf

Creates a single instance group for Kubernetes and related IAM roles.
