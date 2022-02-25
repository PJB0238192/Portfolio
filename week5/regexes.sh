#!/bin/bash
#searches work via regex grep in portfolio
#Phillip 18/02/2022

#all sed statments
grep -rw 'sed' ~/scripts/portfolio/

#all lines that start with the letter 'm'
grep -r "^m" ~/scripts/portfolio/

#all lines that contain 3 digits
grep -r ' [0-9][0-9][0-9] ' ~/scripts/portfolio/

#all echo statments 'echo & acho -*' that contain 3 or more words
grep -Er 'echo "*(\w+\b.){4}*"|echo -[a-zA-Z] "*(\w+\b.){5}*"' ~/scripts/portfolio/

#all lines that would make a good password
#minimum of 12 characters, requires lower and uppercase, numbers and special characters
grep -Er '(.){12}' ~/scripts/portfolio/ | grep -E '([a-z)' | grep -E '([A-z])' | grep -E '([0-9])' | grep -E '[[:punct:]]'