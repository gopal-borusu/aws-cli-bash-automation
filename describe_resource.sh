#!/bin/bash
echo "You have selected to describe resources in AWS"
echo -e "Select the type of resource you want to describe: \n 1) EC2"
read -p "Enter the type of resource to be described: " restype
case $restype in
"1")
    bash describe_aws_dir/describe_aws.sh
    ;;
 *)
    echo "$restype is an Invalid option .. exiting"
    exit 1
    ;;
esac
