# nginx-https-template

## 简介

一个基于`nginx + docker`的`https`模板，可以快速部署`https`网站🚀🚀🚀

## 安装

1. 进入你的`repos`目录，可以为任意目录（不过后续可能要稍做修改），这里以`/root/repos/`为例，如果没有`repos`目录，可以创建一个。然后`clone`本项目

```shell
cd /root/repos/
```

```shell
git clone https://github.com/Justin3go/nginx-https-template.git
cd nginx-https-template

```

2. 替换`cert/`下的证书为你的证书，格式为`your-domain.key`和`your-domain.pem`，比如我的域名是`justin3go.com`，那么我的证书就是`plane.justin3go.com.key`和`justin3go.com.pem`
3. 运行脚本`./scripts/replace-domain.sh --domain=your-domain`

```shell
sudo chmod -R +x ./scripts # 设置脚本权限
./scripts/replace-domain.sh --domain=your-domain # 运行脚本替换域名
```

3. 如果在第一步中你使用的自定义目录，则修改`docker-compose.yml`中的根目录为你的目录，默认为`/root/repos/`
4. 启动容器

```shell
./scripts/run.sh
```

## 接下来

- 你可以使用`docker ps`命令查看容器是否正常运行
- 以及使用`tail -n 1000 logs/access.log`和`tail -n 1000 logs/error.log`查看`nginx`运行日志
