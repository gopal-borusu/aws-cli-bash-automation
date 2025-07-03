#!/bin/bash
echo "Number of Running Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=running
echo "======================================"
echo -e "\n"
echo "Number of stopped Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=stopped
echo "======================================"
echo -e "\n"
echo "Number of terminated Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=terminated
echo "======================================"
echo -e "\n"
echo "Number of stopping Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=stopping
echo "======================================"
echo -e "\n"
echo "Number of shutting-down Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=shutting-down
echo "======================================"
echo -e "\n"
echo "Number of pending Instances"
echo "======================================"
aws ec2 describe-instances --output table --query 'Reservations[*].Instances[*].{Instance:InstanceId,AZ:Placement.AvailabilityZone,Name:Tags[?Key==`Name`]|[0].Value,State:State.Name,InstanceType:InstanceType,Platform:PlatformDetails}' --filters Name=instance-state-name,Values=pending
echo "======================================"
