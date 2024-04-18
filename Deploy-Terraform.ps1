# Login to Azure
Write-Host "Logging in to Azure..."
az login

# Get the list of subscriptions
Write-Host "Fetching Azure subscriptions..."
$subscriptions = az account list --query "[].{Name:name, SubscriptionId:id}" | ConvertFrom-Json

# Output the list of subscriptions
$subscriptions | ForEach-Object { Write-Host "$($_.Name) - $($_.SubscriptionId)" }

# Prompt user to choose a subscription
$subscriptionId = Read-Host -Prompt "Enter the Subscription ID to set the context for Azure"

# Set the subscription context
az account set --subscription $subscriptionId

# Verify the subscription context has been set
Write-Host "Azure context set to subscription: $(az account show --query name)"

# Initialize Terraform
terraform init

# Plan the deployment
terraform plan

# Apply the deployment
terraform apply -auto-approve

# Prompt user to confirm if they want to destroy the resources after deployment
$destroy = Read-Host -Prompt "Do you want to destroy the deployed resources? (y/n)"

if ($destroy -eq "y") {
    # Destroy the deployed resources
    terraform destroy -auto-approve
}