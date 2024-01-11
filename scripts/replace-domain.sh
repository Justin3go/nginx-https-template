#!/bin/bash

# 使用方式信息
usage() {
    echo "Usage: $0 --domain='example.com'"
    exit 1
}

# 验证参数数量
if [ "$#" -ne 1 ]; then
    usage
fi

# 解析命令行参数
for arg in "$@"
do
    case $arg in
        --domain=*)
        DOMAIN="${arg#*=}"
        shift # past argument=value
        ;;
        *) # 如果提供了未知选项
        usage
        ;;
    esac
done

# 检查 DOMAIN 变量是否被设置
if [ -z "$DOMAIN" ]; then
    echo "Error: Domain not provided."
    exit 1
fi

# 检查 default.conf.template 文件是否存在
TEMPLATE_FILE="./conf.d/default.conf.template"
OUTPUT_FILE="./conf.d/default.conf"
if [ ! -f "$TEMPLATE_FILE" ]; then
    echo "Error: $TEMPLATE_FILE does not exist in the current directory."
    exit 1
fi

# 使用 sed 命令替换 default.conf.template 中的 'your-domain' 为提供的域名，并写入新文件 default.conf
sed "s/your-domain/${DOMAIN}/g" "$TEMPLATE_FILE" > "$OUTPUT_FILE"

echo "Replacement complete. Output file: $OUTPUT_FILE"
