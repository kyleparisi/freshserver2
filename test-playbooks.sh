#!/bin/bash

set -e

echo "Testing Ansible playbook on Ubuntu..."
docker build -f Dockerfile.ubuntu -t freshserver-ubuntu-test .
docker run --rm freshserver-ubuntu-test

echo -e "\n===========================================\n"

echo "Testing Ansible playbook on Amazon Image..."
docker build -f Dockerfile.amazon -t freshserver-amazon-test .
docker run --rm freshserver-amazon-test

echo -e "\nTesting complete!"