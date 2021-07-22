#!/bin/bash
#获取80端口链接ip
netstat -na|grep 80|awk '{print $5}'|awk -F: '{print $1}' >A;
#去重
sort A | sort -u A > B ;
#查询前过滤
sed -i "s/STREAM//g" B;
#计数变量
JS=`sed -n '$=' B`;
echo "当前连 接ip数为$((JS-2)) 个";
#逐行读取并进行ip溯源
i=1;
while read myline;
do
        echo -e "IP溯源信息$i:\n `curl -Ls http://www.cip.cc/$myline| egrep -v "URL" | sed '/^[  ]*$/d'`";
        let i=$i+1;
        sleep 1;
done < B;
