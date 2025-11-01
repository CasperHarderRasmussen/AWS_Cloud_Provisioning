# AWS_Cloud_Provisioning
This project aims to build a terraform template for provisioning a Ubuntu 22.04 LTS server runing Bind 9 DNS server.

## AWS Access Credentials
The Terraform code assumes the creation of a ".tfvar" file that contains the crudentials needed to gain access to the AWS cloud instance. This file is assumed to contain the following two variables :
-**Access_Key** : This string variable contains the access key.
-**Secret_Key** : This string variable contains the secret key.

## Bind 9 DNS Server Configuration
The Bind 9 DNS server is configured by using Chef Automation system.