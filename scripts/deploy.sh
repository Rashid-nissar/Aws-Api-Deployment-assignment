#!/bin/bash

echo "Initializing Terraform..."
cd "$(dirname "$0")/../terraform"

terraform init
terraform apply -auto-approve