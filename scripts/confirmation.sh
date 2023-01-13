#!/bin/bash

# Used in Makefile for confirmation of risky actions.

if [[ $CONFIRM == "force" ]]
then
    # Skipping readline
    exit 0
fi

read -p "Are you sure? (y/n). This might be a risky operation." -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi
# echo $? to get exit code
