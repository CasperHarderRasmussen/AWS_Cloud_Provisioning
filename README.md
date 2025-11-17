# AWS_Cloud_Provisioning

This project aims to build a terraform template for provisioning a Ubuntu 22.04 LTS server runing Bind 9 DNS server.

## Prerequisites

This project assumes the administator or organisation has access to a AWS account, and are caberble of provisioning virtual machines of the form EC2. The administrator should also be capable of creating and executing Terraform scripts locally on there workstation.

## Provisioning of the AWS Server

The server used to host the Bind 9 DNS server is provisoned as a t2.medium Ubunto 22.04 LTS Linux server, which has following hardware specifications :

- 2 64 bit (x86) vCPU cores.
- 4.0 GB RAM.

### AWS Access Credentials

The Terraform code assumes the creation of a ".tfvar" file that contains the crudentials needed to gain access to the AWS cloud instance. This file is assumed to contain the following four variables :
  
- **Access_Key** : This string variable contains the access key.
- **Secret_Key** : This string variable contains the secret key.
- **User_Name** : This is the username that is being used for the DNS server.
- **Password** : This is the password that is being used for the DNS server.

Thus, there should be created a terrform.tfvars file in the AWS_Cloud_VM directory, which has the following structre.

```HCL
Access_Key = "<The tokens access key>"
Secret_Key = "<The tokens secret key>"
User_Name  = "<The username used to access the server mannually>"
Password   = "<The password used to access the server mannually>"
```

This file is not included in the procject due to the sensitive nature of its content.

## Bind 9 DNS Server

The Bind 9 DNS server can be accessed via a GUI and SSH, which means new DNS zones can be registred manually or by using the Terraform DNS update schema stored in the Resource.tf file in the DNS_Server directory. The Terraform update schema obey [RFC 2136](https://datatracker.ietf.org/doc/html/rfc2136) and use secret key based transaction authentication as defiend in [RFC 2845](https://datatracker.ietf.org/doc/html/rfc2845).

### Bind 9 Secret Key Based Transaction Authentication

