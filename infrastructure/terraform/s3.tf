Create CDC events bucket:
    Name pattern: ${name_prefix}-events-${account_id}
    Enable versioning
    Add tags (Purpose: CDC-Events)

Add bucket lifecycle policy:
    Delete objects older than 30 days

Configure S3 event notifications:
    Trigger Lambda on object creation
    Filter prefix: "events/"
    Filter suffix: ".json"

Create bucket policy:
    Allow Lambda to read objects
    Allow Redshift to read objects (for COPY)
    Enable server-side encryption