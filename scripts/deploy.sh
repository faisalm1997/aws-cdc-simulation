# Run package_lambda.sh
# Change to terragrunt/dev directory
# Run terragrunt init (if not already)
# Run terragrunt plan -out=tfplan
# Ask for confirmation (read user input)
# Run terragrunt apply tfplan
# Show outputs with terragrunt output
# Ask if user wants to run setup_redshift.sh
# Print deployment summary