## Below is a typical shell script prepared for tracking aws resourses##


#!/bin/bash

#############################################
#Author: Paul Juju
#
#Date: 07/09/2024
#
#This resource tracks aws resources
#
#version: v1
#
#############################################
#

set -x #runs in debug

# AWS S3
# AWS EC2
# AWS LABMDA
# AWS IAM


#List s3 buckets
echo "Print list of S3 buckect"
aws s3 ls

#List ec2 instances
echo "Print list of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List lambda functions
echo "Print list of lambda functions"
aws lambda list-functions

#List iam users
echo "Print list of iam users"
aws iam list-users
