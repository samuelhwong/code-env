# Terraform

https://www.terraform.io/downloads.html

## Install

```
curl "https://releases.hashicorp.com/terraform/0.15.3/terraform_0.15.3_linux_amd64.zip" -o "terraform.zip" \
  && unzip terraform.zip && chmod +x terraform \
  && mv terraform ~/bin && rm terraform.zip
```

Test install:

```
$ terraform version
Terraform v0.15.3
on linux_amd64
```