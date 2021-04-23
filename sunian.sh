#!/bin/bash
while true
do
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
show_menu() {
    echo -e "
————————————————
${yellow}欢迎使用苏念V2服务器一键部署脚本 v2.3${plain}
${green}便捷启动指令:   bash <(curl -Ls https://raw.githubusercontent.com/suniannb/-/main/sunian.sh)${plain}
————————————————
  ${green}0.${plain} 退出脚本
————————————————
  ${green}1.${plain} 一键关闭v2-ui面板设置
————————————————
  ${green}2.${plain} 一键恢复v2-ui面板设置
————————————————
  ${green}3.${plain} 一键安装v2-ui管理面板
————————————————
  ${green}4.${plain} 一键安装 bbr 加速核心(其它整合)
————————————————
  ${green}5.${plain} 一键重装服务器操作系统
————————————————
  ${green}6.${plain} 一键检查 bbr 程序进程(输出带bbr就是成功了)
————————————————
  ${green}7.${plain} 一键关闭防火墙 
————————————————
  ${green}8.${plain} 一建搭建GOST转发(只设置端口和密码即可其它一路回车)
————————————————
  ${green}9.${plain} 一键搭建 cns 转发(只设置端口和密码即可其它一路回车)[其它整和脚本]
————————————————
  ${green}10.${plain} 一键搭建soml流控系统
————————————————
  ${green}11.${plain} 一键搭建多端口酸酸乳
————————————————
  ${green}12.${plain} 一键搭建多用户酸酸乳
————————————————
  ${green}13.${plain} 一键搭建服务器带宽测试
————————————————
  ${green}14.${plain} 其它一键整合(bbr,v2等)
————————————————
  ${green}15.${plain} 一键解决 Warning: RPMDB altered outside of yum. 报错
————————————————
  ${green}16.${plain} 一键安装 bbr 加速服务(原汁原味)
————————————————

 "
    echo && read -p "请输入选择 [0-16]: " num

    case "${num}" in
        0) exit 0
        ;;
        1) mv /usr/local/v2-ui/templates/v2ray/setting.html /usr/local/v2-ui/templates/v2ray/suniannb.html ;echo -e "${red}请手动输入v2-ui,然后输入9重启v2-ui再输入7启动v2-ui刷新配置" ; exit 0
        ;;
        2) mv /usr/local/v2-ui/templates/v2ray/suniannb.html /usr/local/v2-ui/templates/v2ray/setting.html ;echo -e "${red}请手动输入v2-ui,然后输入9重启v2-ui再输入7启动v2-ui刷新配置" ; exit 0
        ;;
        3) bash <(curl -Ls http://oss.illii.cn/v2-ui/v2-ui.sh)
        ;;
        4) wget -N --no-check-certificate "https://gist.github.com/zeruns/a0ec603f20d1b86de6a774a8ba27588f/raw/4f9957ae23f5efb2bb7c57a198ae2cffebfb1c56/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
        ;;
        5) bash <(curl -Ls http://oss.illii.cn/dd/dd.sh)
        ;;
        6) uname -r ; sysctl net.ipv4.tcp_available_congestion_control ; sysctl net.ipv4.tcp_congestion_control ; sysctl net.core.default_qdisc ; lsmod | grep bbr ; exit 0
        ;;
        7) systemctl disable firewalld ; firewall-cmd --zone=public --list-ports ; exit 0
        ;;
        8)bash <(curl -Ls https://raw.githubusercontent.com/oj8k/oj8k/master/gost/gost.sh)
        ;;
        9)bash <(curl -Ls http://pros.cutebi.taobao69.cn:666/builds.sh)
        ;;
        10)yum -y install wget;wget -O saoml5 http://oss.saoml.com/saoml5;chmod 777 saoml5;./saoml5
        ;;
        11)bash <(curl -Ls https://raw.githubusercontent.com/oj8k/oj8k/master/55r/dak55r.sh)
        ;;
        12)bash <(curl -Ls https://raw.githubusercontent.com/oj8k/oj8k/master/55r/dyh55r.sh)
        ;;
        13)yum install docker ; systemctl start docker ; systemctl enable docker ; docker pull adolfintel/speedtest ; docker run -d -p 1080:1080 adolfintel/speedtest ; systemctl stop firewalld.service ; systemctl disable firewalld.service ; echo -e "${green}测速地址:${yellow}ip:1080 ${red}温馨提醒:测速相当消耗服务器流量，请理性使用${plain}" ; exit 0
        ;;
        14)wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
        ;;
        15)rm -rf /var/lib/yum/history/*.sqlite
        ;;
        16) bash <(curl -Ls http://oss.illii.cn/bbr/bbr.sh)
        ;;

        *) echo -e "${red}请输入正确的数字 [0-16]${plain}"
        ;;
    esac
}

show_menu
done
