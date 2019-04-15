#!/bin/bash
shopt -s globstar

for i in ./**/*
do
    if [ -f "$i" ];
    then
  	
	#printf "Path: %s\n" "${i%/*}" # shortest suffix removal
	#printf "Filename: %s\n" "${i##*/}" # longest prefix removal
	#printf "Extension: %s\n"  "${i##*.}"
	#printf "Filesize: %s\n" "$(du -b "$i" | awk '{print $1}')"
	# some other command can go here node_modules
	if [[ ${i%/*} == *"node_modules"* ]];
	then
		echo "do nothing!"
	else
		if [ ${i##*.} = "html" ];
		   then
			mystring=${i%/*}
			mystring+="/"
			mystring+=${i##*/}
			echo ${mystring}
			sed -i '                         ' ${mystring}
			sed -i '$a <!-- Ⓒ Copyright Medrecio Limited 2018. -->' ${mystring}
		   
		elif [ ${i##*.} = "css" ];
		   then
			mystring=${i%/*}
			mystring+="/"
			mystring+=${i##*/}
			echo ${mystring}
			sed -i '                         ' ${mystring}
			sed -i '$a /* Ⓒ Copyright Medrecio Limited 2018.  */' ${mystring}
		 elif [ ${i##*.} = "js" ];
		   then
			mystring=${i%/*}
			mystring+="/"
			mystring+=${i##*/}
			echo ${mystring}
			sed -i '                         ' ${mystring}
			sed -i '                          ' ${mystring}
			sed -i '$a // Ⓒ Copyright Medrecio Limited 2018.  ' ${mystring}
		 elif [ ${i##*.} = "scss" ];
		   then
			mystring=${i%/*}
			mystring+="/"
			mystring+=${i##*/}
			echo ${mystring}
			sed -i '                         ' ${mystring}
			sed -i '$a /* Ⓒ Copyright Medrecio Limited 2018.  */  ' ${mystring}
		 fi
	#printf "\n\n"
	fi
	
    fi
  

done



