# Import libraries (json, random, datetime, faker)

# Initialise Faker instance

# Define generate_cdc_events function:
#     Accept count parameter (default 100)
#     Initialize empty events list
#     Track existing customer IDs

# Loop count times:
#     Choose operation (60% INSERT, 30% UPDATE, 10% DELETE)
#     Generate timestamp (random within last 24 hours)
#     If INSERT: Create new customer with fake data
#     If UPDATE: Pick random existing ID, create before/after
#     If DELETE: Pick random existing ID, create before data
#     Append event to list
#     Return events list

# Define save_to_json function:
#     Write events to JSON file
#     Pretty print with indent

# Define upload_to_s3 function:
#     Use boto3 to put object in S3
#     Key format: events/YYYY/MM/DD/events_HHMMSS.json

# Add CLI with argparse:
#     --count (number of events)
#     --output (file path)
#     --upload (S3 bucket name)

# Add main block to run generator