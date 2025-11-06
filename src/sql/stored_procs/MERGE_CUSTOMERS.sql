-- Begin transaction

-- Delete from customers where id IN (staging with UPDATE/DELETE)

-- Insert into customers from staging where operation = INSERT or UPDATE:
--     Map all columns
--     Use CASE for created_at vs updated_at

-- Update customers SET deleted_at for DELETE operations

-- Insert audit records for all changes

-- Commit transaction

-- Add error handling (ROLLBACK on exception)