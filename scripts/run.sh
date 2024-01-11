# 关闭容器
docker-compose stop || true;
# 删除容器
docker-compose down || true;
# 对空间进行自动清理
docker system prune -a -f
docker compose up -d
# 查看日志
# docker logs nginx_https;