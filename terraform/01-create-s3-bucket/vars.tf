## =============================================================================
#  Variables - Authentication                                                  #
## =============================================================================
variable "aws_access_key" {
    type        = "string"
    description = "Access key authorized for this action"
}

variable "aws_secret_key" {
    type        = "string"
    description = "Secret key authorized for this action"
}

## =============================================================================
#  Variables - Location                                                        #
## =============================================================================
variable "aws_region" {
    type        = "string"
    description = "Region to create S3 bucket"
    default = "us-west-1"
}