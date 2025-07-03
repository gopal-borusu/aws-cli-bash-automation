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



