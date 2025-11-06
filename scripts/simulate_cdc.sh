# Get S3 bucket name from Terraform output

# Run Python simulator:
#     python src/simulator/generate_cdc.py --count 1000

# Upload generated file to S3:
#     aws s3 cp cdc_events.json s3://bucket/events/

# Trigger Lambda manually (optional):
#     aws lambda invoke with test event

# Print success message with S3 path