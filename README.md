# Using Ansible and Terraform to Codify Your Environment

Imagine a world in which in your infrastructure is provisioned and managed by a few lines of code. We’ll walk through both configuration management and infrastructure as code, how to apply them to your data center, and give live demos using Rubrik’s fully robust set of APIs.

Join [Matt Elliott](https://twitter.com/NetworkBrouhaha) and [Rebecca Fitzhugh](https://twitter.com/RebeccaFitzhugh) as they walk through calling APIs to create workflows that instantiate, protect, and recover workloads on-prem and in the cloud.

Code and slides in repo. This is from a session at Rubrik Forward (Digital Summit) 2020.

## Demo 1

### Prerequisites
The following pre-requisites are required for this example:

* Terraform 0.12 or later
* AWS S3
* Rubrik CDM

### Create an S3 Bucket
This demonstration walks through the Terraform architecture and how to provision an object store bucket using AWS S3.

Code can be found in the `/terraform/01-create-s3-bucket` directory.

### Configure S3 as an Archive for Rubrik
This demonstration shows how to leverage Terraform to configure the previously created S3 bucket as a cloud archive for Rubrik.

Code can be found in the `/terraform/02-configure-rubrik-archive-s3` directory.

## Demo 2

### Prerequisites
The following pre-requisites are required for this example:

* Ansible 2.8 or later
* Git and GitHub
* Slack
* Rubrik CDM
* A Linux VM to serve as a "runner"

### Create a new SLA Domain
This demonstration uses one of the Rubrik Modules for Ansible to create a new SLA Domain. This SLA Domain will utilize the
S3 bucket and corresponding archive location created in Demo 1.

The Ansible playbook for this step is located at `/ansible/create_sla.yaml`

### Clone an existing template to a new VM
This demonstration uses the VMware `vmware_guest` module to clone an existing VM template to a new Virtual Machine.

The Ansible playbook for this step is located at `/ansible/clone_template.yaml`

### Protect the new VM
This demonstration uses the `rubrik_refresh_vcenter` and `rubrik_assign_sla` modules to assign an SLA Domain to the newly
cloned VM. The `rubrik_refresh_vcenter` module refreshes metadata from vCenter to ensure that the CDM cluster is aware
of the new VM. The `rubrik_assign_sla` module then assigns the SLA Domain to the VM.

The Ansible Playbook for this step are located at `/ansible/refresh_vcenter.yaml` and `/ansible/protect_vm.yaml`
