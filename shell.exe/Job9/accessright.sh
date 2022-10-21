#!/bin/bash

#Shell_Userlist.csv

File_Csv="/home/marine/Shell.exe/Job9/Shell_Userlist.csv"

{
read
while IFS=, read -r Id Prenom Nom Mdp Role || [ -n"$Role" ]; do
	user=$Prenom$Nom
	usernew="$(echo "$user" | tr -d "[:space:]")"
	sudo useradd -p $(openssl passwd -1 $Mdp) $usernew
	if [[ $Role == A* ]]; then
		sudo usermod -aG sudo $usernew
	fi

done
} < $File_Csv
