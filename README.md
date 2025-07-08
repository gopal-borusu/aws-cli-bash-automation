# aws-cli-bash-automation
Bash script for managing AWS resource creation using AWS CLI.

Currently script supports only EC2 instance describe/creation.

# Usage

To use the script we first need to install AWS cli tool on the server and configure it with our AWS credentials.

Installation steps (reference: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
### unzip awscliv2.zip
### sudo ./aws/install

========================

Once the CLI tool is installed configure it to work with you AWS account. For that you need to first go to AWS console and generate access key.

Once the access key is generated run "aws configure" in server and input the required details.

![image](https://github.com/user-attachments/assets/8e05970c-962b-481a-b563-252935f7269f)

Now we are ready to use the AWS CLI for managing the AWS resources from command line.

To run the bash script first we need to clone it to the server. use "git clone https://github.com/gopal-borusu/aws-cli-bash-automation".

cd aws-cli-bash-automation

./aws-cli-bash.sh

Follow the prompts and run the script as per your need.

## Example

In the below example i have created one EC2 launch template named "my-app-template" and with the help of that template i am provisioning EC2 instances using script.


<img width="940" alt="image" src="https://github.com/user-attachments/assets/e844b99a-0cd1-4a85-90b9-f8b97cdfd503" />


### Creation of EC2 instances
---

<img width="940" alt="image" src="https://github.com/user-attachments/assets/1b6e87f4-9856-441c-af5e-2e4a6b8668bb" />


### Retrieving details of EC2 instances
---

<img width="940" alt="image" src="https://github.com/user-attachments/assets/918c0ba7-102d-4410-9d98-f82ff4a3c299" />


### Verification
---

EC2 instances are provisioned through the script.

<img width="922" alt="image" src="https://github.com/user-attachments/assets/8edc4397-f685-410f-83de-42240ba5152f" />



