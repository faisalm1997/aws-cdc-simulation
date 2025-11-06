Create CloudWatch Log Group for Lambda:
    Name: /aws/lambda/${name_prefix}-cdc-processor
    Set retention from variable

Create Lambda execution role:
    Allow Lambda service to assume role

Attach policies to Lambda role:
    AWSLambdaVPCAccessExecutionRole (for VPC)

Custom policy for:
    S3 read from CDC bucket
    Secrets Manager read
    CloudWatch Logs write
    VPC network interface management

Create Lambda function:
    Function name: ${name_prefix}-cdc-processor
    Runtime from variable
    Handler: handler.lambda_handler
    Timeout and memory from variables
    VPC configuration (subnets, security groups)

Environment variables:
    REDSHIFT_HOST
    REDSHIFT_DATABASE
    REDSHIFT_USER
    SECRET_ARN
    CDC_BATCH_SIZE

Add Lambda permission for S3 to invoke:
    Allow s3.amazonaws.com to invoke function
    Source ARN: CDC events bucket

Create Dead Letter Queue (SQS):
    For failed Lambda invocations

Configure Lambda DLQ settings:
    Max retry attempts: 2
    Destination: SQS queue