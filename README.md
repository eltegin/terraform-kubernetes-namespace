# Usage

### Add the following into your file
```
module "example" {
  source = "../"
  name   = "my-first-namespace"
  number_of_pods = 36
  labels = {
    env = "dev"
    createdBy = "Terraform"
  }
}
```
### Run the following commands
```
terraform init
terraform apply
```
