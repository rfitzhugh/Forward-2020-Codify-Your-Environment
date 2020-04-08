# Using Ansible and Terraform to Codify Your Environment

Imagine a world in which in your infrastructure is provisioned and managed by a few lines of code. We’ll walk through both configuration management and infrastructure as code, how to apply them to your data center, and give live demos using Rubrik’s fully robust set of APIs.

Join Matt Elliott and Rebecca Fitzhugh as they walk through calling APIs to create workflows that instantiate, protect, and recover workloads on-prem and in the cloud.

Code and slides in repo. This is from a session at Rubrik Forward (Digital Summit) 2020.

## Demo 1

### Prerequisites
The following pre-requisites are required for this example:

* Terraform 0.12 or later
* AWS S3
* Rubrik CDM

### Create an S3 Bucket
This demonstration walks through the Terraform architecture and how to provision an object store bucket using AWS S3.

Code can be found in the /terraform/01-create-s3-bucket directory.

### Configure S3 as an Archive for Rubrik
This demonstration shows how to leverage Terraform to configure the previously created S3 bucket as a cloud archive for Rubrik.

Code can be found in the /terraform/02-configure-rubrik-archive-s3 directory.