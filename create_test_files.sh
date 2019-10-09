#!/bin/bash

echo "Creatin test files..."

cd /mnt/c/Users/o.liaskivskyi/tmp

for i in {0..5}; do
	touch "wsdl-myglo-$i"
done

echo "Completed!"
