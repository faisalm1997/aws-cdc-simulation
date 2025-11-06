Create SNS topic for alerts (if email provided):
    Name: ${name_prefix}-alerts
    Enable encryption

Create SNS subscription:
    Protocol: email
    Endpoint: variable alert_email
    Create CloudWatch alarm for Lambda errors:
    Metric: Lambda Errors
    Threshold: > 1
    Period: 5 minutes
    Action: Publish to SNS

Create CloudWatch alarm for Lambda throttles:
    Metric: Lambda Throttles
    Threshold: > 0

Create CloudWatch alarm for DLQ messages:
    Metric: SQS ApproximateNumberOfMessagesVisible
    Threshold: > 10

Create CloudWatch alarm for Redshift CPU:
    Metric: Redshift CPUUtilization
    Threshold: > 80%

Create CloudWatch alarm for Redshift connections:
    Metric: Redshift DatabaseConnections
    Threshold: > 50

Create CloudWatch Dashboard:
    Widget: Lambda invocations and errors
    Widget: Redshift CPU and connections
    Widget: S3 bucket object count
    Widget: DLQ message count
    Widget: Recent Lambda logs