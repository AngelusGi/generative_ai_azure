# Overview:

- Main Configuration File: `main.tf` This is the main entry point for your Terraform configuration. It's where you define your provider and call modules.
- Provider Configuration: `provider.tf` This file is where you configure your Terraform providers, such as Azure.
- Variable Definitions: `variables.tf` This file is where you define any input variables that your configuration will use.

# Modules:

- API Management API Definition
- API Management Service
- OpenAI Service These are the modules used in your configuration. Each module has its own main.tf, output.tf, and `variables.tf` files.
- API Definition: `openai-openapiv3.json` This JSON file defines the OpenAI API, including parameters such as max_tokens, temperature, top_p, and logit_bias.

# Outputs:

- API Management API Definition Outputs
- API Management Service Outputs
- OpenAI Service Outputs These files define the outputs for each module. Outputs are like return values for modules. You can use them to display certain values in the CLI output, or to pass data to other parts of your Terraform configuration.
- Remember to run terraform init to initialize your Terraform workspace before applying your configuration with terraform apply.