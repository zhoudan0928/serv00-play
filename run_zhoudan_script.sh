#!/bin/bash

# 下载脚本
echo "正在下载脚本..."
curl -Ls "https://raw.githubusercontent.com/zhoudan0928/serv00-play/main/start.sh?$(date +%s)" > start_temp.sh

# 转换行尾结束符
echo "正在转换行尾结束符..."
if command -v dos2unix &> /dev/null; then
    dos2unix start_temp.sh
else
    # 如果没有dos2unix，使用sed命令替换
    sed -i 's/\r$//' start_temp.sh
fi

# 添加执行权限
chmod +x start_temp.sh

# 执行脚本
echo "正在执行脚本..."
./start_temp.sh

# 清理临时文件
rm start_temp.sh
