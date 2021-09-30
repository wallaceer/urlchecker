#!/bin/bash
#This script check url in urlCheck.txt file and write the url with the status code in urlCheckResults.csv file
while read LINE; do
	  curl -o /dev/null --silent --head --write-out "%{http_code};$LINE\n" "$LINE"  >> ./urlCheckResults.csv
  done < ./urlCheck.txt
