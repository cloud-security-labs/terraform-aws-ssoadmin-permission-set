variable "description" {
  description = "(optional) The description of the Permission Set."
  type        = string
  default     = null
}

variable "instance_arn" {
  description = "(required) The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed."
  type        = string
}

variable "name" {
  description = "(required) The name of the Permission Set."
  type        = string
}

variable "relay_state" {
  description = "(optional) The relay state URL used to redirect users within the application during the federation authentication process."
  type        = string
  default     = null
}

variable "session_duration" {
  description = "(optional) The length of time that the application user sessions are valid in the ISO-8601 standard."
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional) Key-value map of resource tags."
  type        = map(string)
  default     = null
}

variable "managed_policy_arns" {
  description = "(required)  The IAM managed policy Amazon Resource Name (ARN) to be attached to the Permission Set."
  type        = list(string)
}

variable "inline_policy_documents" {
  description = "(required) The list of IAM inline policys to attach to a Permission Set."
  type        = list(string)
}
