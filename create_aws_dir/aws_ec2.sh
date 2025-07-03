#!/bin/bash
i=1
read -p "Enter the template name to be used to create the EC2 instances: " template_name
read -p "Enter the number of EC2 instances to be craeted: " no_of_instances
for (( i=1; i<=no_of_instances; i++ ))
do
 echo "Creating instance $i ....."
 echo "=================================="
 aws ec2 run-instances --launch-template LaunchTemplateName=${template_name} > /dev/null 2>&1 && echo "Instance $i creation successfull" || echo "Failed to create instance $i"
 echo "=================================="
 echo " "
done
