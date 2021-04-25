provider "aws" {
  region = "us-east-1"
}

data "aws_ssoadmin_instances" "this" {}

data "aws_iam_policy_document" "example" {
  statement {
    sid = "1"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}

locals {
  sso_instance_arn = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  permission_sets = {
    abc = {
      description      = null
      instance_arn     = local.sso_instance_arn
      name             = "abc"
      relay_state      = null
      session_duration = null
      tags = {
        name      = "xyz"
        terraform = "yes"
      }
      managed_policy_arns = [
        "arn:aws:iam::aws:policy/AWSServiceCatalogEndUserFullAccess",
        "arn:aws:iam::aws:policy/AdministratorAccess",
      ]
      inline_policy_documents = [
        data.aws_iam_policy_document.example.json
      ]
    },
    xyz = {
      description             = null
      instance_arn            = local.sso_instance_arn
      name                    = "xyz"
      relay_state             = null
      session_duration        = null
      tags                    = {}
      managed_policy_arns     = []
      inline_policy_documents = []
    }
  }

}

module "aws_ssoadmin_permission_set" {
  source   = "../../"
  for_each = local.permission_sets

  description             = each.value.description      # description - (optional) is a type of string
  instance_arn            = each.value.instance_arn     # instance_arn - (required) is a type of string
  name                    = each.value.name             # name - (required) is a type of string
  relay_state             = each.value.relay_state      # relay_state - (optional) is a type of string
  session_duration        = each.value.session_duration # session_duration - (optional) is a type of string
  tags                    = each.value.tags             # tags - (optional) is a type of map of string
  managed_policy_arns     = each.value.managed_policy_arns
  inline_policy_documents = each.value.inline_policy_documents
}
