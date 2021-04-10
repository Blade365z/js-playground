#! /bin/bash
# Script to initialize a Javascript Playground to create new ideas locally
# Created By Amitabh Baruah, IIT-Guwahati
 
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'
printf "${BLUE}if you want to learn more about the bad parts and \nhow to use them badly, consult any other JavaScript book ${NC} \n"
echo "Creating JS Playground..."
echo "Enter Playground Name"
read FILENAME
while [  -d "$FILENAME" ]; 
	do
	 printf "${RED}Playground with this name already exists! ${NC} \n" 
	 echo "Enter Playground Name"
	 read FILENAME
	done

mkdir $FILENAME
echo "<html><head><title>JsPlayground</title></head><body><script src='index.js'></script></body></html>"  > $FILENAME/index.html


touch $FILENAME/index.js	
echo "Created $FILENAME!, Happy Javascript"
