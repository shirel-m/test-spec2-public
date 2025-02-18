#!/bin/bash

CDK_VERSION="2.174.0"  # Change this to your desired version

echo "Installing AWS CDK version $CDK_VERSION..."

# Install the specific AWS CDK version globally
npm install -g aws-cdk@$CDK_VERSION

USED_CDK_VERSION=$(cdk --version | awk '{print $1}')

echo "CDK version used when running 'cdk': $USED_CDK_VERSION"
