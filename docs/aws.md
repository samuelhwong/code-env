# AWS

## How to install the AWS CLI v2

Since I'm using WSL2, I'm using the Linux instructions: https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html

```
$ curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
$ unzip awscliv2.zip
$ sudo ./aws/install
```

To check that the installation was successful:

```
$ aws --version
aws-cli/2.2.3 Python/3.8.8 Linux/5.4.72-microsoft-standard-WSL2 exe/x86_64.ubuntu.20 prompt/off
```

## How to configure credentials

I work on multiple projects (hobby, work, church), and I have distinct sets of AWS access key IDs and secret access keys. AWS calls these profiles (a collection of settings).

My AWS keys are stored in 1Password.

```
$ aws configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-west-2
Default output format [None]: json
```