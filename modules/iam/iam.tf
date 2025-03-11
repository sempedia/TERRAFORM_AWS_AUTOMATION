# IAM multiple users creation using for_each and a set of strings
# in a set each key = each value so we can use either one of them
# for our name.
resource "aws_iam_user" "IAN_User" {
  for_each = toset(["User1", "User2", "User3", "User4"])
  name     = each.key
  # name = each.value
}