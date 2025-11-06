# CDC Simulation Pipeline

Simulates Change Data Capture (CDC) events, processes INSERT/UPDATE/DELETE operations, and maintains a data warehouse in Redshift.

## Architecture

## Architecture

Add architecture diagram

## Project Structure 

```sh
cdc-simulation-pipeline/
├── README.md
├── infrastructure/
│   ├── terragrunt/
│   │   ├── terragrunt.hcl
│   │   └── dev/
│   │       ├── terragrunt.hcl
│   │       └── env.hcl
│   └── terraform/
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── s3.tf
│       ├── redshift.tf
│       ├── vpc.tf
│       ├── lambda.tf
│       ├── iam.tf
│       ├── secrets.tf
│       └── cloudwatch.tf
├── src/
│   ├── lambda/
│   │   ├── cdc_processor/
│   │   │   ├── handler.py
│   │   │   ├── database.py
│   │   │   ├── merge_logic.py
│   │   │   └── requirements.txt
│   │   └── event_validator/
│   │       └── handler.py
│   ├── simulator/
│   │   ├── generate_cdc.py
│   │   └── requirements.txt
│   └── sql/
│       ├── schema/
│       │   ├── create_tables.sql
│       │   └── create_staging.sql
│       └── procedures/
│           ├── merge_customers.sql
│           └── audit_changes.sql
├── powerbi/
│   ├── dashboard.pbix
│   └── connection_guide.md
├── scripts/
│   ├── package_lambda.sh
│   ├── deploy.sh
│   ├── simulate_cdc.sh
│   ├── setup_redshift.sh
│   └── cleanup.sh
├── tests/
│   ├── unit/
│   │   └── test_merge_logic.py
│   └── integration/
│       └── test_end_to_end.py
├── config/
│   ├── dev.yaml
│   └── prod.yaml
└── .github/
    └── workflows/
        └── ci-cd.yaml
```