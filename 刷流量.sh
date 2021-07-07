#!/bin/bash
rm -f 刷流量.sh
echo -e "\033[1;47;44m 刷流量脚本V3.0 版本说明:\033[0m\n\033[1;32;40m1.本脚本刷流量不占用内存;\033[0m\n\033[1;32;40m2.支持自定义脚本运行次数;\033[0m\n\033[1;32;40m3.内置2GB刷流量链接,链接暂不支持自定义;\033[0m\n\033[1;32;40m4.内置下载链接为高速下载链接;\033[0m\n        \033[1;32;40m苏念云☁️ © 2021\033[0m";
echo -e "\033[1;47;44m 苏念提示:\033[0m\n\033[1;32;40m 请确认返回的ip是否为免流ip\033[0m";
#curl myip.ipip.net;
curl -s "cip.cc"  | egrep -v "URL" | sed '/^[  ]*$/d'
sleep 1;
echo -e "\033[1;47;44m 苏念提示:\033[0m \n\033[1;32;40m 刷流量脚本开始运行！\033[0m \n\033[31;44m 开始时间:  \033[32;40m `date +"%Y-%m-%d  %H:%M:%S "` \n\033[1;31;40;4m终止脚本请点击CTRL后输入C \033[0m";
echo -e "\033[1;47;44m 请输入脚本运行次数(直接回车默认10000次):\033[0m\033[32;40m";
read cs;
echo -e "\033[1;37;44m 请输入刷流量的链接(直接回车默认2GB链接):\033[0m\033[32;40m";
read lj;
if test -z "$lj"
then
lj1=http://download.h2os.com/OnePlus6T/MP/OnePlus6THydrogen_34_OTA_017_all_1812242338_ad6ff375f60c429e.zip;
else
lj1=$lj
fi
if test $cs -gt 0
then 
i=0;
while [ $((i++)) -le $((cs-1)) ]
do                                                                           wget -O /dev/null $lj1;
echo -e "\033[1;37;44m 苏念提示:\033[0m\n\033[1;32;40m 刷流量脚本第$i次运行完毕！\033[0m\n\033[31;44m 当前时间: \033[32;40m `date +"%Y-%m-%d  %H:%M:%S "`";
done
else
i=0;
while [ $((i++)) -le 9999 ]
do                                                                           wget -O /dev/null $lj1;
echo -e "\033[1;37;44m 苏念提示:\033[0m\n\033[1;32;40m 刷流量脚本第$i次运行完毕！\033[0m\n\033[31;44m 当前时间:  \033[32;40m `date +"%Y-%m-%d  %H:%M:%S "`";
done
fi;
