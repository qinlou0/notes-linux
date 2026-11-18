#!/bin/bash
echo "=== 系统信息 ==="
echo "内核:   $(uname -r)"
echo "发行版: $(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)"
echo "内存:   $(free -h | awk '/Mem:/{print $2}')"
echo "磁盘:   $(df -h / | awk 'NR==2{print $2" 总 / "$4" 可用"}')"
