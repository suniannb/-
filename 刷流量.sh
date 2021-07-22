#!/bin/bash
rm -f 刷流量.sh
echo -e "\033[1;47;44m 刷流量脚本V3.0 版本说明:\033[0m\n\033[1;32;40m1.本脚本刷流量不占用内存;\033[0m\n\033[1;32;40m2.支持自定义脚本运行次数;\033[0m\n\033[1;32;40m3.刷流量链接支持自定义;\033[0m\n\033[1;32;40m4.内置下载链接为腾讯王者荣耀下载链接(2GB);\033[0m\n\033[1;32;40m5.脚本一键命令:\n常用: bash <(curl -Ls https://raw.githubusercontent.com/suniannb/-/main/刷流量.sh)\n备用: wget -Nq "https://raw.githubusercontent.com/suniannb/-/main/刷流量.sh";bash 刷流量.sh;\033[0m\n        \033[1;32;40m苏念云☁️ © 2021\033[0m";
echo -e "\033[1;47;44m 苏念提示:\033[0m\n\033[1;32;40m 正在验证当前ip\033[0m";
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
lj1=http://dlied5.myapp.com/myapp/1104466820/sgame/2017_com.tencent.tmgp.sgame_h8218_1.43.1.15_fc9dc4.apk;
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
