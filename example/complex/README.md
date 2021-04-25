# Example - Complex

## Terraform commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Plan Output

```hcl
❯ tf plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.aws_ssoadmin_permission_set["abc"].aws_ssoadmin_permission_set.this will be created
  + resource "aws_ssoadmin_permission_set" "this" {
      + arn              = (known after apply)
      + created_date     = (known after apply)
      + id               = (known after apply)
      + instance_arn     = "arn:aws:sso:::instance/ssoins-1234567890123456"
      + name             = "abc"
      + session_duration = "PT1H"
      + tags             = {
          + "name"      = "xyz"
          + "terraform" = "yes"
        }
    }

  # module.aws_ssoadmin_permission_set["xyz"].aws_ssoadmin_permission_set.this will be created
  + resource "aws_ssoadmin_permission_set" "this" {
      + arn              = (known after apply)
      + created_date     = (known after apply)
      + id               = (known after apply)
      + instance_arn     = "arn:aws:sso:::instance/ssoins-1234567890123456"
      + name             = "xyz"
      + session_duration = "PT1H"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.
```