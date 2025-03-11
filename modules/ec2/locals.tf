locals {
  # Calculate the instance index based on cpu_count
  instance_index = min(floor(var.cpu_count / 2), length(var.instance_types) - 1)
  
}
