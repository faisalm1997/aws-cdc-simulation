-- Create customers table:
--     id INTEGER PRIMARY KEY
--     name VARCHAR(255)
--     email VARCHAR(255)
--     phone VARCHAR(50)
--     address TEXT
--     created_at TIMESTAMP
--     updated_at TIMESTAMP
--     deleted_at TIMESTAMP

-- Add indexes:
--     CREATE INDEX idx_customers_email ON customers(email)
--     CREATE INDEX idx_customers_deleted ON customers(deleted_at)

-- Create orders table (optional for enrichment):
--     Similar structure with customer_id foreign key

-- Add comments to tables and columns