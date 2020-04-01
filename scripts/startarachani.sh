#!/bin/bash

mkdir arachni

cd arachni

arch= `ls -la | grep arachni-1.5.1-0.5.12-linux-x86_64.tar.gz`

if [[ $arch -eq "arachni-1.5.1-0.5.12-linux-x86_64.tar.gz" ]]

then
 
 echo "archani downloaded"
 
 cd /root/arachni-1.5.1-0.5.12/bin

 touch f4.html

 ./arachni http://3.112.220.28:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* > f4.html

 aws s3 cp f4.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers
 
else
 
 echo "arachini need to download"

 wget https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz

 tar -xvzf arachni-1.5.1-0.5.12-linux-x86_64.tar.gz

 cd arachni-1.5.1-0.5.12-linux-x86_64/bin
 
 touch f4.html

 ./arachni http://3.112.220.28:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* > f4.html

 aws s3 cp f4.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers

fi
