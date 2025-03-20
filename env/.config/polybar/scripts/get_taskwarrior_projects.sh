#!/usr/bin/sh

PROJECTS="$(task projects)"
PROJECTS=$(echo "$PROJECTS" | sed '1,4d')
PROJECTS=$(echo "$PROJECTS" | sed '$d')
PROJECTS=$(echo "$PROJECTS" | sed 's/\(\S\+\).*/\1/')
echo "$PROJECTS"
