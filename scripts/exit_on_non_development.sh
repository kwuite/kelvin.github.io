#!/bin/bash

# Exit if our environment is not set to development

if [[ ! $ENVIRONMENT == "development" ]]
then
    echo "Preventing any further code execution since your environment is not set to development."
    exit 1
fi
# echo $? to get exit code
