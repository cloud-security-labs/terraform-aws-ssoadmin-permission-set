resource "aws_ssoadmin_permission_set" "this" {
  description      = var.description
  instance_arn     = var.instance_arn
  name             = var.name
  relay_state      = var.relay_state
  session_duration = var.session_duration
  tags             = var.tags
}

resource "aws_ssoadmin_managed_policy_attachment" "this" {
  for_each           = length(var.managed_policy_arns) > 0 ? toset(var.managed_policy_arns) : []
  instance_arn       = var.instance_arn
  managed_policy_arn = each.value
  permission_set_arn = aws_ssoadmin_permission_set.this.arn
}
