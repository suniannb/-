echo "欢迎使用苏念云一键对接脚本v1.0请确认已经做好了环境部署,安装并开启了bbr plus加速且80端口无应用占用\n自动运行中，请按提示输入对接id等数据"
echo "安装必要环境"
yum install -y net-tools
yum -y install curl

cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 
y


systemctl start supervisord
systemctl disable firewalld
systemctl stop firewalld

bash <(curl –Ls https://raw.githubusercontent.com/sprov065/soga/master/install.sh)
echo "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" 
soga config type=v2board server_type=v2ray api=webapi webapi_url=http://sunian.ficfj.tk:1080/ webapi_key=137924682580159357456 v2ray_reduce_memory=true user_conn_limit=0 user_speed_limit=0 check_interval=60 default_dns=8.8.8.8,1.1.1.1
echo "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" 
echo "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n请输入对接ID" 

read A

soga config node_id=$A
echo "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n" 
soga start

echo "本次对接已结束若无错误后台已显示此设备可以使用，请联系苏念确认状态并重连服务器" 

exit
