#/bin/bash

export COUNTER=0

for image in ./IMG*.jpg
do
	mv $image img$(echo $COUNTER).jpg
	COUNTER=$((COUNTER + 1))
done	
