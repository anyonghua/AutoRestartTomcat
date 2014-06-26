#!/bin/bash
URL="http://www.51663.net/"
RESULT=`curl -I $URL|grep "HTTP/1.1 200"`
if [ -z "$RESULT" ]; then
/etc/init.d/tomcat7 restart
fi




配置权限 并定时运行监测脚本
chmod +x /home/restarttomcat7.sh

crontab -e
*/5 * * * * /home/restarttomcat7.sh
