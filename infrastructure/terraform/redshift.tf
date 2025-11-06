Create Redshift subnet group:
    Include both subnets from VPC

Create Redshift parameter group (optional):
    Set enable_user_activity_logging = true
    Set max_cursor_result_set_size

Create Redshift cluster:
    Use variable node_type and number_of_nodes
    Set master_username and master_password
    Attach subnet group
    Attach security group
    Set publicly_accessible based on environment
    Enable automated snapshots (retention 7 days)
    Skip final snapshot for dev
    Enable logging to CloudWatch

Create IAM role for Redshift:
    Allow Redshift service to assume role

Attach policy to Redshift role:
    Allow S3 read access to CDC events bucket
    Allow S3 write access to logs bucket
    Attach IAM role to Redshift cluster