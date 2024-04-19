# Deploy Microsoft Azure Purview with Terraform

This repository contains Terraform configurations for the automated deployment of Microsoft Azure Purview, which is a unified data governance service enabling data discovery, cataloging, and governance at scale across multiple data sources.

## Overview

Azure Purview is designed to provide a holistic, up-to-date map of your data landscape with automated data discovery, sensitive data classification, and end-to-end data lineage. This project leverages Terraform, an open-source Infrastructure as Code (IaC) tool, to provision and manage Azure Purview instances, allowing for streamlined data governance integration into cloud resource management.

## Features

- **Automated Deployment**: Quickly provision Azure Purview accounts with pre-configured settings.
- **Customizable Configuration**: Modify the Terraform configuration to suit your organization's requirements for data governance.
- **Reusability**: Use the configurations as a template for deploying multiple instances or across different environments.

## Prerequisites

Before you begin, ensure you have the following prerequisites in place:

- An Azure subscription where you have permissions to create resources.
- Terraform installed on your local machine. See [Terraform's official documentation](https://www.terraform.io/downloads.html) for installation instructions.
- Azure CLI installed and configured for authentication with your Azure account. More details can be found in the [Azure CLI documentation](https://docs.microsoft.com/en-us/cli/azure/).

## Repository Structure

- `main.tf`: Contains the primary Terraform configuration for creating the Azure Purview instance.
- `variables.tf`: Defines the variables referenced in the configurations.
- `outputs.tf`: Specifies the output values that Terraform will display upon completion of the `apply` command.
- `provider.tf`: Configures the Terraform provider for Azure.

## Getting Started

1. **Clone the Repository**

    Begin by cloning this repository to your local machine to work with the Terraform configurations.

    ```sh
    git clone https://github.com/abouconde/Deploy_with_terraform_microsoft_azure_purview.git
    cd Deploy_with_terraform_microsoft_azure_purview
    ```

2. **Initialize Terraform**

    Initialize your Terraform workspace, which will download the provider and initialize it with the values provided in the `provider.tf` file.

    ```sh
    terraform init
    ```

3. **Create a Terraform Plan**

    Create a Terraform execution plan to preview the changes that will be made to your Azure environment.

    ```sh
    terraform plan
    ```

4. **Apply the Terraform Configuration**

    Apply the Terraform configuration to start provisioning the Azure Purview resources.

    ```sh
    terraform apply
    ```

    Confirm the apply when prompted to proceed.

5. **Access Your Azure Purview Instance**

    Once the apply is complete, Terraform will output the endpoints and other important information about your Azure Purview instance. You can now access the Azure Purview Studio to manage your data governance.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues to improve the functionality and use of these Terraform configurations.

## License

This project is licensed under the terms of the [MIT license](LICENSE).

## Disclaimer

This Terraform script is provided "as is", without warranty of any kind, express or implied. Use at your own risk.
