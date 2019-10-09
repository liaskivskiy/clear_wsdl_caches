#!/bin/bash

cd /mnt/c/Users/o.liaskivskyi/tmp

for file in wsdl-myglo-*
do
	if [ -e $file ]
		then
    		files=("${files[@]}" "$file")
			echo "============"
			echo "`date +%F-%T`: Removing wsdl caches"
			for file  in "${files[@]}"
			do
				rm -f $file
				echo  "`date +%F-%T`: Cache $file was cleared"
			done
			echo "`date +%F-%T`: All wsdl caches were cleared"
			echo "============"
		else
			echo "`date +%F-%T`: Nothing to clear."
	fi 
done
echo ${files[@]}

#files=(wsdl-myglo-*)

#if [ ${#files[@]} -ne 0 ]
#	then
#		echo "`date +%F-%T`: Nothing to clear."
#	else
		
#fi


#FILES=/mnt/c/Users/o.liaskivskyi/tmp/wsdl-myglo-*

#for f in $FILES
#do
#  echo "Processing $f file..."
#  rm -f $f
#done