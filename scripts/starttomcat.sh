#!/bin/bash
echo "hai"
cd /etc/init.d/tomcat9
chmod 777 tomcat9
chmod 777 /etc/init.d/tomcat9
service tomcat9 start
#service tomcat9 restart
