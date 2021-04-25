output "arn" {
  description = "returns a string - The Amazon Resource Name (ARN) of the Permission Set."
  value       = aws_ssoadmin_permission_set.this.arn
}

output "created_date" {
  description = "returns a string - The date the Permission Set was created in RFC3339 format."
  value       = aws_ssoadmin_permission_set.this.created_date
}

output "id" {
  description = "returns a string - The Amazon Resource Names (ARNs) of the Permission Set and SSO Instance, separated by a comma (,)."
  value       = aws_ssoadmin_permission_set.this.id
}

output "this" {
  value = aws_ssoadmin_permission_set.this
}
