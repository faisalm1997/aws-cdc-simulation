
## CDC Event Types
- **INSERT**: New records
- **UPDATE**: Modified records  
- **DELETE**: Soft-delete (set deleted_at timestamp)

## Build Steps

### Phase 1: Redshift Setup
- [ ] Create VPC and subnet for Redshift
- [ ] Create Redshift cluster
- [ ] Create source and target tables
- [ ] Store credentials in Secrets Manager

### Phase 2: CDC Event Generation
- [ ] Write Python script to generate CDC events
- [ ] Create INSERT/UPDATE/DELETE events
- [ ] Upload to S3 in JSON format
- [ ] Add batch processing support

### Phase 3: Lambda Processor
- [ ] Write Lambda to read CDC events
- [ ] Implement MERGE logic (UPSERT/DELETE)
- [ ] Connect to Redshift via psycopg2
- [ ] Add error handling and DLQ

### Phase 4: Power BI Dashboard
- [ ] Connect Power BI to Redshift
- [ ] Create dashboard showing:
  - Total records
  - Inserts/Updates/Deletes per day
  - Data freshness
  - Quality metrics

### Phase 5: Automation
- [ ] S3 trigger for Lambda
- [ ] Error handling and DLQ
- [ ] CloudWatch monitoring
- [ ] Alerting on failures

## Quick Start

```bash
# 1. Deploy infrastructure
cd infrastructure/terragrunt/dev
terragrunt init
terragrunt apply

# 2. Setup Redshift tables
./scripts/setup_redshift.sh

# 3. Generate CDC events
python src/simulator/generate_cdc.py --count 1000

# 4. Upload to S3
./scripts/simulate_cdc.sh

# 5. Verify in Redshift
psql -h <endpoint> -U admin -d cdcdb -c "SELECT COUNT(*) FROM customers"