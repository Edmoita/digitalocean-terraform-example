Provides DigitalOcean Droplet, Project and SSH key resources using Terraform.

1. Copy the variable definitions file and replace the values
  ```sh
  cp terraform.tfvars.example terraform.tfvars
  ```

2. Initialize Terraform for your project
  ```sh
  terraform init
  ```

3. See the execution plan, or what Terraform will attempt to do to build the infrastructure described
  ```sh
  terraform plan
  ```

4. Execute the current plan
  ```sh
  terraform apply
  ```

5. Destroy the resources
  ```sh
  terraform destroy
  ```