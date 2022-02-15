#!/bin/bash
#test script for file access via variable
#Phillip 28/01/22

#print_file = wc -w secret.txt

value=$(<secret.txt)
#file="$(secret.txt)"
echo "$value"
