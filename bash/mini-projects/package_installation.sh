#!/bin/bash
PACKAGE="git"

if command -v apt &> /dev/null; then
	sudo apt install -y $PACKAGE
elif command -v dnf &> /dev/null; then
	sudo dnf install -y $PACKAGE
else 
  echo "Unsupported package manager."
fi
