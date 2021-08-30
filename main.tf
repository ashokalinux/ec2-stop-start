####################################################

# TERRAFORM VERSION

###################################################
terraform {
#  required_version = "~> 1.0.0" # is equivalent to >= 0.1.0,

  required_providers {
    aws = "~> 3.50.0"
  }


}
##############################################################

# PROVIDER

###############################################
provider "aws" {
  region = var.region
  profile = "rwanda"
}

