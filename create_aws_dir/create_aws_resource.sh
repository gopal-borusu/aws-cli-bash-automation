#!/bin/bash
echo "You have selected to create a resource in AWS"
echo -e "Select the type of resource you want to create: \n 1) EC2"
read -p "Enter the type of resource to be created: " restype
case $restype in
"1")
    bash create_aws_dir/aws_ec2.sh
    ;;
 *)
    echo "$restype is an Invalid option .. exiting"
    exit 1
    ;;
esac
