#!/bin/bash

cd /tmp

for file in wsdl-myglo-*
do
	if [ -e $file ]
		then
			rm -f $file
			echo  "`date +%F-%T` Cache $file was cleared"
		else
			echo "`date +%F-%T` Nothing to clear."
	fi 
done