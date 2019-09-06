#### PULL镜像
docker pull mycongrats/centos-work
#### 启动容器
docker run --name os -dt mycongrats/centos-work /usr/sbin/init
#### 登录容器
docker exec -ti os bash
#### 退出容器
exit

