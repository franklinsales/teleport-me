#!/bin/bash

# This shell script allows the user to quickly open predetermined directories using graphical interface.

clear

#Insert your name projects/dir here
listProjects=("dir 1" "dir 2")

#Insert your paths projects/dir here
pathProjects=("path-to-dir1" "path-to-dir2")

checkEnd=false

clear

while [ $checkEnd == false ] 
do
	

	i=0


	echo "###############################################"
	echo
	echo "Hi, $USER! Which project directory you wish to open? Please inform the number of option, not the name =)"
	echo
	echo "###############################################"

	while [ $i != ${#listProjects[@]} ]
	do
		if [ $i == 0 ]
		then
			echo "Projects available: "
		fi

		echo $[ $i+1 ] " - "${listProjects[$i]}

		let "i = i + 1"
	done

	echo "What is your choice?"
	echo "Type 0 to exit"

	read projectOption
	if [ "$projectOption" -ne "0" ]
		then
			if [ "$projectOption" -le "${#listProjects[@]}" ]
			then
				echo "Ok! Opening it..."
				nemo ${pathProjects[$projectOption-1]}
				let "checkEnd = true"
			else
				clear
				echo "Invalid Option! Try again..."
				echo ""
			fi
	else
		let "checkEnd = true"
		echo "Bye....."
		exit
	fi

done




