#!/bin/bash
APPS=("git" "htop" "wget")

for app in "${APPS[@]}"; do
   if rpm -ivh "$app" &> /dev/null; then
	  echo "$app is already installed."
   else 
     sudo dnf install -y "$app"
   fi
done 
