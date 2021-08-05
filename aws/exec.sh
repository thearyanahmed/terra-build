#!/usr/bin/env sh

echo "Starting to plan with terraform"
# exit script upon any non-zero exit code
cd aws/

# echo "running terraform get"
# terraform get

echo "running terraform init"
terraform init

# Plan Infrastructure
echo "running terraform plan with an output"
terraform plan
# tecognize-tf-statelock/tf/tf.state

# Print plan file
# terraform show "tf_plan"
echo "applying plan"
# Run terraform Apply
terraform apply -auto-approve

