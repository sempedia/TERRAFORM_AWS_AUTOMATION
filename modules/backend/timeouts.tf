# ensures that AWS has sufficient time to propagate changes before Terraform 
# interacts with the DynamoDB table.
# Prevents potential race conditions where Terraform tries to use the lock before 
# it is fully created.
# Helpful in CI/CD pipelines where infrastructure changes are applied in quick 
# succession.
resource "time_sleep" "wait_for_lock" {
  create_duration = "100s"  
}
