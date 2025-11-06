# Warn user about destruction

# Get confirmation (type 'yes')

# Empty S3 buckets:
#     Get bucket names from Terraform output
#     aws s3 rm --recursive for each

# Delete Redshift snapshots (if exist):
#     aws redshift describe-cluster-snapshots
#     aws redshift delete-cluster-snapshot for each

# Run terragrunt destroy -auto-approve

# Remove build/ directory

# Remove .terragrunt-cache

# Print cleanup complete message