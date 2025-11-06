Create Secrets Manager secret for Redshift password:
    Name: ${name_prefix}/redshift/master-password
    Description: "Redshift master user password"

Create secret version:
    Use variable redshift_master_password
    Store as JSON: {"password": "value"}

Create IAM policy for secret access:
    Allow secretsmanager:GetSecretValue
    Output secret ARN for Lambda to use