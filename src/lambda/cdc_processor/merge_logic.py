# Define execute_insert function:
#     Build INSERT SQL from event['after']
#     Handle column mapping
#     Execute with database connection
#     Return rows affected

# Define execute_update function:
#     Build UPDATE SQL using event['before'] and event['after']
#     Find record by primary key
#     Update changed columns only
#     Set updated_at timestamp
#     Execute and return rows affected

# Define execute_delete function:
#     Build UPDATE SQL (soft delete)
#     Set deleted_at = NOW()
#     WHERE id = event['before']['id']
#     Execute and return rows affected

# Define execute_merge function:
#     Use DELETE + INSERT pattern (Redshift doesn't support MERGE)
#     Delete existing record if UPDATE or DELETE
#     Insert new/updated record if INSERT or UPDATE
#     Mark as deleted if DELETE operation

# Add validation for required fields

# Add logging for each operation

# Handle errors and rollback