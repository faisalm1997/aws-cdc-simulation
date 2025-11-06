# Variables file

Define aws_region variable (default: us-east-1)
Define project_name variable (default: cdc-pipeline)
Define environment variable (default: dev)
Redshift variables:
node_type, number_of_nodes, database_name
master_username, master_password (sensitive)
VPC variables:
vpc_cidr, subnet_cidrs, availability_zones
Lambda variables:
timeout, memory_size, runtime
CDC configuration variables:
batch_size, processing_interval
Monitoring variables:
log_retention_days, enable_alarms, alert_email