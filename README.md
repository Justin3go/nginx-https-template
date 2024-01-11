# nginx-https-template

## Introduction

An `https` template based on `nginx + docker` that allows you to quickly deploy `https` websites 🚀🚀🚀

[简体中文](./README.ZH.md)

## Prerequisites

You need to have at least, and only, a Docker environment.

## Installation

1. Enter your `repos` directory, which can be any directory (though you might need to make some modifications later). Here, we'll use `/root/repos/` as an example. If there is no `repos` directory, create one. Then `clone` this project.

```shell
cd /root/repos/
```

```shell
git clone https://github.com/Justin3go/nginx-https-template.git
cd nginx-https-template
```

2. Replace the certificates in the `cert/` folder with your own, in the format `your-domain.key` and `your-domain.pem`. For example, if my domain is `justin3go.com`, then my certificates would be `justin3go.com.key` and `justin3go.com.pem`.
3. Run the script `./scripts/replace-domain.sh --domain=your-domain`.

```shell
sudo chmod -R +x ./scripts # Set script permissions
./scripts/replace-domain.sh --domain=your-domain # Run the script to replace the domain
```

> Note: By default, the `https` forwarding is set to port `80`. If your website is not on port `80`, you will need to modify the `proxy_pass` in `/conf.d/default.conf` to your port.

4. If you used a custom directory in the first step, then modify the root directory in `docker-compose.yml` to your directory, which by default is `/root/repos/`.
5. Start the container.

```shell
./scripts/run.sh
```

## What's Next

- You can use the `docker ps` command to check if the container is running properly.
- And use `tail -n 1000 logs/access.log` and `tail -n 1000 logs/error.log` to view `nginx` running logs.