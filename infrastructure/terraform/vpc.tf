Create VPC:
    Use variable vpc_cidr
    Enable DNS hostnames and support
    Add tags

Create 2 subnets for Redshift (different AZs):
    Use variable subnet_cidrs
    Map to different availability zones

Create Internet Gateway:
    Attach to VPC

Create Route Table:
    Add route to Internet Gateway (0.0.0.0/0)
    Associate route table with subnets

Create Security Group for Redshift:
    Allow inbound on port 5439
    Allow from Lambda security group
    Allow from your IP for Power BI (optional)
    Allow all outbound

Create Security Group for Lambda:
    Allow outbound to Redshift security group
    Allow outbound to internet (for S3)