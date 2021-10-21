#!/bin/bash

read -p "
        Enter IP/HOSTNAME:" address

finder()
{
echo ""
echo "$data" | grep "404," > /dev/null 2>&1
if [ $? = 0 ] 
    then
    echo "Provide a Valid IP Address"
else
    echo "IP ADDRESS:" $(echo "$data" | awk NR==2 | cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo "STATIC HOSTNAME:" $(echo "$data" | grep hostname| cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo "COUNTRY:" $(echo "$data" | grep country| cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo "REGION:" $(echo "$data" | grep region | cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo "ORGANIZATION:" $(echo "$data" | grep org | awk '{print $3,$4,$5}' | tr "," " " | cut -d '"' -f1)
    echo "LOCATION CORDINATES:" $(echo "$data" | grep loc | cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo "TIME-ZONE:" $(echo "$data" | grep timezone | cut -d : -f2 | tr "," " " | cut -d '"' -f2)
    echo ""

fi
}


if [[ $address =~ [a-z] ]];
    then
      ip=$(host $address | grep address | awk NR==1 | awk '{print $4}') 
      data=$(curl -s ipinfo.io/$ip) > /dev/null
      finder
else 
      data=$(curl -s ipinfo.io/$address) > /dev/null
      finder
fi


