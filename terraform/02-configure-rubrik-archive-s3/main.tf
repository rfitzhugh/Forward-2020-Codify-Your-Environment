## =============================================================================
#  Configure S3 as Archive Location                                            #
## =============================================================================
resource "rubrik_aws_s3_cloudout" "rf-tf-demo" {
  aws_region        = "${var.aws_region}"
  aws_bucket        = "rubriktfexample"
  aws_access_key    = "${var.aws_access_key}"
  aws_secret_key    = "${var.aws_secret_key}"
  storage_class     = "standard"
  archive_name      = "TF-Demo"
  kms_master_key_id = "1234abcd-12ab-34cd-56ef-1234567890ab"
}