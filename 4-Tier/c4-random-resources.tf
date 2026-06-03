# Random String Resource
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  numeric = false 
  keepers = {
    # This ensures the random string regenerates only when these values change
  resource_group_name = var.resource_group_name
  environment         = var.environment
  }  
}