# Terraform AWS SSOAdmin Permission Set


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name                                                    | Version   |
| ------------------------------------------------------- | --------- |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.35.0 |

## Providers

| Name                                              | Version   |
| ------------------------------------------------- | --------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.35.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                          | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [aws_ssoadmin_managed_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_managed_policy_attachment) | resource |
| [aws_ssoadmin_permission_set.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssoadmin_permission_set)                       | resource |

## Inputs

| Name                                                                                            | Description                                                                                                                | Type           | Default | Required |
| ----------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------- | -------------- | ------- | :------: |
| <a name="input_description"></a> [description](#input\_description)                             | (optional) The description of the Permission Set.                                                                          | `string`       | `null`  |    no    |
| <a name="input_instance_arn"></a> [instance\_arn](#input\_instance\_arn)                        | (required) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.                  | `string`       | n/a     |   yes    |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | (required)  The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set.                        | `list(string)` | n/a     |   yes    |
| <a name="input_name"></a> [name](#input\_name)                                                  | (required) The name of the Permission Set.                                                                                 | `string`       | n/a     |   yes    |
| <a name="input_relay_state"></a> [relay\_state](#input\_relay\_state)                           | (optional) The relay state URL used to redirect users within the application during the federation authentication process. | `string`       | `null`  |    no    |
| <a name="input_session_duration"></a> [session\_duration](#input\_session\_duration)            | (optional) The length of time that the application user sessions are valid in the ISO-8601 standard.                       | `string`       | `null`  |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                  | (optional) Key-value map of resource tags.                                                                                 | `map(string)`  | `null`  |    no    |

## Outputs

| Name                                                                       | Description                                                                                                           |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| <a name="output_arn"></a> [arn](#output\_arn)                              | returns a string - The Amazon Resource Name (ARN) of the Permission Set.                                              |
| <a name="output_created_date"></a> [created\_date](#output\_created\_date) | returns a string - The date the Permission Set was created in RFC3339 format.                                         |
| <a name="output_id"></a> [id](#output\_id)                                 | returns a string - The Amazon Resource Names (ARNs) of the Permission Set and SSO Instance, separated by a comma (,). |
| <a name="output_this"></a> [this](#output\_this)                           | n/a                                                                                                                   |
<!-- END_TF_DOCS -->