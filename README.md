Repo created to test all things with Terraform. 

The repo will ask you for the variables for the AWS access.

If you don't want to put the info each time in the execution create a file with this variables:
  - aws_secret_key
  - aws_access_key
  
And execute the terraform command like this "terraform plan -var-file=X.tfvars"

