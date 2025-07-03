#!/bin/bash
while true
do
  echo -e "1) Create Resources\n2) Describe resources\n3) Quit"
  read -p "Enter the type of operation: " optype
  case $optype in
  "1")
       bash create_aws_dir/create_aws_resource.sh
       ;;
  "2")
       bash describe_aws_dir/describe_aws_resource.sh
       ;;
  "3")
       echo "You choose to quit ... exiting"
       exit 1
       ;;
   *)
       echo "$optype is an invalid option ... exiting"
       exit 1
       ;;
  esac
done
