
resource "aws_iam_user" "user" {
  name = var.user
}

resource "aws_iam_policy" "policy" {
  name = var.policy

  policy = <<EOT
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "*",
      "Resource": "*"
    }
  ]
}
EOT
}
