#!/bin/bash

#System update and clean the system 
sudo apt update -y && sudo apt upgrade -y 
sudo apt autoremove -y
sudo apt autoclean -y

echo "System update/clean successful."


# apt update refreshes package lists.
# apt upgrade installs the latest versions.
# autoremove deletes unused packages.
# autoclean removes cached package files.