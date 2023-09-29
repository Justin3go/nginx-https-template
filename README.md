# nginx-https-template

## 简介

一个基于`nginx`的`https`模板，可以快速部署`https`网站，项目初衷为[plane项目管理工具](https://github.com/makeplane/plane)服务

## 安装

```shell
git clone https://github.com/Justin3go/nginx-https-template.git

```

1. 替换`cert/`下的证书
2. 修改`conf.d/default.conf`中的xxx
3. 修改`docker-compose.yml`中的根目录，默认为`/root/repos/`
4. `sudo chmod +x ./run.sh`
5. `./run.sh`
## 目录结构
```
nginx
├─ cert
│  ├─ plane.justin3go.com.key
│  └─ plane.justin3go.com.pem
├─ conf.d
│  └─ default.conf
├─ docker-compose.yml
├─ dockerReset.sh
└─ logs
   ├─ access.log
   └─ error.log

```
## 相关博客阅读

[自托管项目工具plane管理自己的TodoList](https://justin3go.com/%E5%8D%9A%E5%AE%A2/2023/09/29%E8%87%AA%E6%89%98%E7%AE%A1%E9%A1%B9%E7%9B%AE%E5%B7%A5%E5%85%B7plane%E7%AE%A1%E7%90%86%E8%87%AA%E5%B7%B1%E7%9A%84TodoList.html)