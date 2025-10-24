# aws-cdc-simulation

Purpose: Simulates Change Data Capture (CDC) from MySQL/Postgres into Redshift using AWS DMS and Lambda for merge processing.

```sh
cdc-simulation/
├── infrastructure/
│   ├── terraform/
│   │   ├── modules/
│   │   │   ├── dms/
│   │   │   ├── lambda/
│   │   │   ├── redshift/
│   │   │   ├── s3/
│   │   │   └── iam/
│   │   └── envs/
│   └── terragrunt/
│       ├── dev/
│       └── prod/
├── src/
│   ├── lambda/
│   │   └── dms_s3_to_redshift.py
│   ├── simulators/
│   │   ├── workload_generator.py
│   │   └── seed_data.sql
│   └── source_db/
│       ├── docker-compose.yml
│       └── init.sql
├── config/
│   ├── db_config.json
│   └── dms_task_settings.json
├── scripts/
│   ├── start_dms_task.sh
│   ├── teardown.sh
│   └── validate_redshift_data.sh
├── tests/
│   ├── test_lambda_merge.py
│   └── test_dms_output_format.py
├── .github/
│   ├── github-actions.yaml
│   └── codepipeline-buildspec.yml
├── docs/
│   ├── architecture.png
│   ├── dms_config_guide.md
│   └── data_flow.md
└── README.md
```