#!/bin/bash
sudo service tomcat9 start
sudo service tomcat9 restart
cd /root/arachni-1.5.1-0.5.12/bin
touch f4.html
./arachni http://13.112.218.94:8080/DemoPipelineJava-0.0.1-SNAPSHOT/ --checks=xss* > f4.html
aws s3 cp f4.html s3://archni/ --grants read=uri=http://acs.amazonaws.com/groups/global/AllUsers 
